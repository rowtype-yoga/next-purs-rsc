module Next.Font.Google.QwitcherGrypen where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import qwitcherGrypenImpl :: forall r. { | r } -> FontConfig

qwitcherGrypen :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
qwitcherGrypen = qwitcherGrypenImpl
