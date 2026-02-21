module Next.Font.Google.CormorantInfant where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cormorantInfantImpl :: forall r. { | r } -> FontConfig

cormorantInfant :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cormorantInfant = cormorantInfantImpl
