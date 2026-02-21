module Next.Font.Google.NotoSerifTodhri where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifTodhriImpl :: forall r. { | r } -> FontConfig

notoSerifTodhri :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifTodhri = notoSerifTodhriImpl
