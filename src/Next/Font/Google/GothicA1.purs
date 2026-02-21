module Next.Font.Google.GothicA1 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gothicA1Impl :: forall r. { | r } -> FontConfig

gothicA1 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gothicA1 = gothicA1Impl
