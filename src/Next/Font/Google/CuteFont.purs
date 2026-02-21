module Next.Font.Google.CuteFont where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cuteFontImpl :: forall r. { | r } -> FontConfig

cuteFont :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cuteFont = cuteFontImpl
