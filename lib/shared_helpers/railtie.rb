module SharedHelpers
  class Railtie < ::Rails::Railtie
    config.before_initialize do
      Object.include(SharedHelpers)
    end
  end
end
