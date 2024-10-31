require "zeitwerk"
require "ali"
require "lutaml/model"
require "lutaml/model/xml_adapter/nokogiri_adapter"
require "lutaml/model/json_adapter/standard_json_adapter"

loader = Zeitwerk::Loader.for_gem(warn_on_extra_files: false)
loader.ignore("#{__dir__}/niso-jats.rb")
loader.setup

Lutaml::Model::Config.configure do |config|
  config.xml_adapter = Lutaml::Model::XmlAdapter::NokogiriAdapter
  config.json_adapter = Lutaml::Model::JsonAdapter::StandardJsonAdapter
end
