json.array!(@orders) do |order|
  json.extract! order, :id, :name, :food_item, :qty, :email, :address, :phone, :coupon_code
  json.url order_url(order, format: :json)
end
