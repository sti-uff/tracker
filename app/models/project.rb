class Project < ActiveRecord::Base
  has_many :commits, dependent: :destroy
  has_many :notifications
  accepts_nested_attributes_for :commits

  def self.already_imported?(id, server)
    Project.where(gitproject_id: id, server: server).any?
  end

  def is_compliance?
    begin
      report = ProjectVerification.new.verify! self
      name = report.keys[0]
      status = true
      report[name].each do |type|
        status = false unless type.values.any? { |v| v.nil? || v.length == 0 }
        break
      end
      status
    rescue Exception
      false
    end
  end

end
