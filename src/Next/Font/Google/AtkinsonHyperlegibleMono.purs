module Next.Font.Google.AtkinsonHyperlegibleMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import atkinsonHyperlegibleMonoImpl :: forall r. { | r } -> FontConfig

atkinsonHyperlegibleMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
atkinsonHyperlegibleMono = atkinsonHyperlegibleMonoImpl
