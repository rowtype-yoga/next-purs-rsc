module Pages.Dashboard where

import Prelude hiding (div)

import Effect.Aff (launchAff_)
import Effect.Class (liftEffect)
import Effect.Ref as Ref
import React.Basic (JSX)
import React.Basic.Hooks (Component, component)
import React.Basic.Hooks.Internal (unsafeRenderEffect)
import Yoga.Om as Om
import Yoga.React.DOM (div, h1, p, text)
import Yoga.React.Om (omComponent, useOm)
import Yoga.React.Om as OmReact

dashboardComponent :: forall err. Om.Om { greeting :: String } err ({} -> JSX)
dashboardComponent = omComponent "Dashboard" \_ -> OmReact.do
  msg <- useOm \c -> pure c.greeting
  OmReact.pure $ div {}
    [ h1 {} [ text "Dashboard" ]
    , p {} [ text msg ]
    , p {} [ text "Server component with Om dependency injection." ]
    ]

page :: Component {}
page = do
  let ctx = { greeting: "Hello from Om on the server!" }
  renderRef <- Ref.new (mempty :: JSX)
  launchAff_ do
    render <- Om.runOm ctx { exception: \_ -> pure (\_ -> mempty :: JSX) } dashboardComponent
    liftEffect $ Ref.write (render {}) renderRef
  component "DashboardPage" \_ -> do
    jsx <- unsafeRenderEffect (Ref.read renderRef)
    pure jsx
