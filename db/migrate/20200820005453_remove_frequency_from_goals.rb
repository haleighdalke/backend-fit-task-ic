class RemoveFrequencyFromGoals < ActiveRecord::Migration[6.0]
  def change
    remove_column :goals, :frequency, :string
    add_column :goals, :frequency, :integer
  end
end
