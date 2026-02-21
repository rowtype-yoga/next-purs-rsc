module Next.Font.Google.MissFajardose where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import missFajardoseImpl :: forall r. { | r } -> FontConfig

missFajardose :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
missFajardose = missFajardoseImpl
