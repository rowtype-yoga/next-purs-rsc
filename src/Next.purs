module Next
  ( Page
  , ClientPage
  , clientPage
  , Layout
  , class ParsePathFields
  , buildParsedPath
  , class FirstSegment
  , RawRecord
  , simplePage
  , simpleLayout
  , nextPage
  , nextLayout
  , link
  , module Path
  ) where

import Prelude

import Control.Promise as Promise
import Data.Either (Either(..))
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Data.Symbol (class IsSymbol, reflectSymbol)
import Prim.Row as Row
import Prim.RowList as RL
import React.Basic (JSX)
import React.Basic.Hooks (Component)
import Record.Builder as Builder
import Route (Route, toPath)
import Type.Proxy (Proxy(..))
import Unsafe.Coerce (unsafeCoerce)
import Yoga.HTTP.API.Path (Path, Root, Lit, Capture, PathCons, type (/), Param, type (:), QueryParams, type (:?), Required) as Path
import Yoga.HTTP.API.Path (class ParseParam, parseParam)
import Yoga.HTTP.API.Route.Handler (class SegmentPathParams, class SegmentQueryParams)
import Yoga.Om as Om
import Yoga.React.DOM (a)
import Yoga.React.DOM.Internal (class IsJSX)
import Yoga.React.Om (OmRender, omComponent)

-- | Opaque page type. The path DSL encodes both URL segments and query params.
-- |
-- | ```purescript
-- | page :: Page ("dashboard" :? { name :: String })
-- | page :: Page ("blog" / "slug" : Int)
-- | page :: Page ("about")
-- | ```
newtype Page :: forall k. k -> Type
newtype Page path = Page Unit

newtype ClientPage :: forall k. k -> Type
newtype ClientPage path = ClientPage Unit

-- | Opaque layout type.
newtype Layout = Layout Unit

--------------------------------------------------------------------------------
-- FFI
--------------------------------------------------------------------------------

foreign import data RawRecord :: Type

foreign import _mapRecord :: forall rin rout. (forall x. Nullable x -> Maybe x) -> { | rin } -> { | rout }
foreign import _getField :: String -> RawRecord -> String

--------------------------------------------------------------------------------
-- ParsePathFields: parse path params from JS string values
--------------------------------------------------------------------------------

class ParsePathFields (rl :: RL.RowList Type) (parsed :: Row Type) | rl -> parsed where
  buildParsedPath :: Proxy rl -> RawRecord -> Builder.Builder {} { | parsed }

instance ParsePathFields RL.Nil () where
  buildParsedPath _ _ = identity

instance
  ( IsSymbol name
  , ParseParam ty
  , ParsePathFields tail tailParsed
  , Row.Lacks name tailParsed
  , Row.Cons name ty tailParsed parsed
  ) =>
  ParsePathFields (RL.Cons name ty tail) parsed where
  buildParsedPath _ raw =
    Builder.insert (Proxy :: Proxy name) parsedValue <<< buildParsedPath (Proxy :: Proxy tail) raw
    where
    parsedValue = case parseParam (_getField (reflectSymbol (Proxy :: Proxy name)) raw) of
      Right v -> v
      Left _ -> unsafeCoerce unit

parsePathFields
  :: forall rl parsed
   . RL.RowToList parsed rl
  => ParsePathFields rl parsed
  => RawRecord -> { | parsed }
parsePathFields raw = Builder.buildFromScratch (buildParsedPath (Proxy :: Proxy rl) raw)

--------------------------------------------------------------------------------
-- FirstSegment: reflect the first literal from a path type
--------------------------------------------------------------------------------

class FirstSegment :: forall k. k -> Symbol -> Constraint
class FirstSegment path name | path -> name

instance FirstSegment (Path.Lit sym) sym
else instance FirstSegment path name => FirstSegment (Path.QueryParams path params) name
else instance FirstSegment head name => FirstSegment (Path.PathCons head rest) name
else instance FirstSegment (Path.Param name ty) name
else instance IsSymbol sym => FirstSegment sym sym

--------------------------------------------------------------------------------
-- Page constructors
--------------------------------------------------------------------------------

simplePage
  :: forall path pathParams queryParams pathRL
   . SegmentPathParams path pathParams
  => SegmentQueryParams path queryParams
  => RL.RowToList pathParams pathRL
  => ParsePathFields pathRL pathParams
  => ({ params :: { | pathParams }, searchParams :: { | queryParams } } -> JSX)
  -> Page path
simplePage render = unsafeCoerce $ Promise.fromAff $ pure \rawProps -> do
  let params = parsePathFields (unsafeCoerce rawProps).params
  let searchParams = _mapRecord toMaybe (unsafeCoerce rawProps).searchParams
  render { params, searchParams }

clientPage :: forall path. Component {} -> ClientPage path
clientPage = unsafeCoerce

simpleLayout :: ({ children :: JSX } -> JSX) -> Layout
simpleLayout render = unsafeCoerce $ Promise.fromAff $ pure render

nextPage
  :: forall path name pathParams queryParams pathRL ctx hooks
   . SegmentPathParams path pathParams
  => SegmentQueryParams path queryParams
  => RL.RowToList pathParams pathRL
  => ParsePathFields pathRL pathParams
  => FirstSegment path name
  => IsSymbol name
  => { | ctx }
  -> ({ params :: { | pathParams }, searchParams :: { | queryParams } } -> OmRender ctx Unit hooks JSX)
  -> Page path
nextPage ctx render = unsafeCoerce $ Promise.fromAff do
  Om.runOm ctx { exception: \_ -> pure (\_ -> mempty :: JSX) } do
    omComponent (reflectSymbol (Proxy :: Proxy name)) \rawProps -> do
      let params = parsePathFields (unsafeCoerce rawProps).params
      let searchParams = _mapRecord toMaybe (unsafeCoerce rawProps).searchParams
      render { params, searchParams }

nextLayout
  :: forall ctx hooks
   . String
  -> { | ctx }
  -> ({ children :: JSX } -> OmRender ctx Unit hooks JSX)
  -> Layout
nextLayout name ctx render = unsafeCoerce $ Promise.fromAff do
  Om.runOm ctx { exception: \_ -> pure (\_ -> mempty :: JSX) } do
    omComponent name render

--------------------------------------------------------------------------------
-- Links
--------------------------------------------------------------------------------

link :: forall kids. IsJSX kids => Route -> kids -> JSX
link route children = a { href: toPath route } children
