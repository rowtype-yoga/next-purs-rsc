module Next.Font.Google.KdamThmorPro where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kdamThmorProImpl :: forall r. { | r } -> FontConfig

kdamThmorPro :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kdamThmorPro = kdamThmorProImpl
