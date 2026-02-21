module Next.Font.Google.Epilogue where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import epilogueImpl :: forall r. { | r } -> FontConfig

epilogue :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
epilogue = epilogueImpl
