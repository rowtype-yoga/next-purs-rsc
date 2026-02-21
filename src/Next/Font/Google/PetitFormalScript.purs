module Next.Font.Google.PetitFormalScript where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import petitFormalScriptImpl :: forall r. { | r } -> FontConfig

petitFormalScript :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
petitFormalScript = petitFormalScriptImpl
