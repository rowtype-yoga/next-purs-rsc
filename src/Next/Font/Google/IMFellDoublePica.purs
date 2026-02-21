module Next.Font.Google.IMFellDoublePica where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import iMFellDoublePicaImpl :: forall r. { | r } -> FontConfig

iMFellDoublePica :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
iMFellDoublePica = iMFellDoublePicaImpl
