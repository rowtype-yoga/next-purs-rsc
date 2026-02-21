module Next.Font.Google.AzeretMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import azeretMonoImpl :: forall r. { | r } -> FontConfig

azeretMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
azeretMono = azeretMonoImpl
