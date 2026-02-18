module Pages.Dashboard where

import Prelude hiding (div)

import NextOm (omPage)
import Yoga.React.DOM (div, h1, p)
import Yoga.React.Om (useOm)
import Yoga.React.Om as Om

page = omPage "Dashboard" { greeting: "Hello from Om on the server!" } \_ -> Om.do
  msg <- useOm \c -> pure c.greeting
  Om.pure $ div {}
    [ h1 {} "Dashboard"
    , p {} msg
    , p {} "Server component with Om dependency injection."
    ]
