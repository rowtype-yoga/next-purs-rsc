module Next.Font.Google.Angkor where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import angkorImpl :: forall r. { | r } -> FontConfig

angkor :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
angkor = angkorImpl
