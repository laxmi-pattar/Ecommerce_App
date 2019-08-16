ActiveAdmin.register Product do

  permit_params :title, :description, :price, :published, :category_id
  
  scope("Products"){|scope| scope.where(published: 'false')}

  filter :title
  filter :description

  config.per_page = [5,10, 50, 100]
  
  index do
    column :price,  sortable: true do |product|
      "$ #{product.price}"
    end
    actions
  end

end
