module Next.Font.Google.BowlbyOneSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bowlbyOneSCImpl :: forall r. { | r } -> FontConfig

bowlbyOneSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bowlbyOneSC = bowlbyOneSCImpl
