module Next.Font.Google.Gayathri where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gayathriImpl :: forall r. { | r } -> FontConfig

gayathri :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gayathri = gayathriImpl
