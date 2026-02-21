module Next.Font.Google.LondrinaShadow where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import londrinaShadowImpl :: forall r. { | r } -> FontConfig

londrinaShadow :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
londrinaShadow = londrinaShadowImpl
