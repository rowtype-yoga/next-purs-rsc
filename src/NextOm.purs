module NextOm where

import Prelude

import Control.Promise (Promise)
import Control.Promise as Promise
import Effect (Effect)
import React.Basic (JSX)
import Yoga.Om as Om
import Yoga.React.Om (OmRender, omComponent)

type PageProps params searchParams =
  { params :: { | params }
  , searchParams :: { | searchParams }
  }

omPage
  :: forall ctx params searchParams hooks
   . String
  -> { | ctx }
  -> (PageProps params searchParams -> OmRender ctx Unit hooks JSX)
  -> Effect (Promise (PageProps params searchParams -> JSX))
omPage name ctx render = Promise.fromAff do
  Om.runOm ctx { exception: \_ -> pure (\_ -> mempty :: JSX) } do
    omComponent name render
