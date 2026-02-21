module Next.Font.Google.VendSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import vendSansImpl :: forall r. { | r } -> FontConfig

vendSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
vendSans = vendSansImpl
