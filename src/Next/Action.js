// Read a single field from FormData, returning null if missing
export const getFormFieldImpl = (name, formData) => formData.get(name);
