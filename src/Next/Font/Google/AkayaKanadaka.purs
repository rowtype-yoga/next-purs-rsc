module Next.Font.Google.AkayaKanadaka where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import akayaKanadakaImpl :: forall r. { | r } -> FontConfig

akayaKanadaka :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
akayaKanadaka = akayaKanadakaImpl
