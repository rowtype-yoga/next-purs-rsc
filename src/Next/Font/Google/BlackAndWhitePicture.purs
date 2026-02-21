module Next.Font.Google.BlackAndWhitePicture where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import blackAndWhitePictureImpl :: forall r. { | r } -> FontConfig

blackAndWhitePicture :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
blackAndWhitePicture = blackAndWhitePictureImpl
