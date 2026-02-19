import React from "react";
import { useFormStatus as useFormStatus_ } from "react-dom";

// Server-side: wrap curried PureScript Aff function into uncurried JS (input) => Promise
export const _mkServerAction = (pursF) => (input) => pursF(input)();

// Server-side: wrap curried PureScript Aff function into uncurried JS (prevState, formData) => Promise
export const _mkFormAction = (pursF) => (prevState, formData) => pursF(prevState)(formData)();

// Read a single field from FormData, returning null if missing
export const _getFormField = (name, formData) => formData.get(name);

// Client-side: useActionState that accepts an already-uncurried server action reference
export const _useActionStateImpl = (action, initialState) => {
  const [state, dispatch, isPending] = React.useActionState(action, initialState);
  return { state, dispatch, isPending };
};

// Client-side: useFormStatus from react-dom
export const _useFormStatusImpl = () => {
  const { pending } = useFormStatus_();
  return { pending };
};

// Client-side: call a ServerAction directly, returns a Promise
export const _callServerAction = (action, input) => action(input);
