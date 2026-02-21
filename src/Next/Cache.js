import { revalidatePath, revalidateTag } from "next/cache";
import { cache } from "react";

export const _revalidatePathImpl = (path, type) => revalidatePath(path, type);
export const _revalidateTagImpl = revalidateTag;
export const _cacheImpl = (fn) => cache((a) => fn(a)());
