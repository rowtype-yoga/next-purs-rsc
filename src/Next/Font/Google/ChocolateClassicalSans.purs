module Next.Font.Google.ChocolateClassicalSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import chocolateClassicalSansImpl :: forall r. { | r } -> FontConfig

chocolateClassicalSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
chocolateClassicalSans = chocolateClassicalSansImpl
