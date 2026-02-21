module Next.Font.Google.BigShoulders where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bigShouldersImpl :: forall r. { | r } -> FontConfig

bigShoulders :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bigShoulders = bigShouldersImpl
