module Next.Font.Google.GoogleSansCode where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import googleSansCodeImpl :: forall r. { | r } -> FontConfig

googleSansCode :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
googleSansCode = googleSansCodeImpl
