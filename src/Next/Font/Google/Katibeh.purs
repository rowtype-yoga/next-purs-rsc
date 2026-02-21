module Next.Font.Google.Katibeh where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import katibehImpl :: forall r. { | r } -> FontConfig

katibeh :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
katibeh = katibehImpl
