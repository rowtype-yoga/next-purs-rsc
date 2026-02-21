module Next.Font.Google.FrederickatheGreat where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import frederickatheGreatImpl :: forall r. { | r } -> FontConfig

frederickatheGreat :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
frederickatheGreat = frederickatheGreatImpl
