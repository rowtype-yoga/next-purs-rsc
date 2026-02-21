module Next.Font.Google.SofiaSansCondensed where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sofiaSansCondensedImpl :: forall r. { | r } -> FontConfig

sofiaSansCondensed :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sofiaSansCondensed = sofiaSansCondensedImpl
