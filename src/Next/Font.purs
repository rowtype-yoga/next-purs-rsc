module Next.Font
  ( FontConfig
  , fontClassName
  , fontStyle
  , fontVariable
  , FontStyle
  , GoogleFontOptions
  , LocalFontOptions
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)

foreign import data FontConfig :: Type

foreign import fontClassName :: FontConfig -> String

foreign import fontStyleImpl :: FontConfig -> FontStyleImpl
fontStyle :: FontConfig -> FontStyle
fontStyle fc = do
  let s = fontStyleImpl fc
  { fontFamily: s.fontFamily
  , fontWeight: toMaybe s.fontWeight
  , fontStyle: toMaybe s.fontStyle
  }

foreign import fontVariableImpl :: FontConfig -> Nullable String
fontVariable :: FontConfig -> Maybe String
fontVariable = toMaybe <<< fontVariableImpl

type FontStyle =
  { fontFamily :: String
  , fontWeight :: Maybe String
  , fontStyle :: Maybe String
  }

type FontStyleImpl =
  { fontFamily :: String
  , fontWeight :: Nullable String
  , fontStyle :: Nullable String
  }

type GoogleFontOptions =
  ( weight :: Array String
  , style :: Array String
  , display :: String
  , variable :: String
  , preload :: Boolean
  , fallback :: Array String
  , adjustFontFallback :: Boolean
  , subsets :: Array String
  , axes :: Array String
  )

type LocalFontOptions =
  ( src :: Array { path :: String, weight :: String, style :: String }
  , display :: String
  , weight :: String
  , style :: String
  , variable :: String
  , preload :: Boolean
  , fallback :: Array String
  , adjustFontFallback :: String
  , declarations :: Array { prop :: String, value :: String }
  )
