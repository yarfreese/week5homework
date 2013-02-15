$LOAD_PATH.unshift File.expand_path("../test_gem", __FILE__)

require 'version'
require 'hello'
require 'file'

module TestGem

  puts "module TestGem defined"

end
