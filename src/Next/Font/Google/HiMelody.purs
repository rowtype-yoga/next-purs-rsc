module Next.Font.Google.HiMelody where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import hiMelodyImpl :: forall r. { | r } -> FontConfig

hiMelody :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
hiMelody = hiMelodyImpl
