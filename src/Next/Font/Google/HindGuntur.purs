module Next.Font.Google.HindGuntur where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import hindGunturImpl :: forall r. { | r } -> FontConfig

hindGuntur :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
hindGuntur = hindGunturImpl
