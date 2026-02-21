module Next.Font.Google.FiraSansExtraCondensed where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import firaSansExtraCondensedImpl :: forall r. { | r } -> FontConfig

firaSansExtraCondensed :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
firaSansExtraCondensed = firaSansExtraCondensedImpl
