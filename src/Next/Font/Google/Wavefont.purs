module Next.Font.Google.Wavefont where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import wavefontImpl :: forall r. { | r } -> FontConfig

wavefont :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
wavefont = wavefontImpl
