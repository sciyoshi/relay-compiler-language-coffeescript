import RelayLanguagePluginJavaScript from "relay-compiler/lib/RelayLanguagePluginJavaScript"

import { find } from "./FindGraphQLTags"

export default ->
	inputExtensions: ["js", "jsx", "coffee", "cjsx"]
	outputExtension: "js"
	findGraphQLTags: find
	typeGenerator: RelayLanguagePluginJavaScript().typeGenerator
	formatModule: RelayLanguagePluginJavaScript().formatModule