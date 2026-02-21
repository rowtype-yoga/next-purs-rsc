module Next.Font.Google.FacultyGlyphic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import facultyGlyphicImpl :: forall r. { | r } -> FontConfig

facultyGlyphic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
facultyGlyphic = facultyGlyphicImpl
