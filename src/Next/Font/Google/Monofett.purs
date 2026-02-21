module Next.Font.Google.Monofett where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import monofettImpl :: forall r. { | r } -> FontConfig

monofett :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
monofett = monofettImpl
