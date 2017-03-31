ActiveAdmin.register Shop do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end



 form do |f|
    f.inputs do
      f.input :name
      f.input :desc
      f.input :image, :as => :file
    end
    f.actions
  end
end

index do
  selectable_column
  id_column
  column :image do |shop|
    image_tag shop.image.url(:thumb)
  end
  column :name do |shop|
    link_to shop.title, admin_shop_path(shop)
  end
  column :desc
  actions
end