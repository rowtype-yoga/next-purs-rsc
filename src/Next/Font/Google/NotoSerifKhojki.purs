module Next.Font.Google.NotoSerifKhojki where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifKhojkiImpl :: forall r. { | r } -> FontConfig

notoSerifKhojki :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifKhojki = notoSerifKhojkiImpl
