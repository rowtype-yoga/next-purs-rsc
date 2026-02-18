module NextOm where

import Prelude

import Control.Promise (Promise)
import Control.Promise as Promise
import Effect (Effect)
import React.Basic (JSX)
import Yoga.Om as Om
import Yoga.React.Om (OmRender, omComponent)

omPage
  :: forall ctx hooks
   . String
  -> { | ctx }
  -> ({} -> OmRender ctx Unit hooks JSX)
  -> Effect (Promise ({} -> JSX))
omPage name ctx render = Promise.fromAff do
  Om.runOm ctx { exception: \_ -> pure (\_ -> mempty :: JSX) } do
    omComponent name render
