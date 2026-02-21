module Next.Font.Google.Manrope where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import manropeImpl :: forall r. { | r } -> FontConfig

manrope :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
manrope = manropeImpl
