module Next.Font.Google.PlusJakartaSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import plusJakartaSansImpl :: forall r. { | r } -> FontConfig

plusJakartaSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
plusJakartaSans = plusJakartaSansImpl
