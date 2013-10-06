class Product
  include Mongoid::Document

  field :product_id,    :type =>  Integer
  field :title,         :type =>  String,  :default => ""
  field :description,   :type =>  String,  :default => ""
  field :status,        :type =>  Integer, :default => 1
  field :display_order, :type =>  Integer, :default => 0
  field :image,         :type =>  String,  :default => ""
  field :retail_price,  :type =>  Integer, :default => 0
  field :link,          :type =>  String,  :default => ""
  field :author_last,   :type =>  String,  :default => ""
  field :author_first,  :type =>  String,  :default => ""
  field :publish_year,  :type =>  Integer
  field :genre,         :type =>  String,  :default => ""
  field :keyword,       :type =>  String,  :default => ""
  field :rating,        :type =>  Integer, :default => 0
  field :hugo,          :type =>  Integer, :default => 0
  field :nebula,        :type =>  Integer, :default => 0

  validates_presence_of :title, :author_last, :author_first

end
