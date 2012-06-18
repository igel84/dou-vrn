#encoding: utf-8
RailsAdmin.config do |config|
  I18n.default_locale = :ru
  config.current_user_method { current_user }
  #config.audit_with :history, User
  config.main_app_name = ['a1', 'Admin']
  config.default_items_per_page = 50
  config.excluded_models = [Ckeditor::Asset, Ckeditor::AttachmentFile, Ckeditor::Picture, GritterNotice, User, GaleryPhoto]
  #config.label_methods << [:name]
  config.model Article do
    # Found associations:
      configure :parent, :belongs_to_association 
      #configure :special_offers, :has_many_association 
      configure :children, :has_many_association   #   # Found columns:      
      configure :id, :integer       
      configure :title, :string 
      configure :body, :text       
      #configure :created_at, :datetime 
      #configure :updated_at, :datetime 
      configure :permalink, :string       
      configure :parent_id, :integer         # Hidden       
      configure :lft, :integer 
      configure :rgt, :integer 
      configure :depth, :integer   #   # Sections:
      #configure :special_offer, :boolean 
      #configure :meta_title, :string 
      #configure :help_info, :boolean   #   # Sections:
    list do; end
    export do; end
    show do; end
    edit do
      field :parent
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
    end
    create do; end
    update do; end
  end

  config.model Galery do
    # Found associations:
      configure :galery_photos, :has_many_association 
      configure :photos, :has_many_association   #   # Found columns:
      configure :id, :integer 
      configure :name, :string 
      configure :created_at, :datetime 
      configure :updated_at, :datetime   #   # Sections:
    list do
      field :id
      field :name
    end
    export do; end
    show do; end
    edit do
      field :name
      field :photos
    end
    create do; end
    update do; end
  end

  config.model Photo do
    # Found associations:
      configure :galery_photos, :has_many_association 
      configure :galeries, :has_many_association   #   # Found columns:
      configure :id, :integer 
      configure :name, :string 
      configure :photo_image_file_name, :string         # Hidden 
      configure :photo_image_content_type, :string         # Hidden 
      configure :photo_image_file_size, :integer         # Hidden 
      configure :photo_image_updated_at, :datetime         # Hidden 
      configure :photo_image, :paperclip 
      configure :created_at, :datetime 
      configure :updated_at, :datetime   #   # Sections:
    list do
      field :id
      field :photo_image
      field :name
    end
    export do; end
    show do; end
    edit do
      field :name
      field :photo_image
      field :galeries
    end
    create do; end
    update do; end
  end

end
