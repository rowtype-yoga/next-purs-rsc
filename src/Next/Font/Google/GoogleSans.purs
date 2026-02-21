module Next.Font.Google.GoogleSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import googleSansImpl :: forall r. { | r } -> FontConfig

googleSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
googleSans = googleSansImpl
