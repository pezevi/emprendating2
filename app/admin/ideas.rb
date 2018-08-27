ActiveAdmin.register Idea do
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

permit_params :idea_id, :user_id, :name, :short_description


index do
  column :id
  column :name
  column :user
  column :likes do |idea|

      idea.idea_likes.count

  end
  actions
end

form do |f|
  inputs 'Agregando una idea' do
    input :name
    input :user
    input :short_description

  end
  actions

end

end
