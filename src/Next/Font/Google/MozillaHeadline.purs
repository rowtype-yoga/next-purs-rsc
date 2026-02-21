module Next.Font.Google.MozillaHeadline where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mozillaHeadlineImpl :: forall r. { | r } -> FontConfig

mozillaHeadline :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mozillaHeadline = mozillaHeadlineImpl
