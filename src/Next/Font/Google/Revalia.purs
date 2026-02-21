module Next.Font.Google.Revalia where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import revaliaImpl :: forall r. { | r } -> FontConfig

revalia :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
revalia = revaliaImpl
