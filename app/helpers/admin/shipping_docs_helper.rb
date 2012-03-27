module Admin::ShippingDocsHelper

    def csv_header_row
        [
            "order_number", 
            "order_date", 
            "order_total", 
	    "Shipping Class",
            "products_ordered" 
	    "shipping_first_name", 
            "shipping_last_name", 
            "shipping_address_1", 
            "shipping_address_2", 
            "shipping_city", 
            "shipping_state",
            "shipping_zip", 
            "weight", 
            "email", 
            "special_instructions", 
        ]
    end

    def csv_order_row(order)
        
        shipmentWeight = 0
        order.line_items.reject{|i|i.variant.weight.nil?}.each do |item|
            shipmentWeight += item.variant.weight
        end

        [
          order.number, 
          order.completed_at, 
          order.total, 
	  shipping_class(order), 
          ordered_items(order),
          order.ship_address.firstname, 
          order.ship_address.lastname, 
          order.ship_address.address1, 
          order.ship_address.address2, 
          order.ship_address.city ,
          order.ship_address.state_text,
          order.ship_address.zipcode, 
          shipping_weight(order), 
          order.email, 
          order.special_instructions,
        ]

    end

    def ordered_items(order)
        items = ""
        for item in order.line_items do 
            items << "#{item.variant.sku} #{item.variant.product.name} #{item.variant.options_text} (#{item.quantity})
"             
        end
        items
    end

    def shipping_class(order)
      if order.adjustments.eligible.where(label: "Shipping").first.amount > 4
        "priority" 
      elsif shipping_weight(order) < 3.5
        "first_class"
      else
	"first_class_large"
      end
    end

    def shipping_weight(order)
      weight = 0.3
      order.line_items.each do |line_item|
        weight += line_item.variant.height unless line_item.variant.height.nil?
      end
      weight
    end
end
