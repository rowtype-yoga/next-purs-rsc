module NextOm where

import Prelude

import Control.Promise (Promise)
import Control.Promise as Promise
import Effect (Effect)
import React.Basic (JSX)
import Yoga.Om as Om

omPage
  :: forall ctx props
   . { | ctx }
  -> Om.Om { | ctx } () (props -> JSX)
  -> Effect (Promise (props -> JSX))
omPage ctx om = Promise.fromAff do
  Om.runOm ctx { exception: \_ -> pure (\_ -> mempty :: JSX) } om
