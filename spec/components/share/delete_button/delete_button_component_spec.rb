# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Share::DeleteButton::DeleteButtonComponent, type: :component do
  let(:delete_path) { '/example/delete_path' }
  let(:component) { described_class.new(delete_path:) }

  it 'renders a delete button with the correct path and classes' do
    rendered_component =
      render_inline(component)

    expect(rendered_component).to have_css('div.inline-block')
    expect(rendered_component).to have_css('form.button_to[method="post"][action="' + delete_path + '"]')
    expect(rendered_component).to have_css('button.text-white.bg-red-700.hover\\:bg-red-800')
    expect(rendered_component).to have_css('i.fa-solid.fa-trash-can')
  end

  it 'renders a delete button with the method delete' do
    rendered_component =
      render_inline(component)

    form = rendered_component.at_css('form.button_to')
    expect(form['action']).to eq delete_path
    method_input = form.at_css('input[name="_method"][type="hidden"][value="delete"]')
    expect(method_input).not_to be_nil
  end
end
