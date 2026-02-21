module Next.Font.Google.HindVadodara where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import hindVadodaraImpl :: forall r. { | r } -> FontConfig

hindVadodara :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
hindVadodara = hindVadodaraImpl
