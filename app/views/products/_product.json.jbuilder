json.extract! product, :id, :brand, :product_name, :ph_level, :description,
              :purchase_link, :image, :creator_id, :product_type_id, :validated_by_company, :created_at, :updated_at
json.url product_url(product, format: :json)
