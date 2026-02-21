module Page.Blog.Slug where

import Prelude hiding (div)

import Next (Metadata, Page, StaticParams, type (/), type (:), nextPage, simpleMetadata, simpleStaticParams)
import Yoga.React.DOM (div, h1, p)
import Yoga.React.Om as Om

page :: Page ("blog" / "slug" : String)
page = nextPage {} $ pure \{ params: { slug } } -> Om.do
  Om.pure $ div {}
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
