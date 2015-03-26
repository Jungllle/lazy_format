require "lazy_format/version"

module LazyFormat
  class << self
    def load!
      register_rails_engine
    end

    # Paths
    def gem_path
      @gem_path ||= File.expand_path('..', File.dirname(__FILE__))
    end

    # Environment detection helpers
    def rails?
      defined?(::Rails)
    end

    private

    def register_rails_engine
      require 'lazy_format/rails/railtie'
    end
  end
end

LazyFormat.load!
