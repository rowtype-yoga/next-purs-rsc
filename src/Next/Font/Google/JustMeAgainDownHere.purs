module Next.Font.Google.JustMeAgainDownHere where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import justMeAgainDownHereImpl :: forall r. { | r } -> FontConfig

justMeAgainDownHere :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
justMeAgainDownHere = justMeAgainDownHereImpl
