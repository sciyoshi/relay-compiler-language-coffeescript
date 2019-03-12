import path from 'path'
import coffeescript from 'coffeescript'

import { find as findTS } from 'relay-compiler-language-typescript/lib/FindGraphQLTags'

export find = (text, filePath) ->
	if path.extname(filePath) in ['.coffee', '.cjsx']
		text = coffeescript.compile(text)

	findTS(text, filePath)
