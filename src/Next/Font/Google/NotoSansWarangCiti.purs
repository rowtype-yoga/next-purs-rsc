module Next.Font.Google.NotoSansWarangCiti where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansWarangCitiImpl :: forall r. { | r } -> FontConfig

notoSansWarangCiti :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansWarangCiti = notoSansWarangCitiImpl
