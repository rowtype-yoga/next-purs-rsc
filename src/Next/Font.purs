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
