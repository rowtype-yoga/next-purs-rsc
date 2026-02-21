module Template.Dashboard where

import Prelude hiding (div)

import Next (Template)
import Next (template) as Next
import React.Basic.Hooks (reactChildrenToArray)
import Yoga.React.DOM (div)

template :: Template "dashboard"
template = Next.template \{ children } ->
  div { className: "dashboard-template" } (reactChildrenToArray children)
