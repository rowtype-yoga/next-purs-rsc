module Next.Font.Google.Kadwa where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kadwaImpl :: forall r. { | r } -> FontConfig

kadwa :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kadwa = kadwaImpl
