module Next.Font.Google.IbarraRealNova where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ibarraRealNovaImpl :: forall r. { | r } -> FontConfig

ibarraRealNova :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ibarraRealNova = ibarraRealNovaImpl
