module Next.Font.Google.BacasimeAntique where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bacasimeAntiqueImpl :: forall r. { | r } -> FontConfig

bacasimeAntique :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bacasimeAntique = bacasimeAntiqueImpl
