module Page.Blog.Slug where

import Prelude hiding (div)

import Next (Page, type (/), type (:), simplePage)
import Yoga.React.DOM (div, h1, p)

page :: Page ("blog" / "slug" : String)
page = simplePage \{ params: { slug } } -> div {}
  [ h1 {} $ "Blog: " <> slug
  , p {} "This page uses a path parameter."
  ]
