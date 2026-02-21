module Next.Font.Google.AlumniSansSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import alumniSansSCImpl :: forall r. { | r } -> FontConfig

alumniSansSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
alumniSansSC = alumniSansSCImpl
