module Next.Font.Google.AtkinsonHyperlegibleNext where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import atkinsonHyperlegibleNextImpl :: forall r. { | r } -> FontConfig

atkinsonHyperlegibleNext :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
atkinsonHyperlegibleNext = atkinsonHyperlegibleNextImpl
