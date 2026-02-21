module Next.Font.Google.Wallpoet where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import wallpoetImpl :: forall r. { | r } -> FontConfig

wallpoet :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
wallpoet = wallpoetImpl
