module Next.Font.Google.Licorice where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import licoriceImpl :: forall r. { | r } -> FontConfig

licorice :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
licorice = licoriceImpl
