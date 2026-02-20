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
import Data.Newtype (class Newtype, un)
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import Effect.Aff (Aff)
import Effect.Uncurried (EffectFn2, EffectFn3, runEffectFn2, runEffectFn3)
import Unsafe.Coerce (unsafeCoerce)

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

--------------------------------------------------------------------------------
-- FFI
--------------------------------------------------------------------------------

foreign import data Headers :: Type
foreign import data Cookies :: Type

type CookieImpl = { name :: String, value :: String }

foreign import _headersImpl :: Effect (Promise Headers)
foreign import _cookiesImpl :: Effect (Promise Cookies)

foreign import _headersGet :: EffectFn2 Headers String (Nullable String)
foreign import _headersHas :: EffectFn2 Headers String Boolean

foreign import _cookiesGet :: EffectFn2 Cookies String (Nullable CookieImpl)
foreign import _cookiesGetAll :: EffectFn2 Cookies Unit (Array CookieImpl)
foreign import _cookiesHas :: EffectFn2 Cookies String Boolean
foreign import _cookiesSet :: EffectFn3 Cookies String String Unit
foreign import _cookiesSetObj :: forall r. EffectFn2 Cookies { | r } Unit
foreign import _cookiesDelete :: EffectFn2 Cookies String Unit

--------------------------------------------------------------------------------
-- Headers
--------------------------------------------------------------------------------

headers :: Aff Headers
headers = Promise.toAffE _headersImpl

headersGet :: Headers -> HeaderName -> Effect (Maybe HeaderValue)
headersGet h name = map HeaderValue <$> (toMaybe <$> runEffectFn2 _headersGet h (un HeaderName name))

headersHas :: Headers -> HeaderName -> Effect Boolean
headersHas h name = runEffectFn2 _headersHas h (un HeaderName name)

--------------------------------------------------------------------------------
-- Cookies
--------------------------------------------------------------------------------

cookies :: Aff Cookies
cookies = Promise.toAffE _cookiesImpl

cookiesGet :: Cookies -> CookieName -> Effect (Maybe Cookie)
cookiesGet c name = map toCookie <$> (toMaybe <$> runEffectFn2 _cookiesGet c (un CookieName name))

cookiesGetAll :: Cookies -> Effect (Array Cookie)
cookiesGetAll c = map toCookie <$> runEffectFn2 _cookiesGetAll c unit

cookiesHas :: Cookies -> CookieName -> Effect Boolean
cookiesHas c name = runEffectFn2 _cookiesHas c (un CookieName name)

cookiesSet :: Cookies -> CookieName -> CookieValue -> Effect Unit
cookiesSet c name value = runEffectFn3 _cookiesSet c (un CookieName name) (un CookieValue value)

cookiesSetObj :: forall r. Cookies -> { name :: CookieName, value :: CookieValue | r } -> Effect Unit
cookiesSetObj c obj = runEffectFn2 _cookiesSetObj c (unsafeCoerce obj)

cookiesDelete :: Cookies -> CookieName -> Effect Unit
cookiesDelete c name = runEffectFn2 _cookiesDelete c (un CookieName name)

toCookie :: CookieImpl -> Cookie
toCookie r = { name: CookieName r.name, value: CookieValue r.value }
