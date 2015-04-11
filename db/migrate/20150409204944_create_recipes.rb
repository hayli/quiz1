class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|

      t.string  :image
      t.string  :name
      t.text    :ingredients, array: true, default: []
      t.text    :preparations, array: true, default: []

      t.timestamps
    end
  end
end
