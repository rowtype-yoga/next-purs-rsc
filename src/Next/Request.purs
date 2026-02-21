module Next.Request
  ( module Next
  , module Method
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
  , UserAgent
  , userAgent
  ) where

import Prelude

import Control.Promise (Promise)
import Control.Promise as Promise
import Data.Either (Either)
import Data.Function.Uncurried (Fn2, runFn2)
import Data.HTTP.Method (Method, CustomMethod, fromString, print) as Method
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Effect.Aff (Aff)
import Effect.Uncurried (EffectFn1, runEffectFn1)
import Foreign (Foreign)
import Next (NextRequest)
import Next.Action (FormData)
import Next.Headers (Headers, CookieName, Cookie)
import Untagged.Union (UndefinedOr)

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

foreign import requestMethodImpl :: NextRequest -> String

requestMethod :: NextRequest -> Either Method.Method Method.CustomMethod
requestMethod = Method.fromString <<< requestMethodImpl
foreign import requestUrl :: NextRequest -> String
foreign import requestNextUrl :: NextRequest -> NextUrl
foreign import requestHeaders :: NextRequest -> Headers
foreign import requestCookies :: NextRequest -> RequestCookies

foreign import requestIpImpl :: NextRequest -> Nullable String
requestIp :: NextRequest -> Maybe String
requestIp = toMaybe <<< requestIpImpl

foreign import requestGeoImpl :: NextRequest -> Nullable GeoImpl
requestGeo :: NextRequest -> Maybe Geo
requestGeo req = map toGeo (toMaybe (requestGeoImpl req))
  where
  toGeo g =
    { city: toMaybe g.city
    , country: toMaybe g.country
    , region: toMaybe g.region
    }

--------------------------------------------------------------------------------
-- NextUrl accessors
--------------------------------------------------------------------------------

foreign import nextUrlPathname :: NextUrl -> String
foreign import nextUrlSearchParams :: NextUrl -> NextUrlSearchParams
foreign import nextUrlOrigin :: NextUrl -> String
foreign import nextUrlHost :: NextUrl -> String
foreign import nextUrlPort :: NextUrl -> String
foreign import nextUrlProtocol :: NextUrl -> String
foreign import nextUrlHash :: NextUrl -> String

foreign import nextUrlSearchParamsGetImpl :: Fn2 NextUrlSearchParams String (Nullable String)
nextUrlSearchParamsGet :: NextUrlSearchParams -> String -> Maybe String
nextUrlSearchParamsGet sp key = toMaybe (runFn2 nextUrlSearchParamsGetImpl sp key)

foreign import nextUrlSearchParamsHasImpl :: Fn2 NextUrlSearchParams String Boolean
nextUrlSearchParamsHas :: NextUrlSearchParams -> String -> Boolean
nextUrlSearchParamsHas = runFn2 nextUrlSearchParamsHasImpl

--------------------------------------------------------------------------------
-- Request body
--------------------------------------------------------------------------------

foreign import requestJsonImpl :: EffectFn1 NextRequest (Promise Foreign)
requestJson :: NextRequest -> Aff Foreign
requestJson req = runEffectFn1 requestJsonImpl req # Promise.toAffE

foreign import requestTextImpl :: EffectFn1 NextRequest (Promise String)
requestText :: NextRequest -> Aff String
requestText req = runEffectFn1 requestTextImpl req # Promise.toAffE

foreign import requestFormDataImpl :: EffectFn1 NextRequest (Promise FormData)
requestFormData :: NextRequest -> Aff FormData
requestFormData req = runEffectFn1 requestFormDataImpl req # Promise.toAffE

--------------------------------------------------------------------------------
-- RequestCookies (read-only cookie jar from request)
--------------------------------------------------------------------------------

foreign import requestCookiesGetImpl :: Fn2 RequestCookies CookieName (Nullable Cookie)
requestCookiesGet :: RequestCookies -> CookieName -> Maybe Cookie
requestCookiesGet c name = toMaybe (runFn2 requestCookiesGetImpl c name)

foreign import requestCookiesGetAll :: RequestCookies -> Array Cookie

foreign import requestCookiesHasImpl :: Fn2 RequestCookies CookieName Boolean
requestCookiesHas :: RequestCookies -> CookieName -> Boolean
requestCookiesHas = runFn2 requestCookiesHasImpl

--------------------------------------------------------------------------------
-- userAgent
--------------------------------------------------------------------------------

type UserAgent =
  { isBot :: Boolean
  , ua :: String
  , browser :: { name :: UndefinedOr String, version :: UndefinedOr String, major :: UndefinedOr String }
  , device :: { model :: UndefinedOr String, "type" :: UndefinedOr String, vendor :: UndefinedOr String }
  , engine :: { name :: UndefinedOr String, version :: UndefinedOr String }
  , os :: { name :: UndefinedOr String, version :: UndefinedOr String }
  , cpu :: { architecture :: UndefinedOr String }
  }

foreign import userAgent :: NextRequest -> UserAgent
