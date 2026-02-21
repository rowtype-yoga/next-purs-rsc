module Next.Font.Google.NotoSansMendeKikakui where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansMendeKikakuiImpl :: forall r. { | r } -> FontConfig

notoSansMendeKikakui :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansMendeKikakui = notoSansMendeKikakuiImpl
