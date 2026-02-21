module Handler.Api.Hello where

import Prelude

import Data.Maybe (maybe)
import Data.Newtype (un)
import Effect.Aff (Aff)
import Effect.Class (liftEffect)
import Next (GET, POST, PUT, DELETE, PATCH, HEAD, OPTIONS, type (/), NextResponse)
import Next (get, post, put, delete, patch, head, options) as Next
import Next.Response (json)
import Next.Cache (RevalidationType(..), revalidatePath, revalidateTag)
import Next.Headers (HeaderName(..), HeaderValue(..), CookieName(..), cookies, cookiesGet, cookiesGetAll, cookiesHas, headers, headersGet, headersHas)
import Next.Navigation.Server (redirect, permanentRedirect, triggerNotFound)
import Next.Request (requestMethod, requestUrl)
import Route (Route(..))

jsonOk :: forall r. { | r } -> Aff NextResponse
jsonOk body = pure $ json body {}

get :: GET ("api" / "hello")
get = Next.get \req _ -> do
  let method = requestMethod req
  let url = requestUrl req
  h <- headers
  userAgent <- headersGet h (HeaderName "user-agent") # liftEffect
  hasAccept <- headersHas h (HeaderName "accept") # liftEffect
  c <- cookies
  sessionCookie <- cookiesGet c (CookieName "session") # liftEffect
  allCookies <- cookiesGetAll c # liftEffect
  hasSession <- cookiesHas c (CookieName "session") # liftEffect
  jsonOk
    { message: "hello"
    , method
    , url
    , userAgent: maybe "" (un HeaderValue) userAgent
    , hasAccept
    , sessionCookie
    , cookieCount: allCookies # map _.name
    , hasSession
    }

post :: POST ("api" / "hello")
post = Next.post \_ _ -> do
  redirect Home # liftEffect
  jsonOk {}

put :: PUT ("api" / "hello")
put = Next.put \_ _ -> do
  revalidatePath "/dashboard" Page # liftEffect
  revalidateTag "data" # liftEffect
  jsonOk { revalidated: true }

delete_ :: DELETE ("api" / "hello")
delete_ = Next.delete \_ _ -> do
  triggerNotFound # liftEffect
  jsonOk { deleted: true }

patch :: PATCH ("api" / "hello")
patch = Next.patch \_ _ -> do
  permanentRedirect About # liftEffect
  jsonOk {}

head_ :: HEAD ("api" / "hello")
head_ = Next.head \_ _ ->
  jsonOk {}

options :: OPTIONS ("api" / "hello")
options = Next.options \_ _ ->
  jsonOk { methods: ["GET", "POST", "PUT", "DELETE", "PATCH", "HEAD", "OPTIONS"] }
