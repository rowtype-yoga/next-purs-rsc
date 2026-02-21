module Next.Font.Google.Unbounded where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import unboundedImpl :: forall r. { | r } -> FontConfig

unbounded :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
unbounded = unboundedImpl
