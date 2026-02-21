module Next.Font.Google.TenorSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tenorSansImpl :: forall r. { | r } -> FontConfig

tenorSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tenorSans = tenorSansImpl
