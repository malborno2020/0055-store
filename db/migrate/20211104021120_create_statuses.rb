class CreateStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :statuses do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
