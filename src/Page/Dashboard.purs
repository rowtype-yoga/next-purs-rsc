module Page.Dashboard where

import Prelude hiding (div)

import Data.Maybe (Maybe, fromMaybe)
import Next (Page, nextPage)
import Yoga.React.DOM (div, h1, p)
import Yoga.React.Om (useOm)
import Yoga.React.Om as Om

page :: Page () (name :: Maybe String)
page = nextPage "Dashboard" { greeting: "Hello from Om!" }
  \{ searchParams: { name } } -> Om.do
    msg <- useOm \c -> pure c.greeting
    let who = fromMaybe "stranger" name
    Om.pure $ div {}
      [ h1 {} "Dashboard"
      , p {} msg
      , p {} $ "Hello, " <> who <> "!"
      ]
