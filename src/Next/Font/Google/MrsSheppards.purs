module Next.Font.Google.MrsSheppards where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mrsSheppardsImpl :: forall r. { | r } -> FontConfig

mrsSheppards :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mrsSheppards = mrsSheppardsImpl
