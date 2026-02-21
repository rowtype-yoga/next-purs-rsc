module Next.Font.Google.DawningofaNewDay where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import dawningofaNewDayImpl :: forall r. { | r } -> FontConfig

dawningofaNewDay :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
dawningofaNewDay = dawningofaNewDayImpl
