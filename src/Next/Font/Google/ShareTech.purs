module Next.Font.Google.ShareTech where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import shareTechImpl :: forall r. { | r } -> FontConfig

shareTech :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
shareTech = shareTechImpl
