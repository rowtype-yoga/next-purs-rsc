import React from "react";
import { useFormStatus as useFormStatus_ } from "react-dom";

export const useActionStateImpl = (action, initialState) => {
  const [state, dispatch, isPending] = React.useActionState(action, initialState);
  return { state, dispatch, isPending };
};

export const useFormStatusImpl = () => {
  const { pending } = useFormStatus_();
  return { pending };
};

export const callServerActionImpl = (action, input) => action(input);

export function useOptimisticImpl(tuple, state, updateFn) {
  const [optimisticState, addOptimistic] = React.useOptimistic(state, updateFn);
  if (!addOptimistic.hasOwnProperty("$$nextPursRsc$$cachedAddOptimistic")) {
    addOptimistic.$$nextPursRsc$$cachedAddOptimistic = (action) => () =>
      addOptimistic(action);
  }
  return tuple(optimisticState, addOptimistic.$$nextPursRsc$$cachedAddOptimistic);
}
