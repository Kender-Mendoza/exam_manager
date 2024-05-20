# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HomesController, type: :routing do
  it 'routes root to homes#index' do
    expect(get: '/').to route_to('homes#index')
  end

  it 'routes /home to homes#index' do
    expect(get: '/homes').to route_to('homes#index')
  end
end
