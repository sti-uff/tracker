module ApplicationHelper

  def different_gems
    gems = []
    Project.all.each do |p|
      next unless p.commits.any?
      gems << p.commits.last.used_gems.pluck(:name)
    end
    gems.flatten.uniq.count
  end

  def not_compliance_status
    count = 0
    Project.all.each do |p|
      count += 1 unless p.is_compliance?
    end
    count
  end

  def is_compliance_status
    count = 0
    Project.all.each do |p|
      count += 1 if p.is_compliance?
    end
    count
  end

end
