module Next.Font.Google.Metrophobic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import metrophobicImpl :: forall r. { | r } -> FontConfig

metrophobic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
metrophobic = metrophobicImpl
