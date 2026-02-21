module Next.Font.Google.YujiHentaiganaAkebono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import yujiHentaiganaAkebonoImpl :: forall r. { | r } -> FontConfig

yujiHentaiganaAkebono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
yujiHentaiganaAkebono = yujiHentaiganaAkebonoImpl
