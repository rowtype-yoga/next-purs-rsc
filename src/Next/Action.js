// Server-side: wrap curried PureScript Aff function into uncurried JS (input) => Promise
export const _mkServerAction = (pursF) => (input) => pursF(input)();

// Server-side: wrap curried PureScript Aff function into uncurried JS (prevState, formData) => Promise
export const _mkFormAction = (pursF) => (prevState, formData) => pursF(prevState)(formData)();

// Read a single field from FormData, returning null if missing
export const _getFormField = (name, formData) => formData.get(name);
