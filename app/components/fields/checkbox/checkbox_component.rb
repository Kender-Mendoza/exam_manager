# frozen_string_literal: true

class Fields::Checkbox::CheckboxComponent < ViewComponent::Base # :nodoc:
  def initialize(model, field, note)
    @model = model
    @field = field
    @note = note
  end

  attr_reader :model, :field, :note
end
