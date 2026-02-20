-- @client
module Page.Navigation where

import Prelude hiding (div)

import Data.Maybe (Maybe(..), maybe)
import Data.Tuple.Nested ((/\))
import Effect (Effect)
import Next (Page)
import Next.Navigation (useRouter, usePathname, useSearchParams, useParams, useSelectedLayoutSegment, useSelectedLayoutSegments, searchParamsGet, searchParamsGetAll, searchParamsHas, searchParamsToString, paramsGet)
import React.Basic.Events (handler_)
import React.Basic.Hooks (component, useState, useEffect)
import React.Basic.Hooks as React
import Route (Route(..))
import Unsafe.Coerce (unsafeCoerce)
import Yoga.React.DOM (button, div, h1, h2, p)

page :: Page "navigation"
page = unsafeCoerce $ component "NavigationPage" \(_ :: {}) -> React.do
  router <- useRouter
  pathname <- usePathname
  searchParams <- useSearchParams
  params <- useParams
  segment <- useSelectedLayoutSegment
  segments <- useSelectedLayoutSegments

  info /\ setInfo <- useState ""
  useEffect pathname do
    str <- searchParamsToString searchParams
    hasQ <- searchParamsHas searchParams "q"
    qVal <- searchParamsGet searchParams "q"
    qAll <- searchParamsGetAll searchParams "q"
    nameParam <- paramsGet params "name"
    setInfo \_ -> "query=" <> str
      <> " | has q=" <> show hasQ
      <> " | q=" <> maybe "none" identity qVal
      <> " | qAll=" <> show qAll
      <> " | name param=" <> maybe "none" identity nameParam
    pure (pure unit)

  pure $ div {}
    [ h1 {} "Navigation Hooks"
    , h2 {} "usePathname"
    , p {} $ "Pathname: " <> pathname
    , h2 {} "useSearchParams"
    , p {} info
    , h2 {} "useSelectedLayoutSegment"
    , p {} $ "Segment: " <> maybe "none" identity segment
    , h2 {} "useSelectedLayoutSegments"
    , p {} $ "Segments: " <> show segments
    , h2 {} "useRouter"
    , div {}
        [ btn "Go Home" (router.push Home)
        , btn "Go Dashboard" (router.push Dashboard)
        , btn "Replace to About" (router.replace About)
        , btn "Prefetch Blog" (router.prefetch (Blog__Slug "hello"))
        , btn "Back" router.back
        , btn "Forward" router.forward
        , btn "Refresh" router.refresh
        ]
    ]
  where
  btn label action = button { onClick: handler_ action } label
