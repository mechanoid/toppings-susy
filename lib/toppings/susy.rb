require "toppings/susy/version"

module Toppings
  module Susy
    def self.gem_root
      @gem_root ||= File.expand_path('../..', __FILE__)
    end

    def self.template_folder
      "#{gem_root}/toppings/susy/templates"
    end
  end
end

require 'toppings/generators/install/setups_generator'

Toppings::Generators::Install::SetupsGenerator.with_template :responsive_grid,
                                                             vendor_library: :susy,
                                                             template_folder: Toppings::Susy.template_folder

