class RemoveSalespersonFromInvoices < ActiveRecord::Migration
  def change #por lo general este archivo es autogenerado, pero esta vez salesperson le queremos cambiar el tipo
    remove_column :invoices, :salesperson , :string
    add_column :invoices, :salesperson_id, :integer
  end
end
