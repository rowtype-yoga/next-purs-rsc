module Next.Font.Google.FlowRounded where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import flowRoundedImpl :: forall r. { | r } -> FontConfig

flowRounded :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
flowRounded = flowRoundedImpl
