module Next.Font.Google.Itim where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import itimImpl :: forall r. { | r } -> FontConfig

itim :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
itim = itimImpl
