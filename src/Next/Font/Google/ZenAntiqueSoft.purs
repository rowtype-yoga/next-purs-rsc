module Next.Font.Google.ZenAntiqueSoft where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import zenAntiqueSoftImpl :: forall r. { | r } -> FontConfig

zenAntiqueSoft :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
zenAntiqueSoft = zenAntiqueSoftImpl
