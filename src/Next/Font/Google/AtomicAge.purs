module Next.Font.Google.AtomicAge where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import atomicAgeImpl :: forall r. { | r } -> FontConfig

atomicAge :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
atomicAge = atomicAgeImpl
