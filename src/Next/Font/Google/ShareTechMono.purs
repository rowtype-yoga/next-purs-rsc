module Next.Font.Google.ShareTechMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import shareTechMonoImpl :: forall r. { | r } -> FontConfig

shareTechMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
shareTechMono = shareTechMonoImpl
