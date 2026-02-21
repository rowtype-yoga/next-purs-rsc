module Next.Font.Google.RampartOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rampartOneImpl :: forall r. { | r } -> FontConfig

rampartOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rampartOne = rampartOneImpl
