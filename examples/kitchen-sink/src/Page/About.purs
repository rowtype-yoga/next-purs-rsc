module Page.About where

import Prelude hiding (div)

import Next (Metadata, Page, nextPage)
import Next (metadata) as Next
import Yoga.React.DOM (div, h1, p)
import Yoga.React.Om as Om

page :: Page "about"
page = nextPage {} $ pure \_ -> Om.do
  Om.pure $ div {}
    [ h1 {} "About"
    , p {} "This page is a PureScript server component."
    , p {} "Zero JavaScript shipped to the client for this page."
    ]

metadata :: Metadata "about"
metadata = Next.metadata \_ ->
  { title: "About"
  , description: "Learn about PureScript server components"
  }
