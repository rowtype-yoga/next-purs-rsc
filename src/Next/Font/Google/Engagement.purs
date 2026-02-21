module Next.Font.Google.Engagement where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import engagementImpl :: forall r. { | r } -> FontConfig

engagement :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
engagement = engagementImpl
