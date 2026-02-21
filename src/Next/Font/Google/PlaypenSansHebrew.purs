module Next.Font.Google.PlaypenSansHebrew where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playpenSansHebrewImpl :: forall r. { | r } -> FontConfig

playpenSansHebrew :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playpenSansHebrew = playpenSansHebrewImpl
