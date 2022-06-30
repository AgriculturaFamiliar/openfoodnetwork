# frozen_string_literal: true

module Admin
  module EnterprisesHelper
    def add_check_if_single(count)
      if count == 1
        { checked: true }
      else
        {}
      end
    end

    def select_only_item(producers)
      producers.size == 1 ? producers.first.id : nil
    end

    def entity_options
      YAML.safe_load(File.read(Rails.root.join('config/entities_list.yml')))['entities']
    end
  end
end
