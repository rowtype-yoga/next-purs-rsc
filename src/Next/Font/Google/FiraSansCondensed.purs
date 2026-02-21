module Next.Font.Google.FiraSansCondensed where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import firaSansCondensedImpl :: forall r. { | r } -> FontConfig

firaSansCondensed :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
firaSansCondensed = firaSansCondensedImpl
