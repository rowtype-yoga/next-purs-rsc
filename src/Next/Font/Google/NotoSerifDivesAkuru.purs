module Next.Font.Google.NotoSerifDivesAkuru where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifDivesAkuruImpl :: forall r. { | r } -> FontConfig

notoSerifDivesAkuru :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifDivesAkuru = notoSerifDivesAkuruImpl
