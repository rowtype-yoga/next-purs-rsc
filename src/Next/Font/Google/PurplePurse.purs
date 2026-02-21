module Next.Font.Google.PurplePurse where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import purplePurseImpl :: forall r. { | r } -> FontConfig

purplePurse :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
purplePurse = purplePurseImpl
