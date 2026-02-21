module Next.Font.Google.Truculenta where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import truculentaImpl :: forall r. { | r } -> FontConfig

truculenta :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
truculenta = truculentaImpl
