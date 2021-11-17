json.extract! gform, :id, :name, :view_link, :edit_link, :sheets_link, :created_at, :updated_at
json.url gform_url(gform, format: :json)
