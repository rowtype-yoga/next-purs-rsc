module Next.Font.Google.MaidenOrange where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import maidenOrangeImpl :: forall r. { | r } -> FontConfig

maidenOrange :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
maidenOrange = maidenOrangeImpl
