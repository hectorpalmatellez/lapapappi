json.(spot, :id, :name, :description, :nickname)

json.address(spot.address, partial: 'api/addresses/show', as: :address)
