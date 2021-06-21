class EventSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :name, :summary, :when, :time, :where, :category_id
end
