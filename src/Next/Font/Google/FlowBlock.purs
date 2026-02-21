module Next.Font.Google.FlowBlock where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import flowBlockImpl :: forall r. { | r } -> FontConfig

flowBlock :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
flowBlock = flowBlockImpl
