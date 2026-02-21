module Next.Font.Google.UoqMunThenKhung where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import uoqMunThenKhungImpl :: forall r. { | r } -> FontConfig

uoqMunThenKhung :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
uoqMunThenKhung = uoqMunThenKhungImpl
