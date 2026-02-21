module Next.Font.Google.AlikeAngular where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import alikeAngularImpl :: forall r. { | r } -> FontConfig

alikeAngular :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
alikeAngular = alikeAngularImpl
