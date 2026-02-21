module Next.Font.Google.PatuaOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import patuaOneImpl :: forall r. { | r } -> FontConfig

patuaOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
patuaOne = patuaOneImpl
