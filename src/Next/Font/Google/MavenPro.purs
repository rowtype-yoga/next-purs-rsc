module Next.Font.Google.MavenPro where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mavenProImpl :: forall r. { | r } -> FontConfig

mavenPro :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mavenPro = mavenProImpl
