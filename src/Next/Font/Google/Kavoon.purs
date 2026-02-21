module Next.Font.Google.Kavoon where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kavoonImpl :: forall r. { | r } -> FontConfig

kavoon :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kavoon = kavoonImpl
