module Next.Headers
  ( Headers
  , headers
  , headersGet
  , headersHas
  , Cookies
  , Cookie
  , cookies
  , cookiesGet
  , cookiesGetAll
  , cookiesHas
  ) where

import Prelude

import Control.Promise (Promise)
import Control.Promise as Promise
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import Effect.Aff (Aff)
import Effect.Uncurried (EffectFn2, runEffectFn2)

--------------------------------------------------------------------------------
-- FFI
--------------------------------------------------------------------------------

foreign import data Headers :: Type
foreign import data Cookies :: Type

foreign import _headersImpl :: Effect (Promise Headers)
foreign import _cookiesImpl :: Effect (Promise Cookies)

foreign import _headersGet :: EffectFn2 Headers String (Nullable String)
foreign import _headersHas :: EffectFn2 Headers String Boolean

foreign import _cookiesGet :: EffectFn2 Cookies String (Nullable CookieImpl)
foreign import _cookiesGetAll :: EffectFn2 Cookies Unit (Array CookieImpl)
foreign import _cookiesHas :: EffectFn2 Cookies String Boolean

--------------------------------------------------------------------------------
-- Headers
--------------------------------------------------------------------------------

headers :: Aff Headers
headers = Promise.toAffE _headersImpl

headersGet :: Headers -> String -> Effect (Maybe String)
headersGet h key = toMaybe <$> runEffectFn2 _headersGet h key

headersHas :: Headers -> String -> Effect Boolean
headersHas = runEffectFn2 _headersHas

--------------------------------------------------------------------------------
-- Cookies
--------------------------------------------------------------------------------

type Cookie = { name :: String, value :: String }
type CookieImpl = { name :: String, value :: String }

cookies :: Aff Cookies
cookies = Promise.toAffE _cookiesImpl

cookiesGet :: Cookies -> String -> Effect (Maybe Cookie)
cookiesGet c name = toMaybe <$> runEffectFn2 _cookiesGet c name

cookiesGetAll :: Cookies -> Effect (Array Cookie)
cookiesGetAll c = runEffectFn2 _cookiesGetAll c unit

cookiesHas :: Cookies -> String -> Effect Boolean
cookiesHas = runEffectFn2 _cookiesHas
