module Page.About where

import Prelude hiding (div)

import Next (Metadata, Page, mkPage, simpleMetadata)
import Yoga.React.DOM (div, h1, p)
import Yoga.React.Om as Om

page :: Page "about"
page = mkPage {} $ pure \_ -> Om.do
  Om.pure $ div {}
    [ h1 {} "About"
    , p {} "This page is a PureScript server component."
    , p {} "Zero JavaScript shipped to the client for this page."
    ]

metadata :: Metadata "about"
metadata = simpleMetadata \_ ->
  { title: "About"
  , description: "Learn about PureScript server components"
  }
