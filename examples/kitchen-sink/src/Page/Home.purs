-- @client
module Page.Home where

import Prelude hiding (div)

import Data.Tuple.Nested ((/\))
import Next (Page, Root, nextPage)
import React.Basic.Events (handler_)
import Yoga.React.DOM (button, div, h1, p)
import Yoga.React.Om as Om

page :: Page Root
page = nextPage {} $ pure \_ -> Om.do
  count /\ setCount <- Om.useState 0
  Om.pure $ div {}
    [ h1 {} "Homey"
    , p {} "This entire page is a PureScript client component."
    , p {} $ "Counter: " <> show count
    , button { onClick: handler_ $ setCount (_ + 1) }
        "Increment"
    ]
