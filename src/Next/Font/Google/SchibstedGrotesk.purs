module Next.Font.Google.SchibstedGrotesk where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import schibstedGroteskImpl :: forall r. { | r } -> FontConfig

schibstedGrotesk :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
schibstedGrotesk = schibstedGroteskImpl
