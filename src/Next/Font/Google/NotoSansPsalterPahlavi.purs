module Next.Font.Google.NotoSansPsalterPahlavi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansPsalterPahlaviImpl :: forall r. { | r } -> FontConfig

notoSansPsalterPahlavi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansPsalterPahlavi = notoSansPsalterPahlaviImpl
