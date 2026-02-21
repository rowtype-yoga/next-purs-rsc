module Next.Font.Google.SreeKrushnadevaraya where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sreeKrushnadevarayaImpl :: forall r. { | r } -> FontConfig

sreeKrushnadevaraya :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sreeKrushnadevaraya = sreeKrushnadevarayaImpl
