module Next.Font.Google.IBMPlexSansHebrew where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import iBMPlexSansHebrewImpl :: forall r. { | r } -> FontConfig

iBMPlexSansHebrew :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
iBMPlexSansHebrew = iBMPlexSansHebrewImpl
