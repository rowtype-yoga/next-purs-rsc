module Next.Font.Google.Qahiri where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import qahiriImpl :: forall r. { | r } -> FontConfig

qahiri :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
qahiri = qahiriImpl
