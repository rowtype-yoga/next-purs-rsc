module Page.Dashboard where

import Prelude hiding (div)

import Control.Promise (Promise)
import Data.Maybe (fromMaybe)
import Data.Nullable (Nullable)
import Effect (Effect)
import Next (PageProps, nullableToMaybe, omPage)
import React.Basic (JSX)
import Yoga.React.DOM (div, h1, p)
import Yoga.React.Om (useOm)
import Yoga.React.Om as Om

page :: Effect (Promise (PageProps () (name :: Nullable String) -> JSX))
page = omPage "Dashboard" { greeting: "Hello from Om!" }
  \{ searchParams } -> Om.do
    let { name } = nullableToMaybe searchParams
    msg <- useOm \c -> pure c.greeting
    let who = fromMaybe "stranger" name
    Om.pure $ div {}
      [ h1 {} "Dashboard"
      , p {} msg
      , p {} $ "Hello, " <> who <> "!"
      ]
