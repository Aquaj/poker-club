class ChangeCardReferenceToPolymorphic < ActiveRecord::Migration[5.0]
  def change
    remove_column :cards, :deck_id
    remove_column :cards, :hand_id
    add_reference :cards, :card_collection, polymorphic: true
  end
end
