module Next.Font.Google.Whisper where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import whisperImpl :: forall r. { | r } -> FontConfig

whisper :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
whisper = whisperImpl
