class FixAgeColumnForActor < ActiveRecord::Migration[6.1]
  def change
    rename_column :actors, :age, :dob
  end
end
