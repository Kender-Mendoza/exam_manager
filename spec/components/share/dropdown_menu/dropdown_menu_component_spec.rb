# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Share::DropdownMenu::DropdownMenuComponent, type: :component do
  let(:current_user) { OpenStruct.new(name: 'John', last_name: 'Doe') }
  let(:options) do
    [
      { link_path: '/profile', link_content: 'Profile' },
      { link_path: '/settings', link_content: 'Settings' }
    ]
  end

  context 'without sign out option' do
    it 'renders the dropdown menu with user name and options' do
      rendered_component =
        render_inline(Share::DropdownMenu::DropdownMenuComponent.new(current_user:, options:,
                                                                     add_sing_out: false))

      rendered = Capybara::Node::Simple.new(rendered_component)

      expect(rendered).to have_text('John Doe')
      options.each do |option|
        expect(rendered).to have_link(
          option[:link_content], href: option[:link_path]
        )
      end
      expect(rendered).not_to have_button('Sign out')
    end
  end

  context 'with sign out option' do
    it 'renders the dropdown menu with user name, options, and sign out button' do
      rendered_component =
        render_inline(Share::DropdownMenu::DropdownMenuComponent.new(current_user:, options:,
                                                                     add_sing_out: true))

      rendered = Capybara::Node::Simple.new(rendered_component)

      expect(rendered).to have_text('John Doe')
      options.each do |option|
        expect(rendered).to have_link(
          option[:link_content], href: option[:link_path]
        )
      end
      expect(rendered).to have_button('Sign out')
    end
  end
end
