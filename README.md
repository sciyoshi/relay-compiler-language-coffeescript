# relay-compiler-language-coffeescript

A language plugin for [Relay](https://facebook.github.io/relay/) that adds CoffeeScript support.
Requires `relay`>=1.7; if you are using an older version, see [this project](https://github.com/fellowinsights/relay-coffee-compiler)
for a workaround.

The plugin registers itself for both .js/.jsx and .coffee/.cjsx extensions, since Relay doesn't
support composing or using multiple plugins.

To use, install:

    npm install --save-dev relay-compiler-language-coffeescript

And then run `relay-compiler` by specifying the plugin:

    relay-compiler --language coffeescript --schema schema.json --src src

Queries in CoffeeScript work much the same way as in JS, but uses regular quotes instead of backticks:

    MyQuery = graphql"
        query MyQuery {
        	...
        }
    "
