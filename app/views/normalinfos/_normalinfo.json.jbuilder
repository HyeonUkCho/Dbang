json.extract! normalinfo, :id, :house_id, :housetype, :dealtype, :monthlyfee, :tradefee, :totalfloor, :myfloor, :created_at, :updated_at
json.url normalinfo_url(normalinfo, format: :json)