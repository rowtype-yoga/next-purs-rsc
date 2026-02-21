module Next.Font.Google.NotoSerifKhitanSmallScript where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifKhitanSmallScriptImpl :: forall r. { | r } -> FontConfig

notoSerifKhitanSmallScript :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifKhitanSmallScript = notoSerifKhitanSmallScriptImpl
