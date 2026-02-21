module Next.Font.Google.SansitaSwashed where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sansitaSwashedImpl :: forall r. { | r } -> FontConfig

sansitaSwashed :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sansitaSwashed = sansitaSwashedImpl
