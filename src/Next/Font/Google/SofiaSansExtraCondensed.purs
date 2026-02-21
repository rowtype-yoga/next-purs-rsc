module Next.Font.Google.SofiaSansExtraCondensed where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sofiaSansExtraCondensedImpl :: forall r. { | r } -> FontConfig

sofiaSansExtraCondensed :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sofiaSansExtraCondensed = sofiaSansExtraCondensedImpl
