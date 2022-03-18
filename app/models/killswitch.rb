class Killswitch < ApplicationRecord
  def self.instance
    @instance ||= load_instance
  end

  def self.load_instance
    killswitch = first || create
    path = Rails.root.join("config", "initializers", "killswitch.yml")
    attrs = YAML.load(File.read(path))
    killswitch.update(attrs)
    killswitch
  end
end
