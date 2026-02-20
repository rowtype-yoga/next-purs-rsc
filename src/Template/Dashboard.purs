module Template.Dashboard where

import Prelude hiding (div)

import Next (Template, simpleTemplate)
import React.Basic.Hooks (reactChildrenToArray)
import Yoga.React.DOM (div)

template :: Template "dashboard"
template = simpleTemplate \{ children } ->
  div { className: "dashboard-template" } (reactChildrenToArray children)
