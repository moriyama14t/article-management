class ApplicationRecord < ActiveRecord::Base
  include Discard::Model
  # デフォルトで論理削除したデータを表示させなくする 参考:https://sakaishun.com/2021/04/13/discard/
  default_scope -> { kept }

  primary_abstract_class
end
