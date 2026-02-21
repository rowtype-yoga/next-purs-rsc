module Next.Font.Google.Moulpali where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import moulpaliImpl :: forall r. { | r } -> FontConfig

moulpali :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
moulpali = moulpaliImpl
