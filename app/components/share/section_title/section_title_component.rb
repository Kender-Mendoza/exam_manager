# frozen_string_literal: true

class Share::SectionTitle::SectionTitleComponent < ViewComponent::Base # :nodoc:
  attr_reader :section_title

  def initialize(section_title:)
    @section_title = section_title
  end
end
