require_relative '../model'

module Spaceship
  class ConnectAPI
    class AppCustomProductPage
      include Spaceship::ConnectAPI::Model

      attr_accessor :name

      attr_mapping({
        "name" => "name"
      })

      def self.type
        return "appCustomProductPages"
      end

      # API
      def self.get(client: nil, app_custom_product_page_id: nil, filter: {}, includes: nil, limit: nil, sort: nil)
        client ||= Spaceship::ConnectAPI
        resp = client.get_app_custom_product_page(app_custom_product_page_id: app_custom_product_page_id, filter: filter, includes: includes, limit: limit, sort: sort)
        return resp.to_models
      end

      def self.all(client: nil, app_id: nil, filter: {}, includes: nil, limit: nil, sort: nil)
        client ||= Spaceship::ConnectAPI
        resp = client.get_app_custom_product_pages(app_id: app_id, filter: filter, includes: includes, limit: limit, sort: sort)
        return resp.to_models
      end

      def get_app_custom_product_page_localizations(client: nil, filter: {}, includes: nil, limit: nil, sort: nil)
        client ||= Spaceship::ConnectAPI
        resp = client.get_app_custom_product_page_localizations(app_custom_product_page_id: id, filter: filter, includes: includes, limit: limit, sort: sort)
        return resp.to_models
      end

      def create_app_custom_product_page_localization(client: nil, attributes: {})
        client ||= Spaceship::ConnectAPI
        resp = client.post_app_custom_product_page_localization(app_custom_product_page_id: id, attributes: attributes)
        return resp.to_models.first
      end
    end
  end
end

