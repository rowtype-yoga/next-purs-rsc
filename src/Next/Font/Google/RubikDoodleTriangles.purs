module Next.Font.Google.RubikDoodleTriangles where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rubikDoodleTrianglesImpl :: forall r. { | r } -> FontConfig

rubikDoodleTriangles :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rubikDoodleTriangles = rubikDoodleTrianglesImpl
