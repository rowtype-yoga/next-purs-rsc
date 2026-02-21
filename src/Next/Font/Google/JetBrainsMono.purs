module Next.Font.Google.JetBrainsMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import jetBrainsMonoImpl :: forall r. { | r } -> FontConfig

jetBrainsMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jetBrainsMono = jetBrainsMonoImpl
