module Next.Font.Google.StackSansNotch where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import stackSansNotchImpl :: forall r. { | r } -> FontConfig

stackSansNotch :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
stackSansNotch = stackSansNotchImpl
