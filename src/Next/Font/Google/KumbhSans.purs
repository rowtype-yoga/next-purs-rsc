module Next.Font.Google.KumbhSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kumbhSansImpl :: forall r. { | r } -> FontConfig

kumbhSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kumbhSans = kumbhSansImpl
