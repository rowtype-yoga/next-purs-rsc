module Next.Font.Google.NotoSerifHentaigana where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifHentaiganaImpl :: forall r. { | r } -> FontConfig

notoSerifHentaigana :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifHentaigana = notoSerifHentaiganaImpl
