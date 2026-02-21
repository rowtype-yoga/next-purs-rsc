module Next.Font.Google.Pacifico where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import pacificoImpl :: forall r. { | r } -> FontConfig

pacifico :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
pacifico = pacificoImpl
