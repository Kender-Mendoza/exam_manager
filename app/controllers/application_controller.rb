# frozen_string_literal: true

class ApplicationController < ActionController::Base # :nodoc:
  before_action :authenticate_user!

  def redirect_default_user
    return if current_user.admin?

    redirect_back(fallback_location: exams_path)
  end
end
