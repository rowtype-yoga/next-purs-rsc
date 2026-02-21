module Next.Font.Google.LongCang where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import longCangImpl :: forall r. { | r } -> FontConfig

longCang :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
longCang = longCangImpl
