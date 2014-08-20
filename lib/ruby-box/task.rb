module RubyBox
  class Task < Item
    has_many :task_assignments

    def initialize(session, entry)
      super(session, entry)
      reload_meta
      self
    end

    private

    def resource_name
      'tasks'
    end

    def has_mini_format?
      true
    end
  end
end
