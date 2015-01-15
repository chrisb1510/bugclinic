today = 'today'
console.log 'date is', timestamp()
console.log 'today'

timestamp =()->
  today = new Date()
  today


#this is a demonstration on linting, originally for js, using jshint and eslint,
#
# with eslint being initially more restrictive on warnings, both have a myriad of options however
#
#coffeelint is also available with a config file within this directory.
#tip ::  if you use @ in a function make sure its declared with a fat arrow. =>
#ie this is bound correctly.
