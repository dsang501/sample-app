products = [
  { name: 'りんご', price: 100},
  { name: 'めろん', price: 1000},
  { name: 'もも', price: 300}
]
ActiveRecord::Base.transaction do
  products.each do |product|
    Products.create!(product)
  end
end