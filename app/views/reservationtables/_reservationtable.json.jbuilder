json.extract! reservationtable, :id, :people, :name, :phone, :created_at, :updated_at
json.url reservationtable_url(reservationtable, format: :json)
