module Next.Request
  ( module Next
  , requestMethod
  , requestUrl
  , requestNextUrl
  , requestHeaders
  , requestCookies
  , requestIp
  , requestGeo
  , NextUrl
  , nextUrlPathname
  , NextUrlSearchParams
  , nextUrlSearchParams
  , nextUrlSearchParamsGet
  , nextUrlSearchParamsHas
  , nextUrlOrigin
  , nextUrlHost
  , nextUrlPort
  , nextUrlProtocol
  , nextUrlHash
  , requestJson
  , requestText
  , requestFormData
  , RequestCookies
  , requestCookiesGet
  , requestCookiesGetAll
  , requestCookiesHas
  , Geo
  ) where

import Prelude

import Control.Promise (Promise)
import Control.Promise as Promise
import Data.Function.Uncurried (Fn2, runFn2)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import Effect.Aff (Aff)
import Foreign (Foreign)
import Next (NextRequest)
import Next.Action (FormData)
import Next.Headers (Headers, CookieName, Cookie)

foreign import data NextUrl :: Type
foreign import data RequestCookies :: Type
foreign import data NextUrlSearchParams :: Type

type Geo =
  { city :: Maybe String
  , country :: Maybe String
  , region :: Maybe String
  }

type GeoImpl =
  { city :: Nullable String
  , country :: Nullable String
  , region :: Nullable String
  }

--------------------------------------------------------------------------------
-- NextRequest accessors
--------------------------------------------------------------------------------

foreign import _requestMethod :: NextRequest -> String
requestMethod :: NextRequest -> String
requestMethod = _requestMethod

foreign import _requestUrl :: NextRequest -> String
requestUrl :: NextRequest -> String
requestUrl = _requestUrl

foreign import _requestNextUrl :: NextRequest -> NextUrl
requestNextUrl :: NextRequest -> NextUrl
requestNextUrl = _requestNextUrl

foreign import _requestHeaders :: NextRequest -> Headers
requestHeaders :: NextRequest -> Headers
requestHeaders = _requestHeaders

foreign import _requestCookies :: NextRequest -> RequestCookies
requestCookies :: NextRequest -> RequestCookies
requestCookies = _requestCookies

foreign import _requestIp :: NextRequest -> Nullable String
requestIp :: NextRequest -> Maybe String
requestIp = toMaybe <<< _requestIp

foreign import _requestGeo :: NextRequest -> Nullable GeoImpl
requestGeo :: NextRequest -> Maybe Geo
requestGeo req = map toGeo (toMaybe (_requestGeo req))
  where
  toGeo g =
    { city: toMaybe g.city
    , country: toMaybe g.country
    , region: toMaybe g.region
    }

--------------------------------------------------------------------------------
-- NextUrl accessors
--------------------------------------------------------------------------------

foreign import _nextUrlPathname :: NextUrl -> String
nextUrlPathname :: NextUrl -> String
nextUrlPathname = _nextUrlPathname

foreign import _nextUrlSearchParams :: NextUrl -> NextUrlSearchParams
nextUrlSearchParams :: NextUrl -> NextUrlSearchParams
nextUrlSearchParams = _nextUrlSearchParams

foreign import _nextUrlSearchParamsGet :: Fn2 NextUrlSearchParams String (Nullable String)
nextUrlSearchParamsGet :: NextUrlSearchParams -> String -> Maybe String
nextUrlSearchParamsGet sp key = toMaybe (runFn2 _nextUrlSearchParamsGet sp key)

foreign import _nextUrlSearchParamsHas :: Fn2 NextUrlSearchParams String Boolean
nextUrlSearchParamsHas :: NextUrlSearchParams -> String -> Boolean
nextUrlSearchParamsHas = runFn2 _nextUrlSearchParamsHas

foreign import _nextUrlOrigin :: NextUrl -> String
nextUrlOrigin :: NextUrl -> String
nextUrlOrigin = _nextUrlOrigin

foreign import _nextUrlHost :: NextUrl -> String
nextUrlHost :: NextUrl -> String
nextUrlHost = _nextUrlHost

foreign import _nextUrlPort :: NextUrl -> String
nextUrlPort :: NextUrl -> String
nextUrlPort = _nextUrlPort

foreign import _nextUrlProtocol :: NextUrl -> String
nextUrlProtocol :: NextUrl -> String
nextUrlProtocol = _nextUrlProtocol

foreign import _nextUrlHash :: NextUrl -> String
nextUrlHash :: NextUrl -> String
nextUrlHash = _nextUrlHash

--------------------------------------------------------------------------------
-- Request body
--------------------------------------------------------------------------------

foreign import _requestJson :: NextRequest -> Effect (Promise Foreign)
requestJson :: NextRequest -> Aff Foreign
requestJson req = Promise.toAffE (_requestJson req)

foreign import _requestText :: NextRequest -> Effect (Promise String)
requestText :: NextRequest -> Aff String
requestText req = Promise.toAffE (_requestText req)

foreign import _requestFormData :: NextRequest -> Effect (Promise FormData)
requestFormData :: NextRequest -> Aff FormData
requestFormData req = Promise.toAffE (_requestFormData req)

--------------------------------------------------------------------------------
-- RequestCookies (read-only cookie jar from request)
--------------------------------------------------------------------------------

foreign import _requestCookiesGet :: Fn2 RequestCookies CookieName (Nullable Cookie)
requestCookiesGet :: RequestCookies -> CookieName -> Maybe Cookie
requestCookiesGet c name = toMaybe (runFn2 _requestCookiesGet c name)

foreign import _requestCookiesGetAll :: RequestCookies -> Array Cookie
requestCookiesGetAll :: RequestCookies -> Array Cookie
requestCookiesGetAll = _requestCookiesGetAll

foreign import _requestCookiesHas :: Fn2 RequestCookies CookieName Boolean
requestCookiesHas :: RequestCookies -> CookieName -> Boolean
requestCookiesHas = runFn2 _requestCookiesHas
