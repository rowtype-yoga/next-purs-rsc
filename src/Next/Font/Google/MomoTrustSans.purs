module Next.Font.Google.MomoTrustSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import momoTrustSansImpl :: forall r. { | r } -> FontConfig

momoTrustSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
momoTrustSans = momoTrustSansImpl
