module Next.Font.Google.OdorMeanChey where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import odorMeanCheyImpl :: forall r. { | r } -> FontConfig

odorMeanChey :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
odorMeanChey = odorMeanCheyImpl
