module Next.Font.Google.PassionsConflict where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import passionsConflictImpl :: forall r. { | r } -> FontConfig

passionsConflict :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
passionsConflict = passionsConflictImpl
