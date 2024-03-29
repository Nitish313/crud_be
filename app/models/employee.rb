class Employee < ApplicationRecord
  has_many :subordinates, class_name: 'Employee',
    foreign_key: :mgr_id
  belongs_to :mgr, class_name: 'Employee', optional: true
  belongs_to :department, optional: true
end
