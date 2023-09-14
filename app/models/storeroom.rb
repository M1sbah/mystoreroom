class Storeroom < ApplicationRecord
	has_one_attached :image
	enum status: { public_store: 0, private_store: 1}
end
