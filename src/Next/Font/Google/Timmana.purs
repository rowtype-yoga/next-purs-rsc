module Next.Font.Google.Timmana where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import timmanaImpl :: forall r. { | r } -> FontConfig

timmana :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
timmana = timmanaImpl
