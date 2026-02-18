module Layout.Root where

import Prelude

import React.Basic (JSX)
import React.Basic.Hooks (Component, component)
import Yoga.React.DOM (a, body, html, main, nav, strong, text)

layout :: Component { children :: JSX }
layout = component "RootLayout" \{ children } -> pure $
  html { lang: "en" }
    [ body {}
        [ nav {}
            [ strong {} [ text "PureScript + Next.js RSC" ]
            , text " | "
            , a { href: "/" } [ text "Home" ]
            , text " | "
            , a { href: "/about" } [ text "About" ]
            ]
        , main {} children
        ]
    ]
