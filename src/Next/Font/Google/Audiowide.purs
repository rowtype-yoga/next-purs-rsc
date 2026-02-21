module Next.Font.Google.Audiowide where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import audiowideImpl :: forall r. { | r } -> FontConfig

audiowide :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
audiowide = audiowideImpl
