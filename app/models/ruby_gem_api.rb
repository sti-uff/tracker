require 'rest-client'

class RubyGemApi
  attr_reader :gem

  def initialize(gem)
    @gem = gem
  end

  def last_stable_version
    gem_versions = JSON(RestClient.get "https://rubygems.org/api/v1/versions/#{@gem}.json")
    gem_versions.each do |gem_version|
      if gem_version["prerelease"] == false
        return gem_version["number"]
        break
      end
    end
  end
end