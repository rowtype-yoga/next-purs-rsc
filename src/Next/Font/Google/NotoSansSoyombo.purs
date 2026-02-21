module Next.Font.Google.NotoSansSoyombo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansSoyomboImpl :: forall r. { | r } -> FontConfig

notoSansSoyombo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansSoyombo = notoSansSoyomboImpl
