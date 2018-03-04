require "trello/api_object"

module Trello
  class Board < ApiObject
    def fetch_all
      super
    end

    def fetch(id:)
      super
    end

    private

    def resources_url(**args)
      "/1/members/me/boards"
    end

    def resource_url(id)
      "/1/boards/#{id}"
    end
  end
end
