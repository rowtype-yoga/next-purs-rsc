module Next.Font.Google.GoudyBookletter1911 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import goudyBookletter1911Impl :: forall r. { | r } -> FontConfig

goudyBookletter1911 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
goudyBookletter1911 = goudyBookletter1911Impl
