module Handler.Api.Hello where

import Prelude

import Data.Maybe (maybe)
import Data.Newtype (un)
import Effect.Aff (Aff)
import Effect.Class (liftEffect)
import Next (GET, POST, PUT, DELETE, PATCH, HEAD, OPTIONS, type (/), simpleGet, simplePost, simplePut, simpleDelete, simplePatch, simpleHead, simpleOptions, NextResponse)
import Next.Response (jsonResponse)
import Next.Cache (RevalidationType(..), revalidatePath, revalidateTag)
import Next.Headers (HeaderName(..), HeaderValue(..), CookieName(..), cookies, cookiesGet, cookiesGetAll, cookiesHas, headers, headersGet, headersHas)
import Next.Navigation.Server (redirect, permanentRedirect, triggerNotFound)
import Next.Request (requestMethod, requestUrl)
import Route (Route(..))

json :: forall r. { | r } -> Aff NextResponse
json = pure <<< jsonResponse

get :: GET ("api" / "hello")
get = simpleGet \req _ -> do
  let method = requestMethod req
  let url = requestUrl req
  h <- headers
  userAgent <- headersGet h (HeaderName "user-agent") # liftEffect
  hasAccept <- headersHas h (HeaderName "accept") # liftEffect
  c <- cookies
  sessionCookie <- cookiesGet c (CookieName "session") # liftEffect
  allCookies <- cookiesGetAll c # liftEffect
  hasSession <- cookiesHas c (CookieName "session") # liftEffect
  json
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
post = simplePost \_ _ -> do
  redirect Home # liftEffect
  json {}

put :: PUT ("api" / "hello")
put = simplePut \_ _ -> do
  revalidatePath "/dashboard" Page # liftEffect
  revalidateTag "data" # liftEffect
  json { revalidated: true }

delete_ :: DELETE ("api" / "hello")
delete_ = simpleDelete \_ _ -> do
  triggerNotFound # liftEffect
  json { deleted: true }

patch :: PATCH ("api" / "hello")
patch = simplePatch \_ _ -> do
  permanentRedirect About # liftEffect
  json {}

head_ :: HEAD ("api" / "hello")
head_ = simpleHead \_ _ ->
  json {}

options :: OPTIONS ("api" / "hello")
options = simpleOptions \_ _ ->
  json { methods: ["GET", "POST", "PUT", "DELETE", "PATCH", "HEAD", "OPTIONS"] }
