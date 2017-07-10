ActiveAdmin.register Artist do
  permit_params [:name, :image, :bio]
end
