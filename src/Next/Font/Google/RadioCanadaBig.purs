module Next.Font.Google.RadioCanadaBig where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import radioCanadaBigImpl :: forall r. { | r } -> FontConfig

radioCanadaBig :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
radioCanadaBig = radioCanadaBigImpl
