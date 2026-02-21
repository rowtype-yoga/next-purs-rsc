module Next.Font.Google.JainiPurva where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import jainiPurvaImpl :: forall r. { | r } -> FontConfig

jainiPurva :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jainiPurva = jainiPurvaImpl
