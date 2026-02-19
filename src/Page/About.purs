module Page.About where

import Prelude hiding (div)

import Next (Metadata, Page, simpleMetadata, simplePage)
import Yoga.React.DOM (div, h1, p)

page :: Page "about"
page = simplePage \_ -> div {}
  [ h1 {} "About"
  , p {} "This page is a PureScript server component."
  , p {} "Zero JavaScript shipped to the client for this page."
  ]

metadata :: Metadata "about"
metadata = simpleMetadata \_ ->
  { title: "About"
  , description: "Learn about PureScript server components"
  }
