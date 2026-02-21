module Next.Font.Google.FlowCircular where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import flowCircularImpl :: forall r. { | r } -> FontConfig

flowCircular :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
flowCircular = flowCircularImpl
