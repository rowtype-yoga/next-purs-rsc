module Next.Font.Google.Fahkwang where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import fahkwangImpl :: forall r. { | r } -> FontConfig

fahkwang :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
fahkwang = fahkwangImpl
