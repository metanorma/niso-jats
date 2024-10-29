# frozen_string_literal: true

require "pry"
require "niso-jats"
require "xml-c14n"
require "equivalent-xml"
require "lutaml/model"
require "lutaml/model/xml_adapter/nokogiri_adapter"
require "lutaml/model/json_adapter/standard_json_adapter"

Dir["spec/support/**/*.rb"].each do |it|
  require File.expand_path(it)
end

RSpec.configure do |config|
  config.include Helper

  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

Lutaml::Model::Config.configure do |config|
  config.xml_adapter = Lutaml::Model::XmlAdapter::NokogiriAdapter
  config.json_adapter = Lutaml::Model::JsonAdapter::StandardJsonAdapter
end
