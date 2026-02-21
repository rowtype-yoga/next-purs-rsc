module Next.Font.Google.ScopeOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import scopeOneImpl :: forall r. { | r } -> FontConfig

scopeOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
scopeOne = scopeOneImpl
