module Next.Font.Google.SassyFrass where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sassyFrassImpl :: forall r. { | r } -> FontConfig

sassyFrass :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sassyFrass = sassyFrassImpl
