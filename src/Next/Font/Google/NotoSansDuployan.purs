module Next.Font.Google.NotoSansDuployan where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansDuployanImpl :: forall r. { | r } -> FontConfig

notoSansDuployan :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansDuployan = notoSansDuployanImpl
