module Next.Font.Google.Diplomata where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import diplomataImpl :: forall r. { | r } -> FontConfig

diplomata :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
diplomata = diplomataImpl
