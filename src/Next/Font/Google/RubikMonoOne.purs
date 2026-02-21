module Next.Font.Google.RubikMonoOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rubikMonoOneImpl :: forall r. { | r } -> FontConfig

rubikMonoOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rubikMonoOne = rubikMonoOneImpl
