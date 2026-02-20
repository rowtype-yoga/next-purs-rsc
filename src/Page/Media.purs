module Page.Media where

import Prelude hiding (div)

import Next (Metadata, Page, image, script, ScriptStrategy(..), simplePage, simpleMetadata)
import Yoga.React.DOM (div, h1, h2, p)

page :: Page "media"
page = simplePage \_ -> div {}
  [ h1 {} "Media Components"
  , h2 {} "Next Image"
  , image { src: "/next.svg", alt: "Next.js logo", width: 180, height: 38, priority: true }
  , h2 {} "Next Script"
  , script "https://example.com/analytics.js" AfterInteractive {}
  , p {} "Script strategies:"
  , script "https://example.com/critical.js" BeforeInteractive {}
  , script "https://example.com/lazy.js" LazyOnload {}
  , script "https://example.com/worker.js" Worker {}
  ]

metadata :: Metadata "media"
metadata = simpleMetadata \_ ->
  { title: "Media"
  , description: "Image and script component examples"
  }
