module Next.Font.Google.SofiaSansSemiCondensed where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sofiaSansSemiCondensedImpl :: forall r. { | r } -> FontConfig

sofiaSansSemiCondensed :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sofiaSansSemiCondensed = sofiaSansSemiCondensedImpl
