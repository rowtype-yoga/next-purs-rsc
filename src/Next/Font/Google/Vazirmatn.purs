module Next.Font.Google.Vazirmatn where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import vazirmatnImpl :: forall r. { | r } -> FontConfig

vazirmatn :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
vazirmatn = vazirmatnImpl
