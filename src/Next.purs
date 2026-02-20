module Next
  ( Page
  , Metadata
  , StaticParams
  , Layout
  , Template
  , Loading
  , ErrorBoundary
  , GlobalError
  , Default
  , NotFound
  , class ParsePathFields
  , buildParsedPath
  , class FirstSegment
  , RawRecord
  , simplePage
  , simpleMetadata
  , simpleStaticParams
  , simpleLayout
  , simpleTemplate
  , loading
  , notFound
  , errorBoundary
  , globalError
  , nextPage
  , nextLayout
  , link
  , image
  , script
  , ScriptStrategy(..)
  , GET
  , POST
  , PUT
  , DELETE
  , PATCH
  , HEAD
  , OPTIONS
  , simpleGet
  , simplePost
  , simplePut
  , simpleDelete
  , simplePatch
  , simpleHead
  , simpleOptions
  , NextRequest
  , NextResponse
  , module Path
  , module Action
  ) where

import Prelude

import Control.Promise as Promise
import Data.Either (Either(..))
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Data.Symbol (class IsSymbol, reflectSymbol)
import Effect (Effect)
import Effect.Aff (Aff)
import Foreign (Foreign)
import Prim.Row as Row
import Prim.Row (class Union)
import Prim.RowList as RL
import React.Basic (JSX, ReactComponent)
import React.Basic.Hooks (ReactChildren)
import Record as Record
import Record.Builder as Builder
import Route (Route, toPath)
import Type.Proxy (Proxy(..))
import Partial.Unsafe (unsafeCrashWith)
import Unsafe.Coerce (unsafeCoerce)
import Yoga.HTTP.API.Path (Path, Root, Lit, Capture, PathCons, type (/), Param, type (:), QueryParams, type (:?), Required) as Path
import Yoga.HTTP.API.Path (class ParseParam, parseParam)
import Yoga.HTTP.API.Route.Handler (class SegmentPathParams, class SegmentQueryParams)
import Yoga.Om as Om
import Yoga.React.DOM.Internal (class IsJSX, createElement, createElement_)
import Yoga.React.Om (OmRender, omComponent)
import Next.Action (ServerAction, FormAction, serverAction, formAction) as Action

-- | Opaque page type. The path DSL encodes both URL segments and query params.
-- |
-- | ```purescript
-- | page :: Page ("dashboard" :? { name :: String })
-- | page :: Page ("blog" / "slug" : Int)
-- | page :: Page ("about")
-- | ```
newtype Page :: forall k. k -> Type
newtype Page path = Page Unit

-- | Opaque layout type.
newtype Layout = Layout Unit

newtype Loading :: forall k. k -> Type
newtype Loading path = Loading Unit

newtype ErrorBoundary :: forall k. k -> Type
newtype ErrorBoundary path = ErrorBoundary Unit

newtype Metadata :: forall k. k -> Type
newtype Metadata path = Metadata Unit

newtype StaticParams :: forall k. k -> Type
newtype StaticParams path = StaticParams Unit

newtype Template :: forall k. k -> Type
newtype Template path = Template Unit

newtype GlobalError :: forall k. k -> Type
newtype GlobalError path = GlobalError Unit

newtype Default :: forall k. k -> Type
newtype Default path = Default Unit

newtype NotFound :: forall k. k -> Type
newtype NotFound path = NotFound Unit

newtype GET :: forall k. k -> Type
newtype GET path = GET Unit

newtype POST :: forall k. k -> Type
newtype POST path = POST Unit

newtype PUT :: forall k. k -> Type
newtype PUT path = PUT Unit

newtype DELETE :: forall k. k -> Type
newtype DELETE path = DELETE Unit

newtype PATCH :: forall k. k -> Type
newtype PATCH path = PATCH Unit

newtype HEAD :: forall k. k -> Type
newtype HEAD path = HEAD Unit

newtype OPTIONS :: forall k. k -> Type
newtype OPTIONS path = OPTIONS Unit

-- | Opaque typed request received by route handlers.
-- | Import `Next.Request` for accessors (server-only).
foreign import data NextRequest :: Type

-- | Opaque typed response returned by route handlers.
-- | Import `Next.Response` for constructors (server-only).
foreign import data NextResponse :: Type

--------------------------------------------------------------------------------
-- FFI
--------------------------------------------------------------------------------

foreign import data RawRecord :: Type

foreign import _mapRecord :: forall rin rout. (forall x. Nullable x -> Maybe x) -> { | rin } -> { | rout }
foreign import _getField :: String -> RawRecord -> String
foreign import _mkHandler :: forall a b. a -> b
foreign import _toPlainObject :: forall r. { | r } -> { | r }
foreign import _linkComponent :: forall props. ReactComponent { | props }
foreign import _imageComponent :: forall props. ReactComponent { | props }
foreign import _scriptComponent :: forall props. ReactComponent { | props }

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
    parsedValue = case parseParam (_getField fieldName raw) of
      Right v -> v
      Left err -> unsafeCrashWith ("Failed to parse path param \"" <> fieldName <> "\": " <> err)
    fieldName = reflectSymbol (Proxy :: Proxy name)

parsePathFields
  :: forall rl parsed
   . RL.RowToList parsed rl
  => ParsePathFields rl parsed
  => RawRecord
  -> { | parsed }
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
else instance FirstSegment Path.Root "Root"
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

simpleMetadata
  :: forall path pathParams queryParams pathRL r
   . SegmentPathParams path pathParams
  => SegmentQueryParams path queryParams
  => RL.RowToList pathParams pathRL
  => ParsePathFields pathRL pathParams
  => ({ params :: { | pathParams }, searchParams :: { | queryParams } } -> { | r })
  -> Metadata path
simpleMetadata f = unsafeCoerce $ Promise.fromAff $ pure \rawProps -> do
  let params = parsePathFields (unsafeCoerce rawProps).params
  let searchParams = _mapRecord toMaybe (unsafeCoerce rawProps).searchParams
  f { params, searchParams }

simpleStaticParams
  :: forall path pathParams pathRL
   . SegmentPathParams path pathParams
  => RL.RowToList pathParams pathRL
  => ParsePathFields pathRL pathParams
  => Effect (Array { | pathParams })
  -> StaticParams path
simpleStaticParams gen = unsafeCoerce gen

simpleLayout :: ({ children :: ReactChildren JSX } -> JSX) -> Layout
simpleLayout render = unsafeCoerce $ Promise.fromAff $ pure render

simpleTemplate :: forall path. ({ children :: ReactChildren JSX } -> JSX) -> Template path
simpleTemplate render = unsafeCoerce $ Promise.fromAff $ pure render

loading
  :: forall path name ctx hooks
   . FirstSegment path name
  => IsSymbol name
  => { | ctx }
  -> Om.Om { | ctx } () (Unit -> OmRender ctx Unit hooks JSX)
  -> Loading path
loading ctx om = unsafeCoerce $ Promise.fromAff do
  Om.runOm ctx { exception: \_ -> pure (\_ -> mempty :: JSX) } do
    render <- om
    omComponent (reflectSymbol (Proxy :: Proxy name)) render

notFound
  :: forall path name ctx hooks
   . FirstSegment path name
  => IsSymbol name
  => { | ctx }
  -> Om.Om { | ctx } () (Unit -> OmRender ctx Unit hooks JSX)
  -> NotFound path
notFound ctx om = unsafeCoerce $ Promise.fromAff do
  Om.runOm ctx { exception: \_ -> pure (\_ -> mempty :: JSX) } do
    render <- om
    omComponent (reflectSymbol (Proxy :: Proxy name)) render

errorBoundary
  :: forall path name ctx hooks
   . FirstSegment path name
  => IsSymbol name
  => { | ctx }
  -> Om.Om { | ctx } () ({ error :: Foreign, reset :: Effect Unit } -> OmRender ctx Unit hooks JSX)
  -> ErrorBoundary path
errorBoundary ctx om = unsafeCoerce $ Promise.fromAff do
  Om.runOm ctx { exception: \_ -> pure (\_ -> mempty :: JSX) } do
    render <- om
    omComponent (reflectSymbol (Proxy :: Proxy name)) render

globalError
  :: forall path name ctx hooks
   . FirstSegment path name
  => IsSymbol name
  => { | ctx }
  -> Om.Om { | ctx } () ({ error :: Foreign, reset :: Effect Unit } -> OmRender ctx Unit hooks JSX)
  -> GlobalError path
globalError ctx om = unsafeCoerce $ Promise.fromAff do
  Om.runOm ctx { exception: \_ -> pure (\_ -> mempty :: JSX) } do
    render <- om
    omComponent (reflectSymbol (Proxy :: Proxy name)) render

nextPage
  :: forall path name pathParams queryParams pathRL ctx hooks
   . SegmentPathParams path pathParams
  => SegmentQueryParams path queryParams
  => RL.RowToList pathParams pathRL
  => ParsePathFields pathRL pathParams
  => FirstSegment path name
  => IsSymbol name
  => { | ctx }
  -> Om.Om { | ctx } () ({ params :: { | pathParams }, searchParams :: { | queryParams } } -> OmRender ctx Unit hooks JSX)
  -> Page path
nextPage ctx om = unsafeCoerce $ Promise.fromAff do
  Om.runOm ctx { exception: \_ -> pure (\_ -> mempty :: JSX) } do
    render <- om
    omComponent (reflectSymbol (Proxy :: Proxy name)) \rawProps -> do
      let params = parsePathFields (unsafeCoerce rawProps).params
      let searchParams = _mapRecord toMaybe (unsafeCoerce rawProps).searchParams
      render { params, searchParams }

nextLayout
  :: forall ctx hooks
   . String
  -> { | ctx }
  -> Om.Om { | ctx } () ({ children :: JSX } -> OmRender ctx Unit hooks JSX)
  -> Layout
nextLayout name ctx om = unsafeCoerce $ Promise.fromAff do
  Om.runOm ctx { exception: \_ -> pure (\_ -> mempty :: JSX) } do
    render <- om
    omComponent name render

--------------------------------------------------------------------------------
-- Route handlers
--------------------------------------------------------------------------------

simpleHandler
  :: forall @path pathParams pathRL
   . SegmentPathParams path pathParams
  => RL.RowToList pathParams pathRL
  => ParsePathFields pathRL pathParams
  => (NextRequest -> { | pathParams } -> Aff NextResponse)
  -> Foreign
simpleHandler f = _mkHandler \request rawParams -> Promise.fromAff do
  let params = parsePathFields (unsafeCoerce rawParams)
  f (unsafeCoerce request) params

simpleGet :: forall path pathParams pathRL. SegmentPathParams path pathParams => RL.RowToList pathParams pathRL => ParsePathFields pathRL pathParams => (NextRequest -> { | pathParams } -> Aff NextResponse) -> GET path
simpleGet f = unsafeCoerce (simpleHandler @path f)

simplePost :: forall path pathParams pathRL. SegmentPathParams path pathParams => RL.RowToList pathParams pathRL => ParsePathFields pathRL pathParams => (NextRequest -> { | pathParams } -> Aff NextResponse) -> POST path
simplePost f = unsafeCoerce (simpleHandler @path f)

simplePut :: forall path pathParams pathRL. SegmentPathParams path pathParams => RL.RowToList pathParams pathRL => ParsePathFields pathRL pathParams => (NextRequest -> { | pathParams } -> Aff NextResponse) -> PUT path
simplePut f = unsafeCoerce (simpleHandler @path f)

simpleDelete :: forall path pathParams pathRL. SegmentPathParams path pathParams => RL.RowToList pathParams pathRL => ParsePathFields pathRL pathParams => (NextRequest -> { | pathParams } -> Aff NextResponse) -> DELETE path
simpleDelete f = unsafeCoerce (simpleHandler @path f)

simplePatch :: forall path pathParams pathRL. SegmentPathParams path pathParams => RL.RowToList pathParams pathRL => ParsePathFields pathRL pathParams => (NextRequest -> { | pathParams } -> Aff NextResponse) -> PATCH path
simplePatch f = unsafeCoerce (simpleHandler @path f)

simpleHead :: forall path pathParams pathRL. SegmentPathParams path pathParams => RL.RowToList pathParams pathRL => ParsePathFields pathRL pathParams => (NextRequest -> { | pathParams } -> Aff NextResponse) -> HEAD path
simpleHead f = unsafeCoerce (simpleHandler @path f)

simpleOptions :: forall path pathParams pathRL. SegmentPathParams path pathParams => RL.RowToList pathParams pathRL => ParsePathFields pathRL pathParams => (NextRequest -> { | pathParams } -> Aff NextResponse) -> OPTIONS path
simpleOptions f = unsafeCoerce (simpleHandler @path f)

--------------------------------------------------------------------------------
-- Links
--------------------------------------------------------------------------------

type LinkOptionalProps =
  ( replace :: Boolean
  , scroll :: Boolean
  , prefetch :: Boolean
  , className :: String
  , target :: String
  , rel :: String
  )

link
  :: forall kids props rest
   . IsJSX kids
  => Union props rest LinkOptionalProps
  => Row.Lacks "href" props
  => Route -> { | props } -> kids -> JSX
link route props children =
  createElement _linkComponent (Record.insert (Proxy :: Proxy "href") (toPath route) props) children

type ImageOptionalProps =
  ( width :: Int
  , height :: Int
  , fill :: Boolean
  , priority :: Boolean
  , sizes :: String
  , quality :: Int
  , placeholder :: String
  , className :: String
  )

image :: forall opt rest. Union opt rest ImageOptionalProps => { src :: String, alt :: String | opt } -> JSX
image props = createElement_ _imageComponent props

--------------------------------------------------------------------------------
-- Script
--------------------------------------------------------------------------------

data ScriptStrategy = BeforeInteractive | AfterInteractive | LazyOnload | Worker

scriptStrategyToString :: ScriptStrategy -> String
scriptStrategyToString = case _ of
  BeforeInteractive -> "beforeInteractive"
  AfterInteractive -> "afterInteractive"
  LazyOnload -> "lazyOnload"
  Worker -> "worker"

type ScriptOptionalProps =
  ( id :: String
  , onLoad :: Effect Unit
  , onReady :: Effect Unit
  , onError :: Effect Unit
  )

script
  :: forall opt rest
   . Union opt rest ScriptOptionalProps
  => Row.Lacks "src" opt
  => Row.Lacks "strategy" opt
  => String -> ScriptStrategy -> { | opt } -> JSX
script src strategy props = do
  let
    full = Record.insert (Proxy :: Proxy "src") src
      $ Record.insert (Proxy :: Proxy "strategy") (scriptStrategyToString strategy) props
  createElement_ _scriptComponent full
