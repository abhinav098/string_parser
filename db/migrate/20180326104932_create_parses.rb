class CreateParses < ActiveRecord::Migration[5.0]
  def change
    create_table :parses do |t|
      t.text :text

      t.timestamps
    end
  end
end
