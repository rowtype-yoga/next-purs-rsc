module Next.Font.Google.MochiyPopPOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mochiyPopPOneImpl :: forall r. { | r } -> FontConfig

mochiyPopPOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mochiyPopPOne = mochiyPopPOneImpl
