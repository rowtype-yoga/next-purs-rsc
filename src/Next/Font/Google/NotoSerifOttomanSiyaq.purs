module Next.Font.Google.NotoSerifOttomanSiyaq where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifOttomanSiyaqImpl :: forall r. { | r } -> FontConfig

notoSerifOttomanSiyaq :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifOttomanSiyaq = notoSerifOttomanSiyaqImpl
