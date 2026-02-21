module Next.Font.Google.BigShouldersInline where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bigShouldersInlineImpl :: forall r. { | r } -> FontConfig

bigShouldersInline :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bigShouldersInline = bigShouldersInlineImpl
