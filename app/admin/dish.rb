ActiveAdmin.register Dish do
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
      f.input :shop
      f.input :name
      f.input :desc
      f.input :price
      f.input :image, :as => :file, :hint => image_tag(f.object.image.url(:thumb))
    end
    f.actions
  end
end

index do
  selectable_column
  id_column
  column :image do |dish|
    image_tag dish.image.url(:thumb)
  end
  column :name do |dish|
    link_to dish.title, admin_dish_path(product)
  end
  column :desc
  column :price
  column :shop
  actions
end


