module Next.Font.Google.NataSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import nataSansImpl :: forall r. { | r } -> FontConfig

nataSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
nataSans = nataSansImpl
