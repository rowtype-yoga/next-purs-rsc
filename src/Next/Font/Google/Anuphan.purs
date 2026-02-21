module Next.Font.Google.Anuphan where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import anuphanImpl :: forall r. { | r } -> FontConfig

anuphan :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
anuphan = anuphanImpl
