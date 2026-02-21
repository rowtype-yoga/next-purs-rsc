module Next.Font.Google.RubikPixels where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rubikPixelsImpl :: forall r. { | r } -> FontConfig

rubikPixels :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rubikPixels = rubikPixelsImpl
