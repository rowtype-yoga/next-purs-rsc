module Next.Font.Google.ZenKakuGothicAntique where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import zenKakuGothicAntiqueImpl :: forall r. { | r } -> FontConfig

zenKakuGothicAntique :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
zenKakuGothicAntique = zenKakuGothicAntiqueImpl
