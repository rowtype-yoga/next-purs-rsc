-- @client
module GlobalError.Root where

import Prelude hiding (div)

import Effect.Uncurried (mkEffectFn1)
import Next (GlobalError)
import Next (globalError) as Next
import Yoga.HTTP.API.Path (Root)
import Yoga.React.DOM (button, div, h1, p)
import Yoga.React.Om as Om

globalError :: GlobalError Root
globalError = Next.globalError {} $ pure \{ reset } -> Om.do
  Om.pure $ div {}
    [ h1 {} "Application Error"
    , p {} "A global error occurred."
    , button { onClick: mkEffectFn1 \_ -> reset } "Reload"
    ]
