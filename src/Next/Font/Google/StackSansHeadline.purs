module Next.Font.Google.StackSansHeadline where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import stackSansHeadlineImpl :: forall r. { | r } -> FontConfig

stackSansHeadline :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
stackSansHeadline = stackSansHeadlineImpl
