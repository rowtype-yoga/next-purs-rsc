module Next.Font.Google.KaiseiTokumin where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kaiseiTokuminImpl :: forall r. { | r } -> FontConfig

kaiseiTokumin :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kaiseiTokumin = kaiseiTokuminImpl
