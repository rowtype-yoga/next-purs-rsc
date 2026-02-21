module Next.Font.Google.Lunasima where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lunasimaImpl :: forall r. { | r } -> FontConfig

lunasima :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lunasima = lunasimaImpl
