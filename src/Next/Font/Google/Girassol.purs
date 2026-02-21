module Next.Font.Google.Girassol where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import girassolImpl :: forall r. { | r } -> FontConfig

girassol :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
girassol = girassolImpl
