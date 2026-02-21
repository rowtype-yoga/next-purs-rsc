module Next.Font.Google.LaBelleAurore where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import laBelleAuroreImpl :: forall r. { | r } -> FontConfig

laBelleAurore :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
laBelleAurore = laBelleAuroreImpl
