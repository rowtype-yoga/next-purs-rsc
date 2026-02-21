module Next.Font.Google.BalsamiqSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import balsamiqSansImpl :: forall r. { | r } -> FontConfig

balsamiqSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
balsamiqSans = balsamiqSansImpl
