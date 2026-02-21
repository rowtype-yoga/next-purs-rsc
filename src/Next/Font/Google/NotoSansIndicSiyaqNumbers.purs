module Next.Font.Google.NotoSansIndicSiyaqNumbers where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansIndicSiyaqNumbersImpl :: forall r. { | r } -> FontConfig

notoSansIndicSiyaqNumbers :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansIndicSiyaqNumbers = notoSansIndicSiyaqNumbersImpl
