module Page.Blog.Slug where

import Prelude hiding (div)

import Next (Metadata, Page, StaticParams, type (/), type (:), nextPage)
import Next (metadata, staticParams) as Next
import Yoga.React.DOM (div, h1, p)
import Yoga.React.Om as Om

page :: Page ("blog" / "slug" : String)
page = nextPage {} $ pure \{ params: { slug } } -> Om.do
  Om.pure $ div {}
    [ h1 {} $ "Blog: " <> slug
    , p {} "This page uses a path parameter."
    ]

metadata :: Metadata ("blog" / "slug" : String)
metadata = Next.metadata \{ params: { slug } } ->
  { title: "Blog: " <> slug
  , description: "Read our blog post about " <> slug
  }

staticParams :: StaticParams ("blog" / "slug" : String)
staticParams = Next.staticParams $ pure
  [ { slug: "hello" }
  , { slug: "world" }
  , { slug: "purescript" }
  ]
