module Next.Request
  ( NextRequest
  , requestMethod
  , requestUrl
  , requestNextUrl
  , requestHeaders
  , requestCookies
  , requestIp
  , requestGeo
  , NextUrl
  , nextUrlPathname
  , nextUrlSearchParams
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
import Data.Newtype (un)
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import Effect.Aff (Aff)
import Foreign (Foreign)
import Next.Action (FormData)
import Next.Headers (Headers, CookieName(..), CookieValue(..), Cookie)
import Next.Navigation (SearchParams)

--------------------------------------------------------------------------------
-- Types
--------------------------------------------------------------------------------

foreign import data NextRequest :: Type
foreign import data NextUrl :: Type
foreign import data RequestCookies :: Type

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

type RequestCookieImpl = { name :: String, value :: String }

--------------------------------------------------------------------------------
-- FFI
--------------------------------------------------------------------------------

foreign import _requestMethod :: NextRequest -> String
foreign import _requestUrl :: NextRequest -> String
foreign import _requestNextUrl :: NextRequest -> NextUrl
foreign import _requestHeaders :: NextRequest -> Headers
foreign import _requestCookies :: NextRequest -> RequestCookies
foreign import _requestIp :: NextRequest -> Nullable String
foreign import _requestGeo :: NextRequest -> Nullable GeoImpl

foreign import _nextUrlPathname :: NextUrl -> String
foreign import _nextUrlSearchParams :: NextUrl -> SearchParams
foreign import _nextUrlOrigin :: NextUrl -> String
foreign import _nextUrlHost :: NextUrl -> String
foreign import _nextUrlPort :: NextUrl -> String
foreign import _nextUrlProtocol :: NextUrl -> String
foreign import _nextUrlHash :: NextUrl -> String

foreign import _requestJson :: NextRequest -> Effect (Promise Foreign)
foreign import _requestText :: NextRequest -> Effect (Promise String)
foreign import _requestFormData :: NextRequest -> Effect (Promise FormData)

foreign import _requestCookiesGet :: Fn2 RequestCookies String (Nullable RequestCookieImpl)
foreign import _requestCookiesGetAll :: RequestCookies -> Array RequestCookieImpl
foreign import _requestCookiesHas :: Fn2 RequestCookies String Boolean

--------------------------------------------------------------------------------
-- NextRequest accessors
--------------------------------------------------------------------------------

requestMethod :: NextRequest -> String
requestMethod = _requestMethod

requestUrl :: NextRequest -> String
requestUrl = _requestUrl

requestNextUrl :: NextRequest -> NextUrl
requestNextUrl = _requestNextUrl

requestHeaders :: NextRequest -> Headers
requestHeaders = _requestHeaders

requestCookies :: NextRequest -> RequestCookies
requestCookies = _requestCookies

requestIp :: NextRequest -> Maybe String
requestIp = toMaybe <<< _requestIp

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

nextUrlPathname :: NextUrl -> String
nextUrlPathname = _nextUrlPathname

nextUrlSearchParams :: NextUrl -> SearchParams
nextUrlSearchParams = _nextUrlSearchParams

nextUrlOrigin :: NextUrl -> String
nextUrlOrigin = _nextUrlOrigin

nextUrlHost :: NextUrl -> String
nextUrlHost = _nextUrlHost

nextUrlPort :: NextUrl -> String
nextUrlPort = _nextUrlPort

nextUrlProtocol :: NextUrl -> String
nextUrlProtocol = _nextUrlProtocol

nextUrlHash :: NextUrl -> String
nextUrlHash = _nextUrlHash

--------------------------------------------------------------------------------
-- Request body
--------------------------------------------------------------------------------

requestJson :: NextRequest -> Aff Foreign
requestJson req = Promise.toAffE (_requestJson req)

requestText :: NextRequest -> Aff String
requestText req = Promise.toAffE (_requestText req)

requestFormData :: NextRequest -> Aff FormData
requestFormData req = Promise.toAffE (_requestFormData req)

--------------------------------------------------------------------------------
-- RequestCookies (read-only cookie jar from request)
--------------------------------------------------------------------------------

requestCookiesGet :: RequestCookies -> CookieName -> Maybe Cookie
requestCookiesGet c name = map toCookie (toMaybe (runFn2 _requestCookiesGet c (un CookieName name)))

requestCookiesGetAll :: RequestCookies -> Array Cookie
requestCookiesGetAll c = map toCookie (_requestCookiesGetAll c)

requestCookiesHas :: RequestCookies -> CookieName -> Boolean
requestCookiesHas c name = runFn2 _requestCookiesHas c (un CookieName name)

toCookie :: RequestCookieImpl -> Cookie
toCookie r = { name: CookieName r.name, value: CookieValue r.value }
