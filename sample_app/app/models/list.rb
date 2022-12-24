class List < ApplicationRecord
  has_one_attached :image
  
  validates:title,presence: true #validatesで対象とする項目を指定し、入力されたデータのpresence（存在）をチェックします。trueと記述すると、データが存在しなければならないという設定になります。
  validates:body,presence: true
  validates:image,presence: true
end
