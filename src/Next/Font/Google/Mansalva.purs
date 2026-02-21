module Next.Font.Google.Mansalva where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mansalvaImpl :: forall r. { | r } -> FontConfig

mansalva :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mansalva = mansalvaImpl
