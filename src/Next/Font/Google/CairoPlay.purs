module Next.Font.Google.CairoPlay where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cairoPlayImpl :: forall r. { | r } -> FontConfig

cairoPlay :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cairoPlay = cairoPlayImpl
