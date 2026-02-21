module Next.Font.Google.NotoSansChorasmian where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansChorasmianImpl :: forall r. { | r } -> FontConfig

notoSansChorasmian :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansChorasmian = notoSansChorasmianImpl
