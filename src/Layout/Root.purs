module Layout.Root where

import Next (Layout, link, simpleLayout)
import React.Basic.Hooks (reactChildrenToArray)
import Route (Route(..))
import Yoga.React.DOM (body, html, main, nav, strong, text)
import Yoga.React.DOM.Internal (css)

layout :: Layout
layout = simpleLayout \{ children } ->
  html { lang: "en" }
    [ body { style: css { fontFamily: "sans-serif", background: "#001", color: "#d0d0e7" } }
        [ nav {}
            [ strong {} [ text "PureScript + Next.js RSC" ]
            , text " | "
            , link Home {} [ text "Home" ]
            , text " | "
            , link About {} [ text "About" ]
            ]
        , main {} (reactChildrenToArray children)
        ]
    ]
