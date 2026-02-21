module Next.Font.Google.NotoSansSignWriting where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansSignWritingImpl :: forall r. { | r } -> FontConfig

notoSansSignWriting :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansSignWriting = notoSansSignWritingImpl
