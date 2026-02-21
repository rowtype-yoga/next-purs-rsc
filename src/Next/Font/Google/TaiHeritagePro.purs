module Next.Font.Google.TaiHeritagePro where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import taiHeritageProImpl :: forall r. { | r } -> FontConfig

taiHeritagePro :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
taiHeritagePro = taiHeritageProImpl
