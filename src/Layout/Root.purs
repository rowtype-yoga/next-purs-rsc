module Layout.Root where

import Effect (Effect)
import Next (link, simpleLayout)
import React.Basic (JSX)
import Route (Route(..))
import Yoga.React.DOM (body, html, main, nav, strong, text)

layout :: Effect ({ children :: JSX } -> JSX)
layout = simpleLayout \{ children } ->
  html { lang: "en" }
    [ body {}
        [ nav {}
            [ strong {} [ text "PureScript + Next.js RSC" ]
            , text " | "
            , link Home [ text "Home" ]
            , text " | "
            , link About [ text "About" ]
            ]
        , main {} children
        ]
    ]
