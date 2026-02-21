module Next.Font.Google.CherryCreamSoda where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cherryCreamSodaImpl :: forall r. { | r } -> FontConfig

cherryCreamSoda :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cherryCreamSoda = cherryCreamSodaImpl
