module Next where

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

simplePage :: forall params sp. (PageProps params sp -> JSX) -> Effect (PageProps params sp -> JSX)
simplePage = pure

simpleLayout :: ({ children :: JSX } -> JSX) -> Effect ({ children :: JSX } -> JSX)
simpleLayout = pure

omPage
  :: forall ctx params searchParams hooks
   . String
  -> { | ctx }
  -> (PageProps params searchParams -> OmRender ctx Unit hooks JSX)
  -> Effect (Promise (PageProps params searchParams -> JSX))
omPage name ctx render = Promise.fromAff do
  Om.runOm ctx { exception: \_ -> pure (\_ -> mempty :: JSX) } do
    omComponent name render

omLayout
  :: forall ctx hooks
   . String
  -> { | ctx }
  -> ({ children :: JSX } -> OmRender ctx Unit hooks JSX)
  -> Effect (Promise ({ children :: JSX } -> JSX))
omLayout name ctx render = Promise.fromAff do
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
