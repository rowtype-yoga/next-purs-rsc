module Next.Font.Google.KonkhmerSleokchher where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import konkhmerSleokchherImpl :: forall r. { | r } -> FontConfig

konkhmerSleokchher :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
konkhmerSleokchher = konkhmerSleokchherImpl
