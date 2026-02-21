// Read a single field from FormData, returning null if missing
export const _getFormField = (name, formData) => formData.get(name);
