module Next.Font.Google.ComicRelief where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import comicReliefImpl :: forall r. { | r } -> FontConfig

comicRelief :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
comicRelief = comicReliefImpl
