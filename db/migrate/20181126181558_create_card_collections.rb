class CreateCardCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :card_collections do |t|
      t.belongs_to :card, index: true
      t.belongs_to :collection, index: true

      t.timestamps
    end
  end
end
