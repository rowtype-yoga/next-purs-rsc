module Next.Font.Google.RubikBubbles where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rubikBubblesImpl :: forall r. { | r } -> FontConfig

rubikBubbles :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rubikBubbles = rubikBubblesImpl
