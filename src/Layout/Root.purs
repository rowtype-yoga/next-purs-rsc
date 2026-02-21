module Layout.Root where

import Prelude (($), (<>), append, pure)

import Data.Maybe (maybe)
import Fonts (sans)
import Next (Layout, Metadata, Root, link, nextLayout, simpleMetadata)
import Next.Font (fontClassName, fontVariable)
import Route (Route(..))
import Yoga.React.DOM (body, html, main, nav, strong, text)
import Yoga.React.DOM.Internal (css)
import Yoga.React.Om as Om

layout :: Layout
layout = nextLayout {} $ pure \{ children } -> Om.do
  Om.pure $
    html { lang: "en", className: fontClassName sans <> maybe "" (append " ") (fontVariable sans) }
      [ body { style: css { background: "#001", color: "#d0d0e7" } }
          [ nav {}
              [ strong {} [ text "PureScript + Next.js RSC" ]
              , text " | "
              , link Home {} [ text "Home" ]
              , text " | "
              , link About {} [ text "About" ]
              , text " | "
              , link Dashboard {} [ text "Dashboard" ]
              , text " | "
              , link Actions {} [ text "Actions" ]
              , text " | "
              , link Form {} [ text "Form" ]
              , text " | "
              , link Navigation {} [ text "Navigation" ]
              , text " | "
              , link Media {} [ text "Media" ]
              , text " | "
              , link (Blog__Slug "hello") {} [ text "Blog" ]
              , text " | "
              , link Optimistic {} [ text "Optimistic" ]
              , text " | "
              , link Server {} [ text "Server" ]
              ]
          , main {} children
          ]
      ]

metadata :: Metadata Root
metadata = simpleMetadata \_ ->
  { title: "PureScript + Next.js"
  , description: "A PureScript app powered by Next.js App Router"
  }
