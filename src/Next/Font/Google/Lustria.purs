module Next.Font.Google.Lustria where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lustriaImpl :: forall r. { | r } -> FontConfig

lustria :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lustria = lustriaImpl
