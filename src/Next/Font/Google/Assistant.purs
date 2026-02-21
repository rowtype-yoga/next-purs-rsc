module Next.Font.Google.Assistant where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import assistantImpl :: forall r. { | r } -> FontConfig

assistant :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
assistant = assistantImpl
