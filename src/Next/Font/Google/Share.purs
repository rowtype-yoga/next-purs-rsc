module Next.Font.Google.Share where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import shareImpl :: forall r. { | r } -> FontConfig

share :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
share = shareImpl
