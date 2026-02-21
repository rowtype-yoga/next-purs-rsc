module Next.Font.Google.UnifrakturCook where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import unifrakturCookImpl :: forall r. { | r } -> FontConfig

unifrakturCook :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
unifrakturCook = unifrakturCookImpl
