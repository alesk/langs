Testing diffferent module patterns and minifiers.

## npm tasks

To compile javascript to single unit, use:

  -  `npm run require:amd` to build amd modules with require.js to `require-amd.js` 
  -  `npm run closure:amd` to build amd modules with Google's closure compiler `closure-amd.js`
  -  `npm run closure:common` to build common-js modules with Google's closure compiler `closure-common.js`

## Closure compiler

In order to enable closure compiler, download prebuilt jar and put path to the jar
into `~/.npmrc`:

    modules:closure_compiler_jar=/Users/ales/bin/compiler.jar

The `modules:closure_compiler_jar` will replace `$npm_package_config_closure_compiler_jar` variable.

See closure-compiler parameters in [closure-compiler-help-output](closure-compiler-help-output.txt)


Readings:

  - [how-to-use-npm-as-a-build-tool][1]

[1]: http://blog.keithcirkel.co.uk/how-to-use-npm-as-a-build-tool/
