module Pages.About where

import Prelude

import React.Basic.Hooks (Component, component)
import Yoga.React.DOM (div, h1, p)

page :: Component {}
page = component "AboutPage" \_ -> pure $ div {}
  [ h1 {} "About"
  , p {} "This page is a PureScript server component."
  , p {} "Zero JavaScript shipped to the client for this page."
  ]
