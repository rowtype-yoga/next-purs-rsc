module Next.Font.Google.LiuJianMaoCao where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import liuJianMaoCaoImpl :: forall r. { | r } -> FontConfig

liuJianMaoCao :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
liuJianMaoCao = liuJianMaoCaoImpl
