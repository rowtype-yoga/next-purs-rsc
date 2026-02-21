module Next.Font.Google.StintUltraCondensed where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import stintUltraCondensedImpl :: forall r. { | r } -> FontConfig

stintUltraCondensed :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
stintUltraCondensed = stintUltraCondensedImpl
