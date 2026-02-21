module Next.Font.Google.GowunDodum where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gowunDodumImpl :: forall r. { | r } -> FontConfig

gowunDodum :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gowunDodum = gowunDodumImpl
