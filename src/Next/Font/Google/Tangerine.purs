module Next.Font.Google.Tangerine where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tangerineImpl :: forall r. { | r } -> FontConfig

tangerine :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tangerine = tangerineImpl
