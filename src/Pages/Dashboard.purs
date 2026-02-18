module Pages.Dashboard where

import Prelude hiding (div)

import Control.Promise (Promise)
import Control.Promise as Promise
import Effect (Effect)
import React.Basic (JSX)
import Yoga.Om as Om
import Yoga.React.DOM (div, h1, p)
import Yoga.React.Om (omComponent, useOm)
import Yoga.React.Om as OmReact

dashboardComponent :: forall err. Om.Om { greeting :: String } err ({} -> JSX)
dashboardComponent = omComponent "Dashboard" \_props -> OmReact.do
  msg <- useOm \c -> pure c.greeting
  OmReact.pure $ div {}
    [ h1 {} "Dashboard"
    , p {} msg
    , p {} "Server component with Om dependency injection."
    ]

page :: Effect (Promise ({} -> JSX))
page = Promise.fromAff do
  let ctx = { greeting: "Hello from Om on the server!" }
  Om.runOm ctx { exception: \_ -> pure (\_ -> mempty :: JSX) } dashboardComponent
