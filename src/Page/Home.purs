-- @client
module Page.Home where

import Prelude hiding (div)

import Data.Tuple.Nested ((/\))
import Next (Page, Root)
import React.Basic.Events (handler_)
import Unsafe.Coerce (unsafeCoerce)
import React.Basic.Hooks (component, useState)
import React.Basic.Hooks as React
import Yoga.React.DOM (button, div, h1, p)

page :: Page Root
page = unsafeCoerce $ component "HomePage" \_ -> React.do
  count /\ setCount <- useState 0
  pure $ div {}
    [ h1 {} "Homey"
    , p {} "This entire page is a PureScript client component."
    , p {} $ "Counter: " <> show count
    , button { onClick: handler_ $ setCount (_ + 1) }
        "Increment"
    ]
