class CreateCablingAddServs < ActiveRecord::Migration
  def change
    create_table :cabling_add_servs do |t|
      t.text  :description
    end
  end
end
