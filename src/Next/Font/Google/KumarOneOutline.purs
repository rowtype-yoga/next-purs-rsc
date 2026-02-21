module Next.Font.Google.KumarOneOutline where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kumarOneOutlineImpl :: forall r. { | r } -> FontConfig

kumarOneOutline :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kumarOneOutline = kumarOneOutlineImpl
