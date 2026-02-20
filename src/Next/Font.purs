module Next.Font
  ( FontConfig
  , fontClassName
  , fontStyle
  , fontVariable
  , FontStyle
  ) where

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)

--------------------------------------------------------------------------------
-- Types
--------------------------------------------------------------------------------

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

--------------------------------------------------------------------------------
-- FFI
--------------------------------------------------------------------------------

foreign import _fontClassName :: FontConfig -> String
foreign import _fontStyle :: FontConfig -> FontStyleImpl
foreign import _fontVariable :: FontConfig -> Nullable String

--------------------------------------------------------------------------------
-- Accessors
--------------------------------------------------------------------------------

fontClassName :: FontConfig -> String
fontClassName = _fontClassName

fontStyle :: FontConfig -> FontStyle
fontStyle fc = do
  let s = _fontStyle fc
  { fontFamily: s.fontFamily
  , fontWeight: toMaybe s.fontWeight
  , fontStyle: toMaybe s.fontStyle
  }

fontVariable :: FontConfig -> Maybe String
fontVariable = toMaybe <<< _fontVariable
