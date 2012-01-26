require 'active_record'

require 'acts_as_approvable/acts_as_approvable'
require 'acts_as_approvable/approval'

module ActsAsApprovable
  def self.enable
    @enabled = true
  end

  def self.disable
    @enabled = false
  end

  def self.enabled?
    @enabled ||= true
  end
end
