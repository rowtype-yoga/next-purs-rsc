-- @client
module Page.Home where

import Prelude hiding (div)

import Data.Tuple.Nested ((/\))
import React.Basic.Events (handler_)
import React.Basic.Hooks (Component, component, useState)
import React.Basic.Hooks as React
import Yoga.React.DOM (button, div, h1, p)

page :: Component {}
page = component "HomePage" \_ -> React.do
  count /\ setCount <- useState 0
  pure $ div {}
    [ h1 {} "Homey"
    , p {} "This entire page is a PureScript client component."
    , p {} $ "Counter: " <> show count
    , button { onClick: handler_ $ setCount (_ + 1) }
        "Increment"
    ]
