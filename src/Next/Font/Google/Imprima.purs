module Next.Font.Google.Imprima where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import imprimaImpl :: forall r. { | r } -> FontConfig

imprima :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
imprima = imprimaImpl
