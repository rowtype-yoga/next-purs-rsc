module Default.Root where

import Prelude hiding (div)

import Control.Promise as Promise
import Effect.Uncurried (mkEffectFn1)
import Next (Default)
import Unsafe.Coerce (unsafeCoerce)
import Yoga.HTTP.API.Path (Root)
import Yoga.React.DOM (div, p)

default :: Default Root
default = unsafeCoerce $ mkEffectFn1 \(_ :: forall r. { | r }) ->
  Promise.fromAff $ pure $
    div {} $
      p {} "Default fallback content."
