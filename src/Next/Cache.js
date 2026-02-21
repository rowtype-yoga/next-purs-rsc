import { revalidatePath, revalidateTag } from "next/cache";
import { cache } from "react";

export const revalidatePathImpl = (path, type) => revalidatePath(path, type);
export const revalidateTagImpl = revalidateTag;
export const cacheImpl = (fn) => cache((a) => fn(a)());
