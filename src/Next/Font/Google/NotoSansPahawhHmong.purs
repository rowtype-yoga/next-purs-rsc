module Next.Font.Google.NotoSansPahawhHmong where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansPahawhHmongImpl :: forall r. { | r } -> FontConfig

notoSansPahawhHmong :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansPahawhHmong = notoSansPahawhHmongImpl
