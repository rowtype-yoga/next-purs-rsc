module Next.Font.Google.AlumniSansCollegiateOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import alumniSansCollegiateOneImpl :: forall r. { | r } -> FontConfig

alumniSansCollegiateOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
alumniSansCollegiateOne = alumniSansCollegiateOneImpl
