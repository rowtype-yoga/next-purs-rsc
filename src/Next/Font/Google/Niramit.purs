module Next.Font.Google.Niramit where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import niramitImpl :: forall r. { | r } -> FontConfig

niramit :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
niramit = niramitImpl
