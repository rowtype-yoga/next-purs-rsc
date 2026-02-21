module Next.Font.Google.Bilbo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bilboImpl :: forall r. { | r } -> FontConfig

bilbo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bilbo = bilboImpl
