require "zeitwerk"
require "ali"
require "oasis-etm"
require "lutaml/model"
require_relative "niso/jats/version"

loader = Zeitwerk::Loader.for_gem(warn_on_extra_files: false)
loader.ignore("#{__dir__}/niso-jats.rb")
loader.setup
