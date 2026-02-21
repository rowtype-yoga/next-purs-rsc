-- @client
module NotFound.Root where

import Prelude hiding (div)

import Next (NotFound)
import Next (notFound) as Next
import Yoga.HTTP.API.Path (Root)
import Yoga.React.DOM (div, h1, p)
import Yoga.React.Om as Om

notFound :: NotFound Root
notFound = Next.notFound {} $ pure \_ -> Om.do
  Om.pure $ div {}
    [ h1 {} "404"
    , p {} "Page not found."
    ]
