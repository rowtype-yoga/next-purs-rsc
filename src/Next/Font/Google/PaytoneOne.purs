module Next.Font.Google.PaytoneOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import paytoneOneImpl :: forall r. { | r } -> FontConfig

paytoneOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
paytoneOne = paytoneOneImpl
