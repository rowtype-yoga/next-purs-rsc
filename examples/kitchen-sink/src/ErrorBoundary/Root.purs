-- @client
module ErrorBoundary.Root where

import Prelude hiding (div)

import Next (ErrorBoundary)
import Next (errorBoundary) as Next
import React.Basic.Events (handler_)
import Yoga.HTTP.API.Path (Root)
import Yoga.React.DOM (button, div, h2)
import Yoga.React.Om as Om

error :: ErrorBoundary Root
error = Next.errorBoundary {} $ pure \{ reset } -> Om.do
  Om.pure $ div {}
    [ h2 {} "Something went wrong!"
    , button { onClick: handler_ reset } "Try again"
    ]
