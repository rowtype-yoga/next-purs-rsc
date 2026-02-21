module Next.Font.Google.LibertinusKeyboard where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import libertinusKeyboardImpl :: forall r. { | r } -> FontConfig

libertinusKeyboard :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
libertinusKeyboard = libertinusKeyboardImpl
