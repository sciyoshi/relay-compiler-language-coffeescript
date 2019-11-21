import plugin from "relay-compiler-language-typescript/lib/index"

import { find } from "./FindGraphQLTags"

export default -> ({
	...plugin()
	inputExtensions: ["js", "jsx", "coffee", "cjsx", "ts", "tsx"]
	findGraphQLTags: find
})
