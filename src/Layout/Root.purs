module Layout.Root where

import Next (Layout, link, simpleLayout)
import Route (Route(..))
import Yoga.React.DOM (body, html, main, nav, strong, text)

layout :: Layout
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
