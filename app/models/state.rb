class State < ApplicationRecord
  has_many :cities

  def self.search(params)
    state = find_by(name: params[:state])
    return unless state

    state.cities.where('name ILIKE ?', "%#{params[:name]}%")
  end
end
