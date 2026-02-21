module Next.Font.Google.AlumniSansInlineOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import alumniSansInlineOneImpl :: forall r. { | r } -> FontConfig

alumniSansInlineOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
alumniSansInlineOne = alumniSansInlineOneImpl
