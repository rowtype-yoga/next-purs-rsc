module Next.Font.Google.Tuffy where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tuffyImpl :: forall r. { | r } -> FontConfig

tuffy :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tuffy = tuffyImpl
