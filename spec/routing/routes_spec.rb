# spec/routing/routes_spec.rb

require 'rails_helper'

RSpec.describe 'Routes', type: :routing do
  describe 'Search route' do
    it 'routes GET /states to the StatesController#index action' do
      expect(get: '/states').to route_to('states#index')
    end
  end
end
