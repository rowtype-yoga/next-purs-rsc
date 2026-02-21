module Next.Font.Google.YujiHentaiganaAkari where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import yujiHentaiganaAkariImpl :: forall r. { | r } -> FontConfig

yujiHentaiganaAkari :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
yujiHentaiganaAkari = yujiHentaiganaAkariImpl
