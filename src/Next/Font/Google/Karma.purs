module Next.Font.Google.Karma where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import karmaImpl :: forall r. { | r } -> FontConfig

karma :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
karma = karmaImpl
