module Next.Font.Google.Phetsarath where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import phetsarathImpl :: forall r. { | r } -> FontConfig

phetsarath :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
phetsarath = phetsarathImpl
