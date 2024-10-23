# frozen_string_literal: true

require "lutaml/model"

Lutaml::Model::Config.configure do |config|
  require "lutaml/model/xml_adapter/nokogiri_adapter"
  config.xml_adapter = Lutaml::Model::XmlAdapter::NokogiriAdapter
end

module Niso
  module Jats
    class Error < StandardError; end

    LibJatsPath = File.dirname(__FILE__) + '/jats'

    autoload :Abbrev, "#{LibJatsPath}/abbrev.rb"
    autoload :AbbrevJournalTitle, "#{LibJatsPath}/abbrev_journal_title.rb"
    autoload :Abstract, "#{LibJatsPath}/abstract.rb"
    autoload :AccessDate, "#{LibJatsPath}/access_date.rb"
    autoload :Ack, "#{LibJatsPath}/ack.rb"
    autoload :AddrLine, "#{LibJatsPath}/addr_line.rb"
    autoload :Address, "#{LibJatsPath}/address.rb"
    autoload :Aff, "#{LibJatsPath}/aff.rb"
    autoload :AffAlternatives, "#{LibJatsPath}/aff_alternatives.rb"
    autoload :AltText, "#{LibJatsPath}/alt_text.rb"
    autoload :AltTitle, "#{LibJatsPath}/alt_title.rb"
    autoload :Alternatives, "#{LibJatsPath}/alternatives.rb"
    autoload :Annotation, "#{LibJatsPath}/annotation.rb"
    autoload :Anonymous, "#{LibJatsPath}/anonymous.rb"
    autoload :Answer, "#{LibJatsPath}/answer.rb"
    autoload :AnswerSet, "#{LibJatsPath}/answer_set.rb"
    autoload :App, "#{LibJatsPath}/app.rb"
    autoload :AppGroup, "#{LibJatsPath}/app_group.rb"
    autoload :Array, "#{LibJatsPath}/array.rb"
    autoload :Article, "#{LibJatsPath}/article.rb"
    autoload :ArticleCategories, "#{LibJatsPath}/article_categories.rb"
    autoload :ArticleId, "#{LibJatsPath}/article_id.rb"
    autoload :ArticleMeta, "#{LibJatsPath}/article_meta.rb"
    autoload :ArticleTitle, "#{LibJatsPath}/article_title.rb"
    autoload :ArticleVersion, "#{LibJatsPath}/article_version.rb"
    autoload :ArticleVersionAlternatives, "#{LibJatsPath}/article_version_alternatives.rb"
    autoload :Attrib, "#{LibJatsPath}/attrib.rb"
    autoload :AuthorComment, "#{LibJatsPath}/author_comment.rb"
    autoload :AuthorNotes, "#{LibJatsPath}/author_notes.rb"
    autoload :AwardDesc, "#{LibJatsPath}/award_desc.rb"
    autoload :AwardGroup, "#{LibJatsPath}/award_group.rb"
    autoload :AwardId, "#{LibJatsPath}/award_id.rb"
    autoload :AwardName, "#{LibJatsPath}/award_name.rb"
    autoload :Back, "#{LibJatsPath}/back.rb"
    autoload :BasicText, "#{LibJatsPath}/basic_text.rb"
    autoload :Bio, "#{LibJatsPath}/bio.rb"
    autoload :BlockAlternatives, "#{LibJatsPath}/block_alternatives.rb"
    autoload :Body, "#{LibJatsPath}/body.rb"
    autoload :Bold, "#{LibJatsPath}/bold.rb"
    autoload :BoxedText, "#{LibJatsPath}/boxed_text.rb"
    autoload :Break, "#{LibJatsPath}/break.rb"
    autoload :Caption, "#{LibJatsPath}/caption.rb"
    autoload :ChapterTitle, "#{LibJatsPath}/chapter_title.rb"
    autoload :ChemStruct, "#{LibJatsPath}/chem_struct.rb"
    autoload :ChemStructWrap, "#{LibJatsPath}/chem_struct_wrap.rb"
    autoload :CitationAlternatives, "#{LibJatsPath}/citation_alternatives.rb"
    autoload :City, "#{LibJatsPath}/city.rb"
    autoload :Code, "#{LibJatsPath}/code.rb"
    autoload :Col, "#{LibJatsPath}/col.rb"
    autoload :Colgroup, "#{LibJatsPath}/colgroup.rb"
    autoload :Collab, "#{LibJatsPath}/collab.rb"
    autoload :CollabAlternatives, "#{LibJatsPath}/collab_alternatives.rb"
    autoload :Comment, "#{LibJatsPath}/comment.rb"
    autoload :CompoundKwd, "#{LibJatsPath}/compound_kwd.rb"
    autoload :CompoundKwdPart, "#{LibJatsPath}/compound_kwd_part.rb"
    autoload :CompoundSubject, "#{LibJatsPath}/compound_subject.rb"
    autoload :CompoundSubjectPart, "#{LibJatsPath}/compound_subject_part.rb"
    autoload :ConfAcronym, "#{LibJatsPath}/conf_acronym.rb"
    autoload :ConfDate, "#{LibJatsPath}/conf_date.rb"
    autoload :ConfLoc, "#{LibJatsPath}/conf_loc.rb"
    autoload :ConfName, "#{LibJatsPath}/conf_name.rb"
    autoload :ConfNum, "#{LibJatsPath}/conf_num.rb"
    autoload :ConfSponsor, "#{LibJatsPath}/conf_sponsor.rb"
    autoload :ConfTheme, "#{LibJatsPath}/conf_theme.rb"
    autoload :Conference, "#{LibJatsPath}/conference.rb"
    autoload :Contrib, "#{LibJatsPath}/contrib.rb"
    autoload :ContribGroup, "#{LibJatsPath}/contrib_group.rb"
    autoload :ContribId, "#{LibJatsPath}/contrib_id.rb"
    autoload :ContributedResourceGroup, "#{LibJatsPath}/contributed_resource_group.rb"
    autoload :CopyrightHolder, "#{LibJatsPath}/copyright_holder.rb"
    autoload :CopyrightStatement, "#{LibJatsPath}/copyright_statement.rb"
    autoload :CopyrightYear, "#{LibJatsPath}/copyright_year.rb"
    autoload :Corresp, "#{LibJatsPath}/corresp.rb"
    autoload :Count, "#{LibJatsPath}/count.rb"
    autoload :Country, "#{LibJatsPath}/country.rb"
    autoload :Counts, "#{LibJatsPath}/counts.rb"
    autoload :CustomMeta, "#{LibJatsPath}/custom_meta.rb"
    autoload :CustomMetaGroup, "#{LibJatsPath}/custom_meta_group.rb"
    autoload :DataTitle, "#{LibJatsPath}/data_title.rb"
    autoload :Date, "#{LibJatsPath}/date.rb"
    autoload :DateInCitation, "#{LibJatsPath}/date_in_citation.rb"
    autoload :Day, "#{LibJatsPath}/day.rb"
    autoload :Def, "#{LibJatsPath}/def.rb"
    autoload :DefHead, "#{LibJatsPath}/def_head.rb"
    autoload :DefItem, "#{LibJatsPath}/def_item.rb"
    autoload :DefList, "#{LibJatsPath}/def_list.rb"
    autoload :Degrees, "#{LibJatsPath}/degrees.rb"
    autoload :DispFormula, "#{LibJatsPath}/disp_formula.rb"
    autoload :DispFormulaGroup, "#{LibJatsPath}/disp_formula_group.rb"
    autoload :DispQuote, "#{LibJatsPath}/disp_quote.rb"
    autoload :Edition, "#{LibJatsPath}/edition.rb"
    autoload :ElementCitation, "#{LibJatsPath}/element_citation.rb"
    autoload :ElocationId, "#{LibJatsPath}/elocation_id.rb"
    autoload :Email, "#{LibJatsPath}/email.rb"
    autoload :EquationCount, "#{LibJatsPath}/equation_count.rb"
    autoload :Era, "#{LibJatsPath}/era.rb"
    autoload :Etal, "#{LibJatsPath}/etal.rb"
    autoload :Event, "#{LibJatsPath}/event.rb"
    autoload :EventDesc, "#{LibJatsPath}/event_desc.rb"
    autoload :Explanation, "#{LibJatsPath}/explanation.rb"
    autoload :ExtLink, "#{LibJatsPath}/ext_link.rb"
    autoload :ExtendedBy, "#{LibJatsPath}/extended_by.rb"
    autoload :Fax, "#{LibJatsPath}/fax.rb"
    autoload :Fig, "#{LibJatsPath}/fig.rb"
    autoload :FigCount, "#{LibJatsPath}/fig_count.rb"
    autoload :FigGroup, "#{LibJatsPath}/fig_group.rb"
    autoload :FixedCase, "#{LibJatsPath}/fixed_case.rb"
    autoload :FloatsGroup, "#{LibJatsPath}/floats_group.rb"
    autoload :Fn, "#{LibJatsPath}/fn.rb"
    autoload :FnGroup, "#{LibJatsPath}/fn_group.rb"
    autoload :Fpage, "#{LibJatsPath}/fpage.rb"
    autoload :Front, "#{LibJatsPath}/front.rb"
    autoload :FrontStub, "#{LibJatsPath}/front_stub.rb"
    autoload :FundingGroup, "#{LibJatsPath}/funding_group.rb"
    autoload :FundingSource, "#{LibJatsPath}/funding_source.rb"
    autoload :FundingStatement, "#{LibJatsPath}/funding_statement.rb"
    autoload :GivenNames, "#{LibJatsPath}/given_names.rb"
    autoload :Glossary, "#{LibJatsPath}/glossary.rb"
    autoload :GlyphData, "#{LibJatsPath}/glyph_data.rb"
    autoload :GlyphRef, "#{LibJatsPath}/glyph_ref.rb"
    autoload :Gov, "#{LibJatsPath}/gov.rb"
    autoload :Graphic, "#{LibJatsPath}/graphic.rb"
    autoload :History, "#{LibJatsPath}/history.rb"
    autoload :Hr, "#{LibJatsPath}/hr.rb"
    autoload :IndexTerm, "#{LibJatsPath}/index_term.rb"
    autoload :IndexTermRangeEnd, "#{LibJatsPath}/index_term_range_end.rb"
    autoload :InlineFormula, "#{LibJatsPath}/inline_formula.rb"
    autoload :InlineGraphic, "#{LibJatsPath}/inline_graphic.rb"
    autoload :InlineMedia, "#{LibJatsPath}/inline_media.rb"
    autoload :InlineSupplementaryMaterial, "#{LibJatsPath}/inline_supplementary_material.rb"
    autoload :Institution, "#{LibJatsPath}/institution.rb"
    autoload :InstitutionId, "#{LibJatsPath}/institution_id.rb"
    autoload :InstitutionWrap, "#{LibJatsPath}/institution_wrap.rb"
    autoload :Isbn, "#{LibJatsPath}/isbn.rb"
    autoload :Issn, "#{LibJatsPath}/issn.rb"
    autoload :IssnL, "#{LibJatsPath}/issn_l.rb"
    autoload :Issue, "#{LibJatsPath}/issue.rb"
    autoload :IssueId, "#{LibJatsPath}/issue_id.rb"
    autoload :IssuePart, "#{LibJatsPath}/issue_part.rb"
    autoload :IssueSponsor, "#{LibJatsPath}/issue_sponsor.rb"
    autoload :IssueSubtitle, "#{LibJatsPath}/issue_subtitle.rb"
    autoload :IssueTitle, "#{LibJatsPath}/issue_title.rb"
    autoload :IssueTitleGroup, "#{LibJatsPath}/issue_title_group.rb"
    autoload :Italic, "#{LibJatsPath}/italic.rb"
    autoload :JournalId, "#{LibJatsPath}/journal_id.rb"
    autoload :JournalMeta, "#{LibJatsPath}/journal_meta.rb"
    autoload :JournalSubtitle, "#{LibJatsPath}/journal_subtitle.rb"
    autoload :JournalTitle, "#{LibJatsPath}/journal_title.rb"
    autoload :JournalTitleGroup, "#{LibJatsPath}/journal_title_group.rb"
    autoload :Kwd, "#{LibJatsPath}/kwd.rb"
    autoload :KwdGroup, "#{LibJatsPath}/kwd_group.rb"
    autoload :Label, "#{LibJatsPath}/label.rb"
    autoload :License, "#{LibJatsPath}/license.rb"
    autoload :LicenseParagraph, "#{LibJatsPath}/license_paragraph.rb"
    autoload :List, "#{LibJatsPath}/list.rb"
    autoload :ListItem, "#{LibJatsPath}/list_item.rb"
    autoload :LongDesc, "#{LibJatsPath}/long_desc.rb"
    autoload :Lpage, "#{LibJatsPath}/lpage.rb"
    autoload :Media, "#{LibJatsPath}/media.rb"
    autoload :MetaName, "#{LibJatsPath}/meta_name.rb"
    autoload :MetaValue, "#{LibJatsPath}/meta_value.rb"
    autoload :MilestoneEnd, "#{LibJatsPath}/milestone_end.rb"
    autoload :MilestoneStart, "#{LibJatsPath}/milestone_start.rb"
    autoload :MixedCitation, "#{LibJatsPath}/mixed_citation.rb"
    autoload :Monospace, "#{LibJatsPath}/monospace.rb"
    autoload :Month, "#{LibJatsPath}/month.rb"
    autoload :Name, "#{LibJatsPath}/name.rb"
    autoload :NameAlternatives, "#{LibJatsPath}/name_alternatives.rb"
    autoload :NamedContent, "#{LibJatsPath}/named_content.rb"
    autoload :NestedKwd, "#{LibJatsPath}/nested_kwd.rb"
    autoload :NlmCitation, "#{LibJatsPath}/nlm_citation.rb"
    autoload :Note, "#{LibJatsPath}/note.rb"
    autoload :Notes, "#{LibJatsPath}/notes.rb"
    autoload :ObjectId, "#{LibJatsPath}/object_id.rb"
    autoload :OnBehalfOf, "#{LibJatsPath}/on_behalf_of.rb"
    autoload :OpenAccess, "#{LibJatsPath}/open_access.rb"
    autoload :Option, "#{LibJatsPath}/option.rb"
    autoload :Overline, "#{LibJatsPath}/overline.rb"
    autoload :PageCount, "#{LibJatsPath}/page_count.rb"
    autoload :PageRange, "#{LibJatsPath}/page_range.rb"
    autoload :Paragraph, "#{LibJatsPath}/paragraph.rb"
    autoload :PartTitle, "#{LibJatsPath}/part_title.rb"
    autoload :Patent, "#{LibJatsPath}/patent.rb"
    autoload :Permissions, "#{LibJatsPath}/permissions.rb"
    autoload :PersonGroup, "#{LibJatsPath}/person_group.rb"
    autoload :Phone, "#{LibJatsPath}/phone.rb"
    autoload :PostalCode, "#{LibJatsPath}/postal_code.rb"
    autoload :Prefix, "#{LibJatsPath}/prefix.rb"
    autoload :Preformat, "#{LibJatsPath}/preformat.rb"
    autoload :Price, "#{LibJatsPath}/price.rb"
    autoload :PrincipalAwardRecipient, "#{LibJatsPath}/principal_award_recipient.rb"
    autoload :PrincipalInvestigator, "#{LibJatsPath}/principal_investigator.rb"
    autoload :PrivateChar, "#{LibJatsPath}/private_char.rb"
    autoload :ProcessingMeta, "#{LibJatsPath}/processing_meta.rb"
    autoload :Product, "#{LibJatsPath}/product.rb"
    autoload :PubDate, "#{LibJatsPath}/pub_date.rb"
    autoload :PubDateNotAvailable, "#{LibJatsPath}/pub_date_not_available.rb"
    autoload :PubHistory, "#{LibJatsPath}/pub_history.rb"
    autoload :PubId, "#{LibJatsPath}/pub_id.rb"
    autoload :Publisher, "#{LibJatsPath}/publisher.rb"
    autoload :PublisherLoc, "#{LibJatsPath}/publisher_loc.rb"
    autoload :PublisherName, "#{LibJatsPath}/publisher_name.rb"
    autoload :Question, "#{LibJatsPath}/question.rb"
    autoload :QuestionPreamble, "#{LibJatsPath}/question_preamble.rb"
    autoload :QuestionWrap, "#{LibJatsPath}/question_wrap.rb"
    autoload :QuestionWrapGroup, "#{LibJatsPath}/question_wrap_group.rb"
    autoload :Rb, "#{LibJatsPath}/rb.rb"
    autoload :Ref, "#{LibJatsPath}/ref.rb"
    autoload :RefCount, "#{LibJatsPath}/ref_count.rb"
    autoload :RefList, "#{LibJatsPath}/ref_list.rb"
    autoload :RelatedArticle, "#{LibJatsPath}/related_article.rb"
    autoload :RelatedObject, "#{LibJatsPath}/related_object.rb"
    autoload :ResourceGroup, "#{LibJatsPath}/resource_group.rb"
    autoload :ResourceId, "#{LibJatsPath}/resource_id.rb"
    autoload :ResourceName, "#{LibJatsPath}/resource_name.rb"
    autoload :ResourceWrap, "#{LibJatsPath}/resource_wrap.rb"
    autoload :Response, "#{LibJatsPath}/response.rb"
    autoload :RestrictedBy, "#{LibJatsPath}/restricted_by.rb"
    autoload :Role, "#{LibJatsPath}/role.rb"
    autoload :Roman, "#{LibJatsPath}/roman.rb"
    autoload :Rt, "#{LibJatsPath}/rt.rb"
    autoload :Ruby, "#{LibJatsPath}/ruby.rb"
    autoload :SansSerif, "#{LibJatsPath}/sans_serif.rb"
    autoload :Sc, "#{LibJatsPath}/sc.rb"
    autoload :Season, "#{LibJatsPath}/season.rb"
    autoload :Sec, "#{LibJatsPath}/sec.rb"
    autoload :SecMeta, "#{LibJatsPath}/sec_meta.rb"
    autoload :See, "#{LibJatsPath}/see.rb"
    autoload :SeeAlso, "#{LibJatsPath}/see_also.rb"
    autoload :SelfUri, "#{LibJatsPath}/self_uri.rb"
    autoload :Series, "#{LibJatsPath}/series.rb"
    autoload :SeriesText, "#{LibJatsPath}/series_text.rb"
    autoload :SeriesTitle, "#{LibJatsPath}/series_title.rb"
    autoload :Sig, "#{LibJatsPath}/sig.rb"
    autoload :SigBlock, "#{LibJatsPath}/sig_block.rb"
    autoload :Size, "#{LibJatsPath}/size.rb"
    autoload :Source, "#{LibJatsPath}/source.rb"
    autoload :Speaker, "#{LibJatsPath}/speaker.rb"
    autoload :Speech, "#{LibJatsPath}/speech.rb"
    autoload :State, "#{LibJatsPath}/state.rb"
    autoload :Statement, "#{LibJatsPath}/statement.rb"
    autoload :Std, "#{LibJatsPath}/std.rb"
    autoload :StdOrganization, "#{LibJatsPath}/std_organization.rb"
    autoload :Strike, "#{LibJatsPath}/strike.rb"
    autoload :StringDate, "#{LibJatsPath}/string_date.rb"
    autoload :StringName, "#{LibJatsPath}/string_name.rb"
    autoload :StyledContent, "#{LibJatsPath}/styled_content.rb"
    autoload :Sub, "#{LibJatsPath}/sub.rb"
    autoload :SubArticle, "#{LibJatsPath}/sub_article.rb"
    autoload :SubjGroup, "#{LibJatsPath}/subj_group.rb"
    autoload :Subject, "#{LibJatsPath}/subject.rb"
    autoload :Subtitle, "#{LibJatsPath}/subtitle.rb"
    autoload :Suffix, "#{LibJatsPath}/suffix.rb"
    autoload :Sup, "#{LibJatsPath}/sup.rb"
    autoload :Supplement, "#{LibJatsPath}/supplement.rb"
    autoload :SupplementaryMaterial, "#{LibJatsPath}/supplementary_material.rb"
    autoload :SupportDescription, "#{LibJatsPath}/support_description.rb"
    autoload :SupportGroup, "#{LibJatsPath}/support_group.rb"
    autoload :SupportSource, "#{LibJatsPath}/support_source.rb"
    autoload :Surname, "#{LibJatsPath}/surname.rb"
    autoload :Table, "#{LibJatsPath}/table.rb"
    autoload :TableCount, "#{LibJatsPath}/table_count.rb"
    autoload :TableWrap, "#{LibJatsPath}/table_wrap.rb"
    autoload :TableWrapFoot, "#{LibJatsPath}/table_wrap_foot.rb"
    autoload :TableWrapGroup, "#{LibJatsPath}/table_wrap_group.rb"
    autoload :Target, "#{LibJatsPath}/target.rb"
    autoload :Tbody, "#{LibJatsPath}/tbody.rb"
    autoload :Td, "#{LibJatsPath}/td.rb"
    autoload :Term, "#{LibJatsPath}/term.rb"
    autoload :TermHead, "#{LibJatsPath}/term_head.rb"
    autoload :TexMath, "#{LibJatsPath}/tex_math.rb"
    autoload :TextualForm, "#{LibJatsPath}/textual_form.rb"
    autoload :Tfoot, "#{LibJatsPath}/tfoot.rb"
    autoload :Th, "#{LibJatsPath}/th.rb"
    autoload :Thead, "#{LibJatsPath}/thead.rb"
    autoload :TimeStamp, "#{LibJatsPath}/time_stamp.rb"
    autoload :Title, "#{LibJatsPath}/title.rb"
    autoload :TitleGroup, "#{LibJatsPath}/title_group.rb"
    autoload :Tr, "#{LibJatsPath}/tr.rb"
    autoload :TransAbstract, "#{LibJatsPath}/trans_abstract.rb"
    autoload :TransSource, "#{LibJatsPath}/trans_source.rb"
    autoload :TransSubtitle, "#{LibJatsPath}/trans_subtitle.rb"
    autoload :TransTitle, "#{LibJatsPath}/trans_title.rb"
    autoload :TransTitleGroup, "#{LibJatsPath}/trans_title_group.rb"
    autoload :Underline, "#{LibJatsPath}/underline.rb"
    autoload :Uri, "#{LibJatsPath}/uri.rb"
    autoload :VerseGroup, "#{LibJatsPath}/verse_group.rb"
    autoload :VerseLine, "#{LibJatsPath}/verse_line.rb"
    autoload :Version, "#{LibJatsPath}/version.rb"
    autoload :Volume, "#{LibJatsPath}/volume.rb"
    autoload :VolumeId, "#{LibJatsPath}/volume_id.rb"
    autoload :VolumeIssueGroup, "#{LibJatsPath}/volume_issue_group.rb"
    autoload :VolumeSeries, "#{LibJatsPath}/volume_series.rb"
    autoload :WordCount, "#{LibJatsPath}/word_count.rb"
    autoload :Xref, "#{LibJatsPath}/xref.rb"
    autoload :Year, "#{LibJatsPath}/year.rb"
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
