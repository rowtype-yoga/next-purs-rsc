module Next.Font.Google.IMFellDoublePicaSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import iMFellDoublePicaSCImpl :: forall r. { | r } -> FontConfig

iMFellDoublePicaSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
iMFellDoublePicaSC = iMFellDoublePicaSCImpl
