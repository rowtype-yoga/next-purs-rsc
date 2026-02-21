module Next.Font.Google.AlegreyaSansSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import alegreyaSansSCImpl :: forall r. { | r } -> FontConfig

alegreyaSansSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
alegreyaSansSC = alegreyaSansSCImpl
