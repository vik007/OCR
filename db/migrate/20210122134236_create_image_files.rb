class CreateImageFiles < ActiveRecord::Migration[6.0]
  def change
    create_table :image_files do |t|
      t.string :file

      t.timestamps
    end
  end
end
