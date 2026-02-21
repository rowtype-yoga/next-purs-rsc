module Next.Font.Google.TenaliRamakrishna where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tenaliRamakrishnaImpl :: forall r. { | r } -> FontConfig

tenaliRamakrishna :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tenaliRamakrishna = tenaliRamakrishnaImpl
