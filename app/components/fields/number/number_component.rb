# frozen_string_literal: true

class Fields::Number::NumberComponent < ViewComponent::Base # :nodoc:
  def initialize(model, field)
    @model = model
    @field = field
  end

  attr_reader :model, :field
end
