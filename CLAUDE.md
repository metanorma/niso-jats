# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Ruby gem for parsing and generating NISO JATS XML v1.2 documents. Built on `lutaml-model` (~0.8.0) with Nokogiri as the XML adapter. Part of the Metanorma ecosystem.

## Commands

- `bundle install` — install dependencies
- `bundle exec rake` — run tests + rubocop (default task)
- `bundle exec rspec` — run all tests
- `bundle exec rspec spec/niso/jats/article_spec.rb` — run a single spec file
- `bundle exec rspec spec/niso/jats/article_spec.rb:24` — run a single test by line number
- `bundle exec rubocop` — run linting
- `bin/console` — interactive Ruby console with gem loaded

## Architecture

**Entry point**: `lib/niso_jats.rb` → `lib/niso/jats.rb` (autoloads ~300 model classes)

**Model pattern**: Every JATS XML element is a `Lutaml::Model::Serializable` class in `lib/niso/jats/`. Each class declares attributes and an `xml do...end` block mapping XML elements/attributes to Ruby attributes.

- Root document: `Niso::Jats::Article` — maps to `<article>` element
- Main structure: `Article` → `Front` → (`JournalMeta`, `ArticleMeta`), `Body`, `Back`
- `BasicText` module: shared inline elements (bold, italic, sub, sup, xref, etc.) mixed into ~30 classes via `ModuleIncluder`

**Testing**: Specs use a shared "a serializer" example that round-trips XML fixtures through `from_xml` → `to_xml` and checks equivalence via the `canon` gem (`be_xml_equivalent_to`). Fixtures come from a git submodule at `spec/fixtures/niso-jats` (NCBI's official JATS samples across versions). Versions 0.4 and 1.1d3 are skipped in tests.

**XML config**: `Lutaml::Model::Config.xml_adapter_type = :nokogiri` is set in `spec/spec_helper.rb`.

**OASIS table support**: The gem supports OASIS CALS table model via the `oasis-etm` gem. TableWrap has both `table` and `oasis_table` attributes that map to the same XML element name. The `to_xml` method filters out empty OASIS tables to avoid spurious output for non-OASIS files.

## Key Conventions

- All files use `frozen_string_literal: true`
- Ruby 3.0+ required
- Rubocop inherits from `riboseinc/oss-guides` remote config; local overrides disable block/method/ABC length metrics and set max line length to 120
- `lutaml-model` is pinned to the GitHub `main` branch in the Gemfile for development (gemspec requires `~> 0.8.0`)

## Common Fix Patterns

**Mixed-content elements**: Elements that have both text content AND child elements (e.g., `<aff><institution>Test</institution></aff>`) need `mixed_content` in their xml block:

```ruby
xml do
  element "aff"
  mixed_content  # required for elements with both text and children
  map_content to: :content
  # ...
end
```

**W3C XML attributes** (e.g., `xml:base`, `xml:lang`): Use the special type (`:xml_base`, `:xml_lang`) and map the bare attribute name:

```ruby
attribute :base, :xml_base
# ...
map_attribute "base", to: :base  # NOT "xml:base" - the type handles the prefix
```
