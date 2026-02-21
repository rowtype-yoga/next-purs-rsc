module Next.Font.Google.Monomakh where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import monomakhImpl :: forall r. { | r } -> FontConfig

monomakh :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
monomakh = monomakhImpl
