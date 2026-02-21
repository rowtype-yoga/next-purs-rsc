module Next.Font.Google.BigelowRules where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bigelowRulesImpl :: forall r. { | r } -> FontConfig

bigelowRules :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bigelowRules = bigelowRulesImpl
