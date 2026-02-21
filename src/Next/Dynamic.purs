module Next.Dynamic (clientOnly) where

import Data.Function.Uncurried (Fn1, runFn1)
import React.Basic (ReactComponent)

foreign import clientOnlyImpl :: forall props. Fn1 (ReactComponent props) (ReactComponent props)

clientOnly :: forall props. ReactComponent props -> ReactComponent props
clientOnly = runFn1 clientOnlyImpl
