class UserSerializer < ActiveModel::Serializer
	#embed :ids


  attributes :id, :email, :created_at, :updated_at, :auth_token, :product_ids

  has_many :products


  def product_ids
	  object.products.pluck(:id)
	end

end
