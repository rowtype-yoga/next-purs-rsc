module Next.Font.Google.Chokokutai where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import chokokutaiImpl :: forall r. { | r } -> FontConfig

chokokutai :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
chokokutai = chokokutaiImpl
