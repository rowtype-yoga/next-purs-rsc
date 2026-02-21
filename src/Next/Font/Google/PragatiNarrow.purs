module Next.Font.Google.PragatiNarrow where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import pragatiNarrowImpl :: forall r. { | r } -> FontConfig

pragatiNarrow :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
pragatiNarrow = pragatiNarrowImpl
