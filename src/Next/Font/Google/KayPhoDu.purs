module Next.Font.Google.KayPhoDu where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kayPhoDuImpl :: forall r. { | r } -> FontConfig

kayPhoDu :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kayPhoDu = kayPhoDuImpl
