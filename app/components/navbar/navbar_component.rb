# frozen_string_literal: true

class Navbar::NavbarComponent < ViewComponent::Base # :nodoc:
  attr_reader :options, :current_user, :signed_in

  def initialize(current_user:, signed_in: false, options: [])
    @options = options
    @current_user = current_user
    @signed_in = signed_in
  end

  def drop_down_menu_options
    []
  end

  def page_sections
    return options if signed_in?

    [{ link_content: 'Sign up', link_path: new_user_registration_path }]
  end

  def signed_in?
    signed_in
  end
end
