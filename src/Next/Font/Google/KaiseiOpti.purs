module Next.Font.Google.KaiseiOpti where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kaiseiOptiImpl :: forall r. { | r } -> FontConfig

kaiseiOpti :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kaiseiOpti = kaiseiOptiImpl
