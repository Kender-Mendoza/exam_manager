# frozen_string_literal: true

class Navbar::NavbarComponent < ViewComponent::Base # :nodoc:
  attr_reader :current_user, :signed_in

  def initialize(current_user:, signed_in: false)
    @current_user = current_user
    @signed_in = signed_in
  end

  def drop_down_menu_options
    [{ link_content: 'Profil', link_path: '' }]
  end

  def options
    return unsigned_in_options unless signed_in?
    return admin_user_options if current_user.admin?

    default_user_options
  end

  def admin_user_options
    [{ link_content: 'Home', link_path: homes_path },
     { link_content: 'Exams', link_path: exams_path }]
  end

  def default_user_options
    [{ link_content: 'Home', link_path: exams_path }]
  end

  def unsigned_in_options
    [{ link_content: 'Sign up', link_path: new_user_registration_path }]
  end

  def signed_in?
    signed_in
  end
end
