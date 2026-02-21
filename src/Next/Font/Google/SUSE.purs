module Next.Font.Google.SUSE where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sUSEImpl :: forall r. { | r } -> FontConfig

sUSE :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sUSE = sUSEImpl
