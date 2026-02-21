module Next.Font.Google.SourceCodePro where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sourceCodeProImpl :: forall r. { | r } -> FontConfig

sourceCodePro :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sourceCodePro = sourceCodeProImpl
