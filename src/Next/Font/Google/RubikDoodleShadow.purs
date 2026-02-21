module Next.Font.Google.RubikDoodleShadow where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rubikDoodleShadowImpl :: forall r. { | r } -> FontConfig

rubikDoodleShadow :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rubikDoodleShadow = rubikDoodleShadowImpl
