ActiveAdmin.register Track do
  permit_params [:name, :url, :release_id]
end
