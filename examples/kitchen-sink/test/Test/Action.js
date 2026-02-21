export const _mkMockFormData = () => {
  const fd = new FormData();
  fd.append("title", "hello");
  fd.append("count", "42");
  return fd;
};
