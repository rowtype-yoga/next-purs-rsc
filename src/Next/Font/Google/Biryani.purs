module Next.Font.Google.Biryani where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import biryaniImpl :: forall r. { | r } -> FontConfig

biryani :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
biryani = biryaniImpl
