module Next.Font.Google.Asimovian where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import asimovianImpl :: forall r. { | r } -> FontConfig

asimovian :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
asimovian = asimovianImpl
