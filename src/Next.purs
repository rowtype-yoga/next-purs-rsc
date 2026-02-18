module Next
  ( Page
  , Layout
  , PageProps
  , simplePage
  , simpleLayout
  , nextPage
  , nextLayout
  , nullableToMaybe
  , link
  ) where

import Prelude

import Control.Promise (Promise)
import Control.Promise as Promise
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import Heterogeneous.Folding (class HFoldlWithIndex)
import React.Basic (JSX)
import Record.Builder (Builder)
import Record.Studio.MapKind (MapRecordKind, mapRecordKind)
import Route (Route, toPath)
import Yoga.Om as Om
import Yoga.React.DOM (a)
import Yoga.React.DOM.Internal (class IsJSX)
import Yoga.React.Om (OmRender, omComponent)

type PageProps params searchParams =
  { params :: { | params }
  , searchParams :: { | searchParams }
  }

newtype Page :: Row Type -> Row Type -> Type
newtype Page params sp = Page (Effect (Promise (PageProps params sp -> JSX)))

newtype Layout = Layout (Effect (Promise ({ children :: JSX } -> JSX)))

foreign import _mapRecord :: forall rin rout. (forall x. Nullable x -> Maybe x) -> { | rin } -> { | rout }

simplePage
  :: forall params sp
   . ({ params :: { | params }, searchParams :: { | sp } } -> JSX)
  -> Page params sp
simplePage render = Page $ Promise.fromAff $ pure \{ params, searchParams } ->
  render { params, searchParams: _mapRecord toMaybe searchParams }

simpleLayout :: ({ children :: JSX } -> JSX) -> Layout
simpleLayout render = Layout $ Promise.fromAff $ pure render

nextPage
  :: forall ctx params sp hooks
   . String
  -> { | ctx }
  -> ({ params :: { | params }, searchParams :: { | sp } } -> OmRender ctx Unit hooks JSX)
  -> Page params sp
nextPage name ctx render = Page $ Promise.fromAff do
  Om.runOm ctx { exception: \_ -> pure (\_ -> mempty :: JSX) } do
    omComponent name \{ params, searchParams } ->
      render { params, searchParams: _mapRecord toMaybe searchParams }

nextLayout
  :: forall ctx hooks
   . String
  -> { | ctx }
  -> ({ children :: JSX } -> OmRender ctx Unit hooks JSX)
  -> Layout
nextLayout name ctx render = Layout $ Promise.fromAff do
  Om.runOm ctx { exception: \_ -> pure (\_ -> mempty :: JSX) } do
    omComponent name render

nullableToMaybe
  :: forall rin rout
   . HFoldlWithIndex (MapRecordKind Nullable Maybe)
       (Builder (Record ()) (Record ()))
       (Record rin)
       (Builder (Record ()) (Record rout))
  => Record rin -> Record rout
nullableToMaybe = mapRecordKind toMaybe

link :: forall kids. IsJSX kids => Route -> kids -> JSX
link route children = a { href: toPath route } children
