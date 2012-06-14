#encoding: utf-8
RailsAdmin.config do |config|
  I18n.default_locale = :ru
  config.current_user_method { current_user }
  #config.audit_with :history, User
  config.main_app_name = ['a1', 'Admin']
  config.default_items_per_page = 50
  config.excluded_models = [Ckeditor::Asset, Ckeditor::AttachmentFile, Ckeditor::Picture, GritterNotice]
  config.label_methods << [:name, :title]
  config.model Article do
    # Found associations:
      #configure :parent, :belongs_to_association 
      #configure :special_offers, :has_many_association 
      #configure :children, :has_many_association   #   # Found columns:
      
      #configure :id, :integer 
      
      configure :title, :string 
      configure :body, :text 
      
      #configure :created_at, :datetime 
      #configure :updated_at, :datetime 
      #configure :permalink, :string 
      
      #configure :parent_id, :integer         # Hidden 
      
      #configure :lft, :integer 
      #configure :rgt, :integer 
      
      #configure :special_offer, :boolean 
      #configure :meta_title, :string 
      #configure :help_info, :boolean   #   # Sections:
    list do; end
    export do; end
    show do; end
    edit do
      #field :parent_id, :integer do
      #  visible false
      #end
      #field :parent, :belongs_to_association
      field :title, :string 
      field :body, :text do
        ckeditor do 
          true
        end
      end
      #field :special_offers, :has_many_association
      #field :children, :has_many_association
    end
    create do; end
    update do; end
  end
end
