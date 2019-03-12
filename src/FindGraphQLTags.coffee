import path from 'path'
import coffeescript from 'coffeescript'

import FindGraphQLTags from 'relay-compiler-language-typescript/lib/FindGraphQLTags'

export find = (text, filePath) ->
	if path.extname(filePath) in ['.coffee', '.cjsx']
		text = coffeescript.compile(text)

	FindGraphQLTags.find(text, filePath)
