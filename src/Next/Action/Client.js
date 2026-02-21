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

export const useOptimisticImpl = (state, updateFn) => {
  const [optimistic, addOptimistic] = React.useOptimistic(state, updateFn);
  const [isPending, startTransition] = React.useTransition();
  return {
    state: optimistic,
    isPending,
    dispatch: (action) => () => startTransition(() => addOptimistic(action)),
  };
};
