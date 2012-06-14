class AddData < ActiveRecord::Migration
  def change
    Article.create(:title => 'first', :body => 'test')
  end
end
