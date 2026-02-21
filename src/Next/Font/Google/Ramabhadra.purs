module Next.Font.Google.Ramabhadra where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ramabhadraImpl :: forall r. { | r } -> FontConfig

ramabhadra :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ramabhadra = ramabhadraImpl
