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
  , CookieSetOptions
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
import Effect.Uncurried (EffectFn1, EffectFn2, EffectFn3, runEffectFn1, runEffectFn2, runEffectFn3)
import Prim.Row as Row

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

foreign import headersImpl :: Effect (Promise Headers)
headers :: Aff Headers
headers = Promise.toAffE headersImpl

foreign import headersGetImpl :: EffectFn2 Headers HeaderName (Nullable HeaderValue)
headersGet :: Headers -> HeaderName -> Effect (Maybe HeaderValue)
headersGet h name = toMaybe <$> runEffectFn2 headersGetImpl h name

foreign import headersHasImpl :: EffectFn2 Headers HeaderName Boolean
headersHas :: Headers -> HeaderName -> Effect Boolean
headersHas = runEffectFn2 headersHasImpl

--------------------------------------------------------------------------------
-- Cookies
--------------------------------------------------------------------------------

foreign import cookiesImpl :: Effect (Promise Cookies)
cookies :: Aff Cookies
cookies = Promise.toAffE cookiesImpl

foreign import cookiesGetImpl :: EffectFn2 Cookies CookieName (Nullable Cookie)
cookiesGet :: Cookies -> CookieName -> Effect (Maybe Cookie)
cookiesGet c name = toMaybe <$> runEffectFn2 cookiesGetImpl c name

foreign import cookiesGetAllImpl :: EffectFn1 Cookies (Array Cookie)
cookiesGetAll :: Cookies -> Effect (Array Cookie)
cookiesGetAll = runEffectFn1 cookiesGetAllImpl

foreign import cookiesHasImpl :: EffectFn2 Cookies CookieName Boolean
cookiesHas :: Cookies -> CookieName -> Effect Boolean
cookiesHas = runEffectFn2 cookiesHasImpl

foreign import cookiesSetImpl :: EffectFn3 Cookies CookieName CookieValue Unit
cookiesSet :: Cookies -> CookieName -> CookieValue -> Effect Unit
cookiesSet = runEffectFn3 cookiesSetImpl

type CookieSetOptions =
  ( name :: CookieName
  , value :: CookieValue
  , domain :: String
  , httpOnly :: Boolean
  , maxAge :: Int
  , path :: String
  , partitioned :: Boolean
  , priority :: String
  , sameSite :: String
  , secure :: Boolean
  )

foreign import cookiesSetObjImpl :: forall a. EffectFn2 Cookies { | a } Unit
cookiesSetObj
  :: forall opts opts_ rest1 rest2
   . Row.Cons "name" CookieName rest1 opts
  => Row.Cons "value" CookieValue rest2 opts
  => Row.Union opts opts_ CookieSetOptions
  => Cookies -> { | opts } -> Effect Unit
cookiesSetObj = runEffectFn2 cookiesSetObjImpl

foreign import cookiesDeleteImpl :: EffectFn2 Cookies CookieName Unit
cookiesDelete :: Cookies -> CookieName -> Effect Unit
cookiesDelete = runEffectFn2 cookiesDeleteImpl
