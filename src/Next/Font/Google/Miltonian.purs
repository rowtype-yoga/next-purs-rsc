module Next.Font.Google.Miltonian where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import miltonianImpl :: forall r. { | r } -> FontConfig

miltonian :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
miltonian = miltonianImpl
