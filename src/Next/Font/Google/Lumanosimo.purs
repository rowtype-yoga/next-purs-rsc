module Next.Font.Google.Lumanosimo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lumanosimoImpl :: forall r. { | r } -> FontConfig

lumanosimo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lumanosimo = lumanosimoImpl
