class AddCustomerToCustacc < ActiveRecord::Migration[6.0]
  def change
    add_reference :custaccs, :customer
  end
end
