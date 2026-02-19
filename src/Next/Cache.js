import { revalidatePath, revalidateTag } from "next/cache";

export const _revalidatePathImpl = (path, type) => revalidatePath(path, type);
export const _revalidateTagImpl = revalidateTag;
