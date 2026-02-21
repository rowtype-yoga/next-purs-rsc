module Next.Font.Google.SairaSemiCondensed where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sairaSemiCondensedImpl :: forall r. { | r } -> FontConfig

sairaSemiCondensed :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sairaSemiCondensed = sairaSemiCondensedImpl
