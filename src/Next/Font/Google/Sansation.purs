module Next.Font.Google.Sansation where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sansationImpl :: forall r. { | r } -> FontConfig

sansation :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sansation = sansationImpl
