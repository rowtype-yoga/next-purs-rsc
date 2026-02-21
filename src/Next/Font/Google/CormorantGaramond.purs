module Next.Font.Google.CormorantGaramond where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cormorantGaramondImpl :: forall r. { | r } -> FontConfig

cormorantGaramond :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cormorantGaramond = cormorantGaramondImpl
