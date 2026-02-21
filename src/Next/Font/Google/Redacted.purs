module Next.Font.Google.Redacted where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import redactedImpl :: forall r. { | r } -> FontConfig

redacted :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
redacted = redactedImpl
