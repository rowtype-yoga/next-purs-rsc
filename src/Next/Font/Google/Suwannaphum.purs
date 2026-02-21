module Next.Font.Google.Suwannaphum where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import suwannaphumImpl :: forall r. { | r } -> FontConfig

suwannaphum :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
suwannaphum = suwannaphumImpl
