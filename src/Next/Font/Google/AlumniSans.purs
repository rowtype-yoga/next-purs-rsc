module Next.Font.Google.AlumniSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import alumniSansImpl :: forall r. { | r } -> FontConfig

alumniSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
alumniSans = alumniSansImpl
