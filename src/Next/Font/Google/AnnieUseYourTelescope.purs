module Next.Font.Google.AnnieUseYourTelescope where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import annieUseYourTelescopeImpl :: forall r. { | r } -> FontConfig

annieUseYourTelescope :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
annieUseYourTelescope = annieUseYourTelescopeImpl
