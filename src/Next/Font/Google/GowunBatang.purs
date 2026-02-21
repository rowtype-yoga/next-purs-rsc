module Next.Font.Google.GowunBatang where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gowunBatangImpl :: forall r. { | r } -> FontConfig

gowunBatang :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gowunBatang = gowunBatangImpl
