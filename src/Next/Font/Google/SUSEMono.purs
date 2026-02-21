module Next.Font.Google.SUSEMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sUSEMonoImpl :: forall r. { | r } -> FontConfig

sUSEMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sUSEMono = sUSEMonoImpl
