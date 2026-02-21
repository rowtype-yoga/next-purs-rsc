module Next.Font.Google.Solway where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import solwayImpl :: forall r. { | r } -> FontConfig

solway :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
solway = solwayImpl
