module Next.Headers
  ( Headers
  , HeaderName(..)
  , HeaderValue(..)
  , headers
  , headersGet
  , headersHas
  , Cookies
  , CookieName(..)
  , CookieValue(..)
  , Cookie
  , cookies
  , cookiesGet
  , cookiesGetAll
  , cookiesHas
  , cookiesSet
  , cookiesSetObj
  , cookiesDelete
  ) where

import Prelude

import Control.Promise (Promise)
import Control.Promise as Promise
import Data.Maybe (Maybe)
import Data.Newtype (class Newtype)
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import Effect.Aff (Aff)
import Effect.Uncurried (EffectFn2, EffectFn3, runEffectFn2, runEffectFn3)

--------------------------------------------------------------------------------
-- Types
--------------------------------------------------------------------------------

newtype HeaderName = HeaderName String
derive instance Newtype HeaderName _
derive newtype instance Eq HeaderName
derive newtype instance Ord HeaderName
derive newtype instance Show HeaderName

newtype HeaderValue = HeaderValue String
derive instance Newtype HeaderValue _
derive newtype instance Eq HeaderValue
derive newtype instance Ord HeaderValue
derive newtype instance Show HeaderValue

newtype CookieName = CookieName String
derive instance Newtype CookieName _
derive newtype instance Eq CookieName
derive newtype instance Ord CookieName
derive newtype instance Show CookieName

newtype CookieValue = CookieValue String
derive instance Newtype CookieValue _
derive newtype instance Eq CookieValue
derive newtype instance Ord CookieValue
derive newtype instance Show CookieValue

type Cookie = { name :: CookieName, value :: CookieValue }

foreign import data Headers :: Type
foreign import data Cookies :: Type

--------------------------------------------------------------------------------
-- Headers
--------------------------------------------------------------------------------

foreign import _headersImpl :: Effect (Promise Headers)
headers :: Aff Headers
headers = Promise.toAffE _headersImpl

foreign import _headersGet :: EffectFn2 Headers HeaderName (Nullable HeaderValue)
headersGet :: Headers -> HeaderName -> Effect (Maybe HeaderValue)
headersGet h name = toMaybe <$> runEffectFn2 _headersGet h name

foreign import _headersHas :: EffectFn2 Headers HeaderName Boolean
headersHas :: Headers -> HeaderName -> Effect Boolean
headersHas = runEffectFn2 _headersHas

--------------------------------------------------------------------------------
-- Cookies
--------------------------------------------------------------------------------

foreign import _cookiesImpl :: Effect (Promise Cookies)
cookies :: Aff Cookies
cookies = Promise.toAffE _cookiesImpl

foreign import _cookiesGet :: EffectFn2 Cookies CookieName (Nullable Cookie)
cookiesGet :: Cookies -> CookieName -> Effect (Maybe Cookie)
cookiesGet c name = toMaybe <$> runEffectFn2 _cookiesGet c name

foreign import _cookiesGetAll :: EffectFn2 Cookies Unit (Array Cookie)
cookiesGetAll :: Cookies -> Effect (Array Cookie)
cookiesGetAll c = runEffectFn2 _cookiesGetAll c unit

foreign import _cookiesHas :: EffectFn2 Cookies CookieName Boolean
cookiesHas :: Cookies -> CookieName -> Effect Boolean
cookiesHas = runEffectFn2 _cookiesHas

foreign import _cookiesSet :: EffectFn3 Cookies CookieName CookieValue Unit
cookiesSet :: Cookies -> CookieName -> CookieValue -> Effect Unit
cookiesSet = runEffectFn3 _cookiesSet

foreign import _cookiesSetObj :: forall r. EffectFn2 Cookies { name :: CookieName, value :: CookieValue | r } Unit
cookiesSetObj :: forall r. Cookies -> { name :: CookieName, value :: CookieValue | r } -> Effect Unit
cookiesSetObj = runEffectFn2 _cookiesSetObj

foreign import _cookiesDelete :: EffectFn2 Cookies CookieName Unit
cookiesDelete :: Cookies -> CookieName -> Effect Unit
cookiesDelete = runEffectFn2 _cookiesDelete
