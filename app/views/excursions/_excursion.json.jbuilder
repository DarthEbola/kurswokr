json.extract! excursion, :id, :price, :describe, :name, :city_id, :created_at, :updated_at
json.url excursion_url(excursion, format: :json)
