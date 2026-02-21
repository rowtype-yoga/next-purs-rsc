module Default.Root where

import Prelude hiding (div)

import Control.Promise as Promise
import Next (Default)
import Unsafe.Coerce (unsafeCoerce)
import Yoga.HTTP.API.Path (Root)
import Yoga.React.DOM (div, p)

default :: Default Root
default = unsafeCoerce $ Promise.fromAff $ pure \(_ :: forall r. { | r }) ->
  div {} $
    p {} "Default fallback content."
