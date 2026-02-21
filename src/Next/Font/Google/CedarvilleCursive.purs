module Next.Font.Google.CedarvilleCursive where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cedarvilleCursiveImpl :: forall r. { | r } -> FontConfig

cedarvilleCursive :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cedarvilleCursive = cedarvilleCursiveImpl
