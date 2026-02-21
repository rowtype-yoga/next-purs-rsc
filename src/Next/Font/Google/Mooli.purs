module Next.Font.Google.Mooli where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mooliImpl :: forall r. { | r } -> FontConfig

mooli :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mooli = mooliImpl
