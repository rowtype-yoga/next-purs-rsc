module Next.Font.Google.LondrinaSolid where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import londrinaSolidImpl :: forall r. { | r } -> FontConfig

londrinaSolid :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
londrinaSolid = londrinaSolidImpl
