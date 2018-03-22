class <%= migration_class_name %> < ActiveRecord::Migration<%= migration_version %>
  disable_ddl_transaction!

  def change
    add_index <%= table.to_sym.inspect %>, <%= columns.map(&:to_sym).inspect %>, algorithm: :concurrently
  end
end
