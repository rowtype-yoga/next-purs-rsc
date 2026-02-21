module Next.Font.Google.RubikGemstones where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rubikGemstonesImpl :: forall r. { | r } -> FontConfig

rubikGemstones :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rubikGemstones = rubikGemstonesImpl
