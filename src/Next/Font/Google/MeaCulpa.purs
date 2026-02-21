module Next.Font.Google.MeaCulpa where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import meaCulpaImpl :: forall r. { | r } -> FontConfig

meaCulpa :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
meaCulpa = meaCulpaImpl
