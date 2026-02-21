module Next.Font.Google.LovedbytheKing where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lovedbytheKingImpl :: forall r. { | r } -> FontConfig

lovedbytheKing :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lovedbytheKing = lovedbytheKingImpl
