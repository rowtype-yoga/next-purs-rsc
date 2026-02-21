module Next.Font.Google.SulphurPoint where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sulphurPointImpl :: forall r. { | r } -> FontConfig

sulphurPoint :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sulphurPoint = sulphurPointImpl
