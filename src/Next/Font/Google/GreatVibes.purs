module Next.Font.Google.GreatVibes where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import greatVibesImpl :: forall r. { | r } -> FontConfig

greatVibes :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
greatVibes = greatVibesImpl
