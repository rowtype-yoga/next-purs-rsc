module Next.Font.Google.Commissioner where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import commissionerImpl :: forall r. { | r } -> FontConfig

commissioner :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
commissioner = commissionerImpl
