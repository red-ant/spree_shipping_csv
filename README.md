This extension builds on an extension authored by Oshin Karamian and Max Sharples. It will add a CSV export button to the admin orders page that allows an admin user to export unfulfilled order information to facilitate batch processing. It is optimized to work with Endicia.

To install for Spree 0.70.x, add to Gemfile:

	gem 'shipping_csv', :git => 'git://github.com/patrickmcelwee/spree_shipping_csv.git'

And update your bundle:

	bundle install

The Spree '0-60-x' branch here is a clone of Oshin Karamian's extension, which did not exclude fulfilled orders. You should check his repository for updates.

If you want to alter the output of the CSV file, define your own methods in 

    /app/helpers/admin/shippingdocs_helper.rb


