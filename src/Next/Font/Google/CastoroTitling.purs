module Next.Font.Google.CastoroTitling where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import castoroTitlingImpl :: forall r. { | r } -> FontConfig

castoroTitling :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
castoroTitling = castoroTitlingImpl
