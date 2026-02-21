module Next.Font.Google.SpecialGothicCondensedOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import specialGothicCondensedOneImpl :: forall r. { | r } -> FontConfig

specialGothicCondensedOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
specialGothicCondensedOne = specialGothicCondensedOneImpl
