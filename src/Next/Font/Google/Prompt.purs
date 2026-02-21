module Next.Font.Google.Prompt where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import promptImpl :: forall r. { | r } -> FontConfig

prompt :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
prompt = promptImpl
