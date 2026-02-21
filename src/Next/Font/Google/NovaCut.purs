module Next.Font.Google.NovaCut where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import novaCutImpl :: forall r. { | r } -> FontConfig

novaCut :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
novaCut = novaCutImpl
