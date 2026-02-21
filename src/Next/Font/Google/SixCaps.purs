module Next.Font.Google.SixCaps where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sixCapsImpl :: forall r. { | r } -> FontConfig

sixCaps :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sixCaps = sixCapsImpl
