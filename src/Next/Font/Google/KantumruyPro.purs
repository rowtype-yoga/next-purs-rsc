module Next.Font.Google.KantumruyPro where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kantumruyProImpl :: forall r. { | r } -> FontConfig

kantumruyPro :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kantumruyPro = kantumruyProImpl
