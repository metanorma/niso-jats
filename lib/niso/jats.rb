# frozen_string_literal: true

require "lutaml/model"

Lutaml::Model::Config.configure do |config|
  require "lutaml/model/xml_adapter/nokogiri_adapter"
  config.xml_adapter = Lutaml::Model::XmlAdapter::NokogiriAdapter
end

module Niso
  module Jats
    class Error < StandardError; end

    class Abbrev < Lutaml::Model::Serializable; end
    class AbbrevJournalTitle < Lutaml::Model::Serializable; end
    class Abstract < Lutaml::Model::Serializable; end
    class AccessDate < Lutaml::Model::Serializable; end
    class Ack < Lutaml::Model::Serializable; end
    class AddrLine < Lutaml::Model::Serializable; end
    class Address < Lutaml::Model::Serializable; end
    class Aff < Lutaml::Model::Serializable; end
    class AffAlternatives < Lutaml::Model::Serializable; end
    class AltText < Lutaml::Model::Serializable; end
    class AltTitle < Lutaml::Model::Serializable; end
    class Alternatives < Lutaml::Model::Serializable; end
    class Annotation < Lutaml::Model::Serializable; end
    class Anonymous < Lutaml::Model::Serializable; end
    class Answer < Lutaml::Model::Serializable; end
    class AnswerSet < Lutaml::Model::Serializable; end
    class App < Lutaml::Model::Serializable; end
    class AppGroup < Lutaml::Model::Serializable; end
    class Array < Lutaml::Model::Serializable; end
    class Article < Lutaml::Model::Serializable; end
    class ArticleCategories < Lutaml::Model::Serializable; end
    class ArticleId < Lutaml::Model::Serializable; end
    class ArticleMeta < Lutaml::Model::Serializable; end
    class ArticleTitle < Lutaml::Model::Serializable; end
    class ArticleVersion < Lutaml::Model::Serializable; end
    class ArticleVersionAlternatives < Lutaml::Model::Serializable; end
    class Attrib < Lutaml::Model::Serializable; end
    class AuthorComment < Lutaml::Model::Serializable; end
    class AuthorNotes < Lutaml::Model::Serializable; end
    class AwardDesc < Lutaml::Model::Serializable; end
    class AwardGroup < Lutaml::Model::Serializable; end
    class AwardId < Lutaml::Model::Serializable; end
    class AwardName < Lutaml::Model::Serializable; end
    class Back < Lutaml::Model::Serializable; end
    class Bio < Lutaml::Model::Serializable; end
    class BlockAlternatives < Lutaml::Model::Serializable; end
    class Body < Lutaml::Model::Serializable; end
    class Bold < Lutaml::Model::Serializable; end
    class BoxedText < Lutaml::Model::Serializable; end
    class Break < Lutaml::Model::Serializable; end
    class Caption < Lutaml::Model::Serializable; end
    class ChapterTitle < Lutaml::Model::Serializable; end
    class ChemStruct < Lutaml::Model::Serializable; end
    class ChemStructWrap < Lutaml::Model::Serializable; end
    class CitationAlternatives < Lutaml::Model::Serializable; end
    class City < Lutaml::Model::Serializable; end
    class Code < Lutaml::Model::Serializable; end
    class Col < Lutaml::Model::Serializable; end
    class Colgroup < Lutaml::Model::Serializable; end
    class Collab < Lutaml::Model::Serializable; end
    class CollabAlternatives < Lutaml::Model::Serializable; end
    class Comment < Lutaml::Model::Serializable; end
    class CompoundKwd < Lutaml::Model::Serializable; end
    class CompoundKwdPart < Lutaml::Model::Serializable; end
    class CompoundSubject < Lutaml::Model::Serializable; end
    class CompoundSubjectPart < Lutaml::Model::Serializable; end
    class ConfAcronym < Lutaml::Model::Serializable; end
    class ConfDate < Lutaml::Model::Serializable; end
    class ConfLoc < Lutaml::Model::Serializable; end
    class ConfName < Lutaml::Model::Serializable; end
    class ConfNum < Lutaml::Model::Serializable; end
    class ConfSponsor < Lutaml::Model::Serializable; end
    class ConfTheme < Lutaml::Model::Serializable; end
    class Conference < Lutaml::Model::Serializable; end
    class Contrib < Lutaml::Model::Serializable; end
    class ContribGroup < Lutaml::Model::Serializable; end
    class ContribId < Lutaml::Model::Serializable; end
    class ContributedResourceGroup < Lutaml::Model::Serializable; end
    class CopyrightHolder < Lutaml::Model::Serializable; end
    class CopyrightStatement < Lutaml::Model::Serializable; end
    class CopyrightYear < Lutaml::Model::Serializable; end
    class Corresp < Lutaml::Model::Serializable; end
    class Count < Lutaml::Model::Serializable; end
    class Country < Lutaml::Model::Serializable; end
    class Counts < Lutaml::Model::Serializable; end
    class CustomMeta < Lutaml::Model::Serializable; end
    class CustomMetaGroup < Lutaml::Model::Serializable; end
    class DataTitle < Lutaml::Model::Serializable; end
    class Date < Lutaml::Model::Serializable; end
    class DateInCitation < Lutaml::Model::Serializable; end
    class Day < Lutaml::Model::Serializable; end
    class Def < Lutaml::Model::Serializable; end
    class DefHead < Lutaml::Model::Serializable; end
    class DefItem < Lutaml::Model::Serializable; end
    class DefList < Lutaml::Model::Serializable; end
    class Degrees < Lutaml::Model::Serializable; end
    class DispFormula < Lutaml::Model::Serializable; end
    class DispFormulaGroup < Lutaml::Model::Serializable; end
    class DispQuote < Lutaml::Model::Serializable; end
    class Edition < Lutaml::Model::Serializable; end
    class ElementCitation < Lutaml::Model::Serializable; end
    class ElocationId < Lutaml::Model::Serializable; end
    class Email < Lutaml::Model::Serializable; end
    class EquationCount < Lutaml::Model::Serializable; end
    class Era < Lutaml::Model::Serializable; end
    class Etal < Lutaml::Model::Serializable; end
    class Event < Lutaml::Model::Serializable; end
    class EventDesc < Lutaml::Model::Serializable; end
    class Explanation < Lutaml::Model::Serializable; end
    class ExtLink < Lutaml::Model::Serializable; end
    class ExtendedBy < Lutaml::Model::Serializable; end
    class Fax < Lutaml::Model::Serializable; end
    class Fig < Lutaml::Model::Serializable; end
    class FigCount < Lutaml::Model::Serializable; end
    class FigGroup < Lutaml::Model::Serializable; end
    class FixedCase < Lutaml::Model::Serializable; end
    class FloatsGroup < Lutaml::Model::Serializable; end
    class Fn < Lutaml::Model::Serializable; end
    class FnGroup < Lutaml::Model::Serializable; end
    class Fpage < Lutaml::Model::Serializable; end
    class Front < Lutaml::Model::Serializable; end
    class FrontStub < Lutaml::Model::Serializable; end
    class FundingGroup < Lutaml::Model::Serializable; end
    class FundingSource < Lutaml::Model::Serializable; end
    class FundingStatement < Lutaml::Model::Serializable; end
    class GivenNames < Lutaml::Model::Serializable; end
    class Glossary < Lutaml::Model::Serializable; end
    class GlyphData < Lutaml::Model::Serializable; end
    class GlyphRef < Lutaml::Model::Serializable; end
    class Gov < Lutaml::Model::Serializable; end
    class Graphic < Lutaml::Model::Serializable; end
    class History < Lutaml::Model::Serializable; end
    class Hr < Lutaml::Model::Serializable; end
    class IndexTerm < Lutaml::Model::Serializable; end
    class IndexTermRangeEnd < Lutaml::Model::Serializable; end
    class InlineFormula < Lutaml::Model::Serializable; end
    class InlineGraphic < Lutaml::Model::Serializable; end
    class InlineMedia < Lutaml::Model::Serializable; end
    class InlineSupplementaryMaterial < Lutaml::Model::Serializable; end
    class Institution < Lutaml::Model::Serializable; end
    class InstitutionId < Lutaml::Model::Serializable; end
    class InstitutionWrap < Lutaml::Model::Serializable; end
    class Isbn < Lutaml::Model::Serializable; end
    class Issn < Lutaml::Model::Serializable; end
    class IssnL < Lutaml::Model::Serializable; end
    class Issue < Lutaml::Model::Serializable; end
    class IssueId < Lutaml::Model::Serializable; end
    class IssuePart < Lutaml::Model::Serializable; end
    class IssueSponsor < Lutaml::Model::Serializable; end
    class IssueSubtitle < Lutaml::Model::Serializable; end
    class IssueTitle < Lutaml::Model::Serializable; end
    class IssueTitleGroup < Lutaml::Model::Serializable; end
    class Italic < Lutaml::Model::Serializable; end
    class JournalId < Lutaml::Model::Serializable; end
    class JournalMeta < Lutaml::Model::Serializable; end
    class JournalSubtitle < Lutaml::Model::Serializable; end
    class JournalTitle < Lutaml::Model::Serializable; end
    class JournalTitleGroup < Lutaml::Model::Serializable; end
    class Kwd < Lutaml::Model::Serializable; end
    class KwdGroup < Lutaml::Model::Serializable; end
    class Label < Lutaml::Model::Serializable; end
    class Label < Lutaml::Model::Serializable; end
    class License < Lutaml::Model::Serializable; end
    class LicenseP < Lutaml::Model::Serializable; end
    class LicenseParagraph < Lutaml::Model::Serializable; end
    class List < Lutaml::Model::Serializable; end
    class ListItem < Lutaml::Model::Serializable; end
    class LongDesc < Lutaml::Model::Serializable; end
    class Lpage < Lutaml::Model::Serializable; end
    class Media < Lutaml::Model::Serializable; end
    class MetaName < Lutaml::Model::Serializable; end
    class MetaValue < Lutaml::Model::Serializable; end
    class MilestoneEnd < Lutaml::Model::Serializable; end
    class MilestoneStart < Lutaml::Model::Serializable; end
    class MixedCitation < Lutaml::Model::Serializable; end
    class Monospace < Lutaml::Model::Serializable; end
    class Month < Lutaml::Model::Serializable; end
    class Name < Lutaml::Model::Serializable; end
    class NameAlternatives < Lutaml::Model::Serializable; end
    class NamedContent < Lutaml::Model::Serializable; end
    class NestedKwd < Lutaml::Model::Serializable; end
    class NlmCitation < Lutaml::Model::Serializable; end
    class Note < Lutaml::Model::Serializable; end
    class Notes < Lutaml::Model::Serializable; end
    class ObjectId < Lutaml::Model::Serializable; end
    class OnBehalfOf < Lutaml::Model::Serializable; end
    class OpenAccess < Lutaml::Model::Serializable; end
    class Option < Lutaml::Model::Serializable; end
    class Overline < Lutaml::Model::Serializable; end
    class OverlineEnd < Lutaml::Model::Serializable; end
    class OverlineStart < Lutaml::Model::Serializable; end
    class P < Lutaml::Model::Serializable; end
    class PageCount < Lutaml::Model::Serializable; end
    class PageRange < Lutaml::Model::Serializable; end
    class Paragraph < Lutaml::Model::Serializable; end
    class PartTitle < Lutaml::Model::Serializable; end
    class Patent < Lutaml::Model::Serializable; end
    class Permissions < Lutaml::Model::Serializable; end
    class PersonGroup < Lutaml::Model::Serializable; end
    class Phone < Lutaml::Model::Serializable; end
    class PostalCode < Lutaml::Model::Serializable; end
    class Prefix < Lutaml::Model::Serializable; end
    class Preformat < Lutaml::Model::Serializable; end
    class Price < Lutaml::Model::Serializable; end
    class PrincipalAwardRecipient < Lutaml::Model::Serializable; end
    class PrincipalInvestigator < Lutaml::Model::Serializable; end
    class PrivateChar < Lutaml::Model::Serializable; end
    class ProcessingMeta < Lutaml::Model::Serializable; end
    class Product < Lutaml::Model::Serializable; end
    class PubDate < Lutaml::Model::Serializable; end
    class PubDateNotAvailable < Lutaml::Model::Serializable; end
    class PubHistory < Lutaml::Model::Serializable; end
    class PubId < Lutaml::Model::Serializable; end
    class Publisher < Lutaml::Model::Serializable; end
    class PublisherLoc < Lutaml::Model::Serializable; end
    class PublisherName < Lutaml::Model::Serializable; end
    class Question < Lutaml::Model::Serializable; end
    class QuestionPreamble < Lutaml::Model::Serializable; end
    class QuestionWrap < Lutaml::Model::Serializable; end
    class QuestionWrapGroup < Lutaml::Model::Serializable; end
    class Rb < Lutaml::Model::Serializable; end
    class Ref < Lutaml::Model::Serializable; end
    class RefCount < Lutaml::Model::Serializable; end
    class RefList < Lutaml::Model::Serializable; end
    class RelatedArticle < Lutaml::Model::Serializable; end
    class RelatedObject < Lutaml::Model::Serializable; end
    class ResourceGroup < Lutaml::Model::Serializable; end
    class ResourceId < Lutaml::Model::Serializable; end
    class ResourceName < Lutaml::Model::Serializable; end
    class ResourceWrap < Lutaml::Model::Serializable; end
    class Response < Lutaml::Model::Serializable; end
    class RestrictedBy < Lutaml::Model::Serializable; end
    class Role < Lutaml::Model::Serializable; end
    class Roman < Lutaml::Model::Serializable; end
    class Rp < Lutaml::Model::Serializable; end
    class Rt < Lutaml::Model::Serializable; end
    class Ruby < Lutaml::Model::Serializable; end
    class SansSerif < Lutaml::Model::Serializable; end
    class Sc < Lutaml::Model::Serializable; end
    class Season < Lutaml::Model::Serializable; end
    class Sec < Lutaml::Model::Serializable; end
    class SecMeta < Lutaml::Model::Serializable; end
    class See < Lutaml::Model::Serializable; end
    class SeeAlso < Lutaml::Model::Serializable; end
    class SelfUri < Lutaml::Model::Serializable; end
    class Series < Lutaml::Model::Serializable; end
    class SeriesText < Lutaml::Model::Serializable; end
    class SeriesTitle < Lutaml::Model::Serializable; end
    class Sig < Lutaml::Model::Serializable; end
    class SigBlock < Lutaml::Model::Serializable; end
    class Size < Lutaml::Model::Serializable; end
    class Source < Lutaml::Model::Serializable; end
    class Speaker < Lutaml::Model::Serializable; end
    class Speech < Lutaml::Model::Serializable; end
    class State < Lutaml::Model::Serializable; end
    class Statement < Lutaml::Model::Serializable; end
    class Std < Lutaml::Model::Serializable; end
    class StdOrganization < Lutaml::Model::Serializable; end
    class Strike < Lutaml::Model::Serializable; end
    class StringConf < Lutaml::Model::Serializable; end
    class StringDate < Lutaml::Model::Serializable; end
    class StringName < Lutaml::Model::Serializable; end
    class StyledContent < Lutaml::Model::Serializable; end
    class Sub < Lutaml::Model::Serializable; end
    class SubArticle < Lutaml::Model::Serializable; end
    class SubjGroup < Lutaml::Model::Serializable; end
    class Subject < Lutaml::Model::Serializable; end
    class Subtitle < Lutaml::Model::Serializable; end
    class Suffix < Lutaml::Model::Serializable; end
    class Sup < Lutaml::Model::Serializable; end
    class Supplement < Lutaml::Model::Serializable; end
    class SupplementaryMaterial < Lutaml::Model::Serializable; end
    class SupportDescription < Lutaml::Model::Serializable; end
    class SupportGroup < Lutaml::Model::Serializable; end
    class SupportSource < Lutaml::Model::Serializable; end
    class Surname < Lutaml::Model::Serializable; end
    class Table < Lutaml::Model::Serializable; end
    class TableCount < Lutaml::Model::Serializable; end
    class TableWrap < Lutaml::Model::Serializable; end
    class TableWrapFoot < Lutaml::Model::Serializable; end
    class TableWrapGroup < Lutaml::Model::Serializable; end
    class Target < Lutaml::Model::Serializable; end
    class Tbody < Lutaml::Model::Serializable; end
    class Td < Lutaml::Model::Serializable; end
    class Term < Lutaml::Model::Serializable; end
    class TermHead < Lutaml::Model::Serializable; end
    class TexMath < Lutaml::Model::Serializable; end
    class TextualForm < Lutaml::Model::Serializable; end
    class Tfoot < Lutaml::Model::Serializable; end
    class Th < Lutaml::Model::Serializable; end
    class Thead < Lutaml::Model::Serializable; end
    class TimeStamp < Lutaml::Model::Serializable; end
    class Title < Lutaml::Model::Serializable; end
    class TitleGroup < Lutaml::Model::Serializable; end
    class Tr < Lutaml::Model::Serializable; end
    class TransAbstract < Lutaml::Model::Serializable; end
    class TransSource < Lutaml::Model::Serializable; end
    class TransSubtitle < Lutaml::Model::Serializable; end
    class TransTitle < Lutaml::Model::Serializable; end
    class TransTitleGroup < Lutaml::Model::Serializable; end
    class Underline < Lutaml::Model::Serializable; end
    class UnderlineEnd < Lutaml::Model::Serializable; end
    class UnderlineStart < Lutaml::Model::Serializable; end
    class UnstructuredKwdGroup < Lutaml::Model::Serializable; end
    class Uri < Lutaml::Model::Serializable; end
    class VerseGroup < Lutaml::Model::Serializable; end
    class VerseLine < Lutaml::Model::Serializable; end
    class VersionElement < Lutaml::Model::Serializable; end
    class Volume < Lutaml::Model::Serializable; end
    class VolumeId < Lutaml::Model::Serializable; end
    class VolumeIssueGroup < Lutaml::Model::Serializable; end
    class VolumeSeries < Lutaml::Model::Serializable; end
    class WordCount < Lutaml::Model::Serializable; end
    class X < Lutaml::Model::Serializable; end
    class Xref < Lutaml::Model::Serializable; end
    class Year < Lutaml::Model::Serializable; end
  end
end

require_relative 'jats/version'
require_relative 'jats/std'
require_relative 'jats/bold'
require_relative 'jats/abbrev'
require_relative 'jats/def'
require_relative 'jats/paragraph'
require_relative 'jats/address'
require_relative 'jats/addr_line'
require_relative 'jats/alternatives'
require_relative 'jats/array'
require_relative 'jats/alt_text'
require_relative 'jats/attrib'
require_relative 'jats/chem_struct'
require_relative 'jats/break'
require_relative 'jats/code'
require_relative 'jats/email'
require_relative 'jats/ext_link'
require_relative 'jats/fixed_case'
require_relative 'jats/fn'
require_relative 'jats/index_term'
require_relative 'jats/see'
require_relative 'jats/disp_formula'
require_relative 'jats/abstract'
require_relative 'jats/label'
require_relative 'jats/inline_formula'
require_relative 'jats/inline_graphic'
require_relative 'jats/long_desc'
require_relative 'jats/inline_media'
require_relative 'jats/italic'
require_relative 'jats/index_term_range_end'
require_relative 'jats/inline_supplementary_material'
require_relative 'jats/monospace'
require_relative 'jats/milestone_end'
require_relative 'jats/milestone_start'
require_relative 'jats/named_content'
require_relative 'jats/answer'
require_relative 'jats/alt_title'
require_relative 'jats/overline'
require_relative 'jats/private_char'
require_relative 'jats/glyph_data'
require_relative 'jats/glyph_ref'
require_relative 'jats/related_article'
require_relative 'jats/annotation'
require_relative 'jats/article_title'
require_relative 'jats/basic_text'
require_relative 'jats/chapter_title'
require_relative 'jats/roman'
require_relative 'jats/related_object'
require_relative 'jats/collab'
require_relative 'jats/aff'
require_relative 'jats/city'
require_relative 'jats/country'
require_relative 'jats/fax'
require_relative 'jats/institution'
require_relative 'jats/sub'
require_relative 'jats/ruby'
require_relative 'jats/rb'
require_relative 'jats/sans_serif'
require_relative 'jats/sc'
require_relative 'jats/strike'
require_relative 'jats/styled_content'
require_relative 'jats/answer_set'
require_relative 'jats/explanation'
require_relative 'jats/block_alternatives'
require_relative 'jats/boxed_text'
require_relative 'jats/caption'
require_relative 'jats/title'
require_relative 'jats/citation_alternatives'
require_relative 'jats/element_citation'
require_relative 'jats/collab_alternatives'
require_relative 'jats/comment'
require_relative 'jats/sup'
require_relative 'jats/target'
require_relative 'jats/underline'
require_relative 'jats/tex_math'
require_relative 'jats/uri'
require_relative 'jats/xref'
require_relative 'jats/conf_acronym'
require_relative 'jats/conf_date'
require_relative 'jats/conf_loc'
require_relative 'jats/institution_wrap'
require_relative 'jats/institution_id'
require_relative 'jats/phone'
require_relative 'jats/postal_code'
require_relative 'jats/state'
require_relative 'jats/conf_name'
require_relative 'jats/conf_sponsor'
require_relative 'jats/data_title'
require_relative 'jats/date'
require_relative 'jats/day'
require_relative 'jats/era'
require_relative 'jats/month'
require_relative 'jats/season'
require_relative 'jats/year'
require_relative 'jats/date_in_citation'
require_relative 'jats/edition'
require_relative 'jats/elocation_id'
require_relative 'jats/etal'
require_relative 'jats/fpage'
require_relative 'jats/gov'
require_relative 'jats/isbn'
require_relative 'jats/issn'
require_relative 'jats/issn_l'
require_relative 'jats/issue'
require_relative 'jats/issue_id'
require_relative 'jats/issue_part'
require_relative 'jats/issue_title'
require_relative 'jats/lpage'
require_relative 'jats/name'
require_relative 'jats/given_names'
require_relative 'jats/prefix'
require_relative 'jats/suffix'
require_relative 'jats/surname'
require_relative 'jats/name_alternatives'
require_relative 'jats/string_name'
require_relative 'jats/degrees'
require_relative 'jats/object_id'
require_relative 'jats/page_range'
require_relative 'jats/part_title'
require_relative 'jats/patent'
require_relative 'jats/person_group'
require_relative 'jats/aff_alternatives'
require_relative 'jats/anonymous'
require_relative 'jats/role'
require_relative 'jats/pub_id'
require_relative 'jats/publisher_loc'
require_relative 'jats/publisher_name'
require_relative 'jats/series'
require_relative 'jats/size'
require_relative 'jats/source'
require_relative 'jats/string_date'
require_relative 'jats/supplement'
require_relative 'jats/contrib_group'
require_relative 'jats/author_comment'
require_relative 'jats/bio'
require_relative 'jats/chem_struct_wrap'
require_relative 'jats/graphic'
require_relative 'jats/kwd_group'
require_relative 'jats/compound_kwd'
require_relative 'jats/compound_kwd_part'
require_relative 'jats/kwd'
require_relative 'jats/nested_kwd'
require_relative 'jats/permissions'
require_relative 'jats/copyright_holder'
require_relative 'jats/copyright_statement'
require_relative 'jats/copyright_year'
require_relative 'jats/license'
require_relative 'jats/license_paragraph'
require_relative 'jats/price'
require_relative 'jats/subj_group'
require_relative 'jats/compound_subject'
require_relative 'jats/compound_subject_part'
require_relative 'jats/subject'
require_relative 'jats/media'
require_relative 'jats/preformat'
require_relative 'jats/textual_form'
require_relative 'jats/def_list'
require_relative 'jats/def_head'
require_relative 'jats/def_item'
require_relative 'jats/term'
require_relative 'jats/disp_formula_group'
require_relative 'jats/term_head'
require_relative 'jats/disp_quote'
require_relative 'jats/fig'
require_relative 'jats/list'
require_relative 'jats/list_item'
require_relative 'jats/speech'
require_relative 'jats/speaker'
require_relative 'jats/statement'
require_relative 'jats/table_wrap'
require_relative 'jats/table'
require_relative 'jats/col'
require_relative 'jats/colgroup'
require_relative 'jats/tbody'
require_relative 'jats/tr'
require_relative 'jats/td'
require_relative 'jats/hr'
require_relative 'jats/mixed_citation'
require_relative 'jats/trans_source'
require_relative 'jats/trans_title'
require_relative 'jats/volume'
require_relative 'jats/volume_id'
require_relative 'jats/volume_series'
require_relative 'jats/nlm_citation'
require_relative 'jats/access_date'
require_relative 'jats/page_count'
require_relative 'jats/time_stamp'
require_relative 'jats/question'
require_relative 'jats/fig_group'
require_relative 'jats/fn_group'
require_relative 'jats/glossary'
require_relative 'jats/question_wrap'
require_relative 'jats/question_wrap_group'
require_relative 'jats/question_preamble'
require_relative 'jats/sec'
require_relative 'jats/ref_list'
require_relative 'jats/ref'
require_relative 'jats/note'
require_relative 'jats/product'
require_relative 'jats/supplementary_material'
require_relative 'jats/verse_group'
require_relative 'jats/subtitle'
require_relative 'jats/verse_line'
require_relative 'jats/table_wrap_group'
require_relative 'jats/sec_meta'
require_relative 'jats/option'
require_relative 'jats/th'
require_relative 'jats/tfoot'
require_relative 'jats/thead'
require_relative 'jats/table_wrap_foot'
require_relative 'jats/contrib'
require_relative 'jats/contrib_id'
require_relative 'jats/on_behalf_of'
require_relative 'jats/rt'
require_relative 'jats/see_also'
require_relative 'jats/award_id'
require_relative 'jats/funding_source'
require_relative 'jats/open_access'
require_relative 'jats/std_organization'
require_relative 'jats/include_basic_text'
