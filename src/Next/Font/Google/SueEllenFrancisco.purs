module Next.Font.Google.SueEllenFrancisco where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sueEllenFranciscoImpl :: forall r. { | r } -> FontConfig

sueEllenFrancisco :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sueEllenFrancisco = sueEllenFranciscoImpl
