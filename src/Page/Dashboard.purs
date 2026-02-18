module Page.Dashboard where

import Prelude hiding (div)

import Control.Promise (Promise)
import Data.Maybe (fromMaybe)
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import NextOm (PageProps, omPage)
import React.Basic (JSX)
import Yoga.React.DOM (div, h1, p)
import Yoga.React.Om (useOm)
import Yoga.React.Om as Om

page :: Effect (Promise (PageProps () (name :: Nullable String) -> JSX))
page = omPage "Dashboard" { greeting: "Hello from Om!" }
  \{ searchParams: { name } } -> Om.do
    msg <- useOm \c -> pure c.greeting
    let who = fromMaybe "stranger" (toMaybe name)
    Om.pure $ div {}
      [ h1 {} "Dashboard"
      , p {} msg
      , p {} $ "Hello, " <> who <> "!"
      ]
