module Next.Font.Google.Snippet where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import snippetImpl :: forall r. { | r } -> FontConfig

snippet :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
snippet = snippetImpl
