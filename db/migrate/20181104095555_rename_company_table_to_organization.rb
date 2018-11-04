class RenameCompanyTableToOrganization < ActiveRecord::Migration[5.2]
  def change
    rename_table :companies, :organizations
  end
end
