module Next.Font.Google.Outfit where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import outfitImpl :: forall r. { | r } -> FontConfig

outfit :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
outfit = outfitImpl
