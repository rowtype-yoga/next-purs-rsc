module Next.Font.Google.MooLahLah where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mooLahLahImpl :: forall r. { | r } -> FontConfig

mooLahLah :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mooLahLah = mooLahLahImpl
