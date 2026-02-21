module Next.Font.Google.Ribeye where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ribeyeImpl :: forall r. { | r } -> FontConfig

ribeye :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ribeye = ribeyeImpl
