module Next.Font.Google.MomoTrustDisplay where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import momoTrustDisplayImpl :: forall r. { | r } -> FontConfig

momoTrustDisplay :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
momoTrustDisplay = momoTrustDisplayImpl
