module Next.Font.Google.GoogleSansFlex where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import googleSansFlexImpl :: forall r. { | r } -> FontConfig

googleSansFlex :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
googleSansFlex = googleSansFlexImpl
