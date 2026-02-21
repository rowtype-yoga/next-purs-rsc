module Next.Font.Google.MochiyPopOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mochiyPopOneImpl :: forall r. { | r } -> FontConfig

mochiyPopOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mochiyPopOne = mochiyPopOneImpl
