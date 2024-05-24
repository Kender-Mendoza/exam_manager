# frozen_string_literal: true

class Fields::Select::SelectComponent < ViewComponent::Base # :nodoc:
  def initialize(model, field, options, data: {})
    @model = model
    @field = field
    @options = options
    @data = data
  end

  attr_reader :model, :field, :options, :data
end
