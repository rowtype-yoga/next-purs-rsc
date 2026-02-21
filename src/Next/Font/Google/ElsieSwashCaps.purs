module Next.Font.Google.ElsieSwashCaps where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import elsieSwashCapsImpl :: forall r. { | r } -> FontConfig

elsieSwashCaps :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
elsieSwashCaps = elsieSwashCapsImpl
