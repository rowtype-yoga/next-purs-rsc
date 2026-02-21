module Next.Font.Google.NotoSerifTangut where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifTangutImpl :: forall r. { | r } -> FontConfig

notoSerifTangut :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifTangut = notoSerifTangutImpl
