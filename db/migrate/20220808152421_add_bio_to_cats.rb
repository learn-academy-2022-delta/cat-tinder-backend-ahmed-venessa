class AddBioToCats < ActiveRecord::Migration[7.0]
  def change
    add_column :cats, :bio, :string
  end
end
