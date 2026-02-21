module Next.Font.Google.Chewy where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import chewyImpl :: forall r. { | r } -> FontConfig

chewy :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
chewy = chewyImpl
