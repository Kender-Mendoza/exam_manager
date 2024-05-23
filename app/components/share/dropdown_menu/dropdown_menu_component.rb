# frozen_string_literal: true

class Share::DropdownMenu::DropdownMenuComponent < ViewComponent::Base # :nodoc:
  attr_reader :current_user_name, :options, :add_sing_out

  def initialize(current_user:, options: [], add_sing_out: false)
    @current_user_name = "#{current_user.name} #{current_user.last_name}"
    @options = options
    @add_sing_out = add_sing_out
  end
end
