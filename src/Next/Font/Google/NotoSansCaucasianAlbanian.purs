module Next.Font.Google.NotoSansCaucasianAlbanian where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansCaucasianAlbanianImpl :: forall r. { | r } -> FontConfig

notoSansCaucasianAlbanian :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansCaucasianAlbanian = notoSansCaucasianAlbanianImpl
