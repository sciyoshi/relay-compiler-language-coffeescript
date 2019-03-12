import plugin from "relay-compiler-language-typescript/lib/index"
import RelayLanguagePluginJavaScript from "relay-compiler/lib/RelayLanguagePluginJavaScript"

import { find } from "./FindGraphQLTags"

export default -> ({
	...plugin()
	inputExtensions: ["js", "jsx", "coffee", "cjsx", ".ts", ".tsx"]
	findGraphQLTags: find
})
