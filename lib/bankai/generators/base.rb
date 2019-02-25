# frozen_string_literal: true

require 'rails/generators'
require_relative '../helper'

module Bankai
  module Generators
    # :nodoc:
    class Base < Rails::Generators::Base
      include Helper
      def self.default_source_root
        File.expand_path(File.join('..', '..', '..', 'templates'), __dir__)
      end

      private

      def app_name
        Rails.app_class.parent_name.demodulize.underscore.dasherize
      end
    end
  end
end
