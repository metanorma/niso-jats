# frozen_string_literal: true

require "lutaml/model"

Lutaml::Model::Config.configure do |config|
  require "lutaml/model/xml_adapter/nokogiri_adapter"
  config.xml_adapter = Lutaml::Model::XmlAdapter::NokogiriAdapter
end

module Niso
  module Jats
    class Error < StandardError; end
  end
end

require "zeitwerk"

loader = Zeitwerk::Loader.for_gem
loader.push_dir(__dir__, namespace: Niso)
loader.ignore("#{__dir__}/jats/module_includer.rb")
loader.setup
loader.eager_load

require_relative "jats/module_includer"
