module Next.Font
  ( FontConfig
  , fontClassName
  , fontStyle
  , fontVariable
  , FontStyle
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)

foreign import data FontConfig :: Type

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

foreign import _fontClassName :: FontConfig -> String
fontClassName :: FontConfig -> String
fontClassName = _fontClassName

foreign import _fontStyle :: FontConfig -> FontStyleImpl
fontStyle :: FontConfig -> FontStyle
fontStyle fc = do
  let s = _fontStyle fc
  { fontFamily: s.fontFamily
  , fontWeight: toMaybe s.fontWeight
  , fontStyle: toMaybe s.fontStyle
  }

foreign import _fontVariable :: FontConfig -> Nullable String
fontVariable :: FontConfig -> Maybe String
fontVariable = toMaybe <<< _fontVariable
