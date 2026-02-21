module Next.Font.Google.Atma where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import atmaImpl :: forall r. { | r } -> FontConfig

atma :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
atma = atmaImpl
