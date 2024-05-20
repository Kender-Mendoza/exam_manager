# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Routes', type: :routing do
  it 'routes root to homes#index' do
    expect(get: '/').to route_to('homes#index')
  end

  it 'routes /home to homes#index' do
    expect(get: '/homes').to route_to('homes#index')
  end

  it 'routes devise sign_in' do
    expect(get: '/users/sign_in').to route_to('devise/sessions#new')
  end

  it 'routes devise sign_up' do
    expect(get: '/users/sign_up').to route_to('devise/registrations#new')
  end

  it 'routes devise sign_out' do
    expect(delete: '/users/sign_out').to route_to('devise/sessions#destroy')
  end

  it 'routes devise password new' do
    expect(get: '/users/password/new').to route_to('devise/passwords#new')
  end

  it 'routes devise password edit' do
    expect(get: '/users/password/edit').to route_to('devise/passwords#edit')
  end
end
