# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Navbar::NavbarComponent, type: :component do
  let(:current_user) { create(:user, :admin) }
  let(:options) do
    [
      { link_content: 'Home', link_path: '/' },
      { link_content: 'About', link_path: '/about' }
    ]
  end

  context 'when user is signed in' do
    before do
      sign_in current_user
    end

    it 'renders the navbar with options and dropdown menu' do
      render_inline(described_class.new(current_user:, signed_in: true, options:))

      expect(page).to have_link('Home', href: '/')
      expect(page).to have_link('About', href: '/about')
      expect(page).to have_selector(:link_or_button, 'Sign out')
    end
  end

  context 'when user is not signed in' do
    it 'renders the navbar with options and sign up link' do
      render_inline(described_class.new(current_user:, signed_in: false, options:))

      expect(page).to_not have_link('Home', href: '/')
      expect(page).to_not have_link('About', href: '/about')
      expect(page).to have_link('Sign up', href: new_user_registration_path)
    end
  end
end
