module Next.Font.Google.MedievalSharp where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import medievalSharpImpl :: forall r. { | r } -> FontConfig

medievalSharp :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
medievalSharp = medievalSharpImpl
