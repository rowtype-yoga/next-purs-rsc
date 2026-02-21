module Next.Font.Google.Sintony where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sintonyImpl :: forall r. { | r } -> FontConfig

sintony :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sintony = sintonyImpl
