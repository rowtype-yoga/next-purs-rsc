module Next.Font.Google.LibertinusSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import libertinusSansImpl :: forall r. { | r } -> FontConfig

libertinusSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
libertinusSans = libertinusSansImpl
