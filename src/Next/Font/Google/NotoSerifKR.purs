module Next.Font.Google.NotoSerifKR where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifKRImpl :: forall r. { | r } -> FontConfig

notoSerifKR :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifKR = notoSerifKRImpl
