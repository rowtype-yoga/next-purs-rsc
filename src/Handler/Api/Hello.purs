module Handler.Api.Hello where

import Prelude

import Data.Maybe (maybe)
import Data.Newtype (un)
import Effect.Aff (Aff)
import Effect.Class (liftEffect)
import Next (GET, POST, PUT, DELETE, PATCH, HEAD, OPTIONS, type (/), simpleGet, simplePost, simplePut, simpleDelete, simplePatch, simpleHead, simpleOptions, NextRequest, NextResponse, jsonResponse)
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
  userAgent <- liftEffect $ headersGet h (HeaderName "user-agent")
  hasAccept <- liftEffect $ headersHas h (HeaderName "accept")
  c <- cookies
  sessionCookie <- liftEffect $ cookiesGet c (CookieName "session")
  allCookies <- liftEffect $ cookiesGetAll c
  hasSession <- liftEffect $ cookiesHas c (CookieName "session")
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
  liftEffect $ redirect Home
  json {}

put :: PUT ("api" / "hello")
put = simplePut \_ _ -> do
  liftEffect $ revalidatePath "/dashboard" Page
  liftEffect $ revalidateTag "data"
  json { revalidated: true }

delete_ :: DELETE ("api" / "hello")
delete_ = simpleDelete \_ _ -> do
  liftEffect triggerNotFound
  json { deleted: true }

patch :: PATCH ("api" / "hello")
patch = simplePatch \_ _ -> do
  liftEffect $ permanentRedirect About
  json {}

head_ :: HEAD ("api" / "hello")
head_ = simpleHead \_ _ ->
  json {}

options :: OPTIONS ("api" / "hello")
options = simpleOptions \_ _ ->
  json { methods: ["GET", "POST", "PUT", "DELETE", "PATCH", "HEAD", "OPTIONS"] }
