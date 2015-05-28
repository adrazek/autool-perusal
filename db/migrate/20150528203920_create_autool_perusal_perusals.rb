class CreateAutoolPerusalPerusals < ActiveRecord::Migration
  def change
    create_table :autool_perusal_perusals do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
