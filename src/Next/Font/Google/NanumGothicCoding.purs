module Next.Font.Google.NanumGothicCoding where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import nanumGothicCodingImpl :: forall r. { | r } -> FontConfig

nanumGothicCoding :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
nanumGothicCoding = nanumGothicCodingImpl
