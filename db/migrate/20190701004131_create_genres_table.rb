class CreateGenresTable < ActiveRecord::Migration[5.0]
  def change
    create_table :genres_tables do |t|
      t.string :name
    end
  end
end
