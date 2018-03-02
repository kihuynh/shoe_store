class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table(:stores) do |s|
      s.column(:name, :string)

      s.timestamps
    end
    create_table(:brands) do |b|
      b.column(:name, :string)
      b.column(:price, :integer)

      b.timestamps
    end
    create_table(:brands_stores) do |b|
      b.column(:store_id, :integer)
      b.column(:brand_id, :integer)

      b.timestamps
    end
  end
end
