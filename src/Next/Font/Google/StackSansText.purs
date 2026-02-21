module Next.Font.Google.StackSansText where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import stackSansTextImpl :: forall r. { | r } -> FontConfig

stackSansText :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
stackSansText = stackSansTextImpl
