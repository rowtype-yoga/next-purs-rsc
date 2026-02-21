module Next.Font.Google.SairaExtraCondensed where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sairaExtraCondensedImpl :: forall r. { | r } -> FontConfig

sairaExtraCondensed :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sairaExtraCondensed = sairaExtraCondensedImpl
