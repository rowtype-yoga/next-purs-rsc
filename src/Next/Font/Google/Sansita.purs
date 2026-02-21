module Next.Font.Google.Sansita where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sansitaImpl :: forall r. { | r } -> FontConfig

sansita :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sansita = sansitaImpl
