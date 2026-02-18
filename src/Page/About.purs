module Page.About where

import Prelude hiding (div)

import Effect (Effect)
import Next (PageProps, simplePage)
import React.Basic (JSX)
import Yoga.React.DOM (div, h1, p)

page :: Effect (PageProps () () -> JSX)
page = simplePage \_ -> div {}
  [ h1 {} "About"
  , p {} "This page is a PureScript server component."
  , p {} "Zero JavaScript shipped to the client for this page."
  ]
