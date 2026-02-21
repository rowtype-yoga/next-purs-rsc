module Next.Font.Google.Arizonia where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import arizoniaImpl :: forall r. { | r } -> FontConfig

arizonia :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
arizonia = arizoniaImpl
