class AddDepthToArticle < ActiveRecord::Migration
  def change
  	add_column :articles, :depth, :integer
  end
end
