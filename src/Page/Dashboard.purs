module Page.Dashboard where

import Prelude hiding (div)

import Data.Maybe (maybe)
import Data.Newtype (class Newtype, un)
import Next (Metadata, Page, type (:?), nextPage, simpleMetadata)
import Yoga.React.DOM (div, h1, p)
import Yoga.React.Om (useOm)
import Yoga.React.Om as Om

newtype Name = Name String

derive instance Newtype Name _

page :: Page ("dashboard" :? { name :: Name })
page = nextPage { greeting: "Hello from Om!" } $ pure
  \{ searchParams: { name } } -> Om.do
    msg <- useOm \c -> pure c.greeting
    let who = name # maybe "stranger" (un Name)
    Om.pure $ div {}
      [ h1 {} "Dashboard"
      , p {} msg
      , p {} $ "Hello, " <> who <> "!"
      ]

metadata :: Metadata ("dashboard" :? { name :: Name })
metadata = simpleMetadata \_ ->
  { title: "Dashboard"
  , description: "Your personal dashboard"
  }
