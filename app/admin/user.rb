ActiveAdmin.register User do
  permit_params [:name, :password, :email]
end
