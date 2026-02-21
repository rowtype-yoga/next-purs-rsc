module Next.Font.Google.Bentham where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import benthamImpl :: forall r. { | r } -> FontConfig

bentham :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bentham = benthamImpl
