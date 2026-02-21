module Next.Font.Google.AtkinsonHyperlegible where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import atkinsonHyperlegibleImpl :: forall r. { | r } -> FontConfig

atkinsonHyperlegible :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
atkinsonHyperlegible = atkinsonHyperlegibleImpl
