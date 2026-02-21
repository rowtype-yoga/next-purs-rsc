module Next.Font.Google.BBHHegarty where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bBHHegartyImpl :: forall r. { | r } -> FontConfig

bBHHegarty :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bBHHegarty = bBHHegartyImpl
