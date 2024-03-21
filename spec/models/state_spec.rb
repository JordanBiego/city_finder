require 'rails_helper'

RSpec.describe State, type: :model do
  describe '.search' do
    fixtures :states, :cities

    context 'When state and city name are provided' do
      it 'Returns cities matching the provided state and city name' do
        state = states(:santa_catarina)
        city1 = cities(:florianopolis)

        cities = State.search(state: state, name: 'Florianopolis')

        expect(cities).to contain_exactly(city1) unless cities.nil?
      end
    end

    context 'When only state is provided' do
      it 'Returns all cities for the provided state' do
        state = states(:parana)
        expected_cities = [cities(:curitiba), cities(:londrina), cities(:toledo)]

        cities = State.search(state: state)

        expect(cities).to contain_exactly(*expected_cities) unless cities.nil?
      end
    end

    context 'When state and partial city name are provided' do
      it 'Returns cities matching the provided state and partial city name' do
        state = states(:rio_grande_do_sul)
        expected_cities = [cities(:porto_alegre), cities(:pelotas)]

        cities = State.search(state: state, name: 'P')

        expect(cities).to contain_exactly(*expected_cities) unless cities.nil?
      end
    end

    context 'When no state or city name are provided' do
      it 'Returns an empty result' do
        cities = State.search({})

        expect(cities).to be_nil
      end
    end
  end
end
