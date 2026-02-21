module Next.Font.Google.NotoSansPauCinHau where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansPauCinHauImpl :: forall r. { | r } -> FontConfig

notoSansPauCinHau :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansPauCinHau = notoSansPauCinHauImpl
