module Next.Font.Google.Almendra where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import almendraImpl :: forall r. { | r } -> FontConfig

almendra :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
almendra = almendraImpl
