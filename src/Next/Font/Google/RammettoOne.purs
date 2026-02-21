module Next.Font.Google.RammettoOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rammettoOneImpl :: forall r. { | r } -> FontConfig

rammettoOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rammettoOne = rammettoOneImpl
