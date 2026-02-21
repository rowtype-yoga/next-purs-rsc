module Next.Font.Google.GrenzeGotisch where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import grenzeGotischImpl :: forall r. { | r } -> FontConfig

grenzeGotisch :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
grenzeGotisch = grenzeGotischImpl
