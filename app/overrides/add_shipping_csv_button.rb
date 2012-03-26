Deface::Override.new(:virtual_path => 'admin/orders/index',
	:name => "add_shipping_csv_button",
	:insert_bottom => "div.box, [data-hook='admin_orders_index_search']",
	:text => %q{<p><button type="button" onclick="javascript:submitCSV()"><span>CSV</span></button>}
		    )
