module Next.Font.Google.SpecialGothicExpandedOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import specialGothicExpandedOneImpl :: forall r. { | r } -> FontConfig

specialGothicExpandedOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
specialGothicExpandedOne = specialGothicExpandedOneImpl
