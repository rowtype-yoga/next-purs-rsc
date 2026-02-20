module Page.Blog.Slug where

import Prelude hiding (div)

import Next (Metadata, Page, StaticParams, type (/), type (:), simpleMetadata, simplePage, simpleStaticParams)
import Yoga.React.DOM (div, h1, p)

page :: Page ("blog" / "slug" : String)
page = simplePage \{ params: { slug } } -> div {}
  [ h1 {} $ "Blog: " <> slug
  , p {} "This page uses a path parameter."
  ]

metadata :: Metadata ("blog" / "slug" : String)
metadata = simpleMetadata \{ params: { slug } } ->
  { title: "Blog: " <> slug
  , description: "Read our blog post about " <> slug
  }

staticParams :: StaticParams ("blog" / "slug" : String)
staticParams = simpleStaticParams $ pure
  [ { slug: "hello" }
  , { slug: "world" }
  , { slug: "purescript" }
  ]
