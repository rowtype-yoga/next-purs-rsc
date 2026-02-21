module Next.Font.Google.BaiJamjuree where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import baiJamjureeImpl :: forall r. { | r } -> FontConfig

baiJamjuree :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
baiJamjuree = baiJamjureeImpl
