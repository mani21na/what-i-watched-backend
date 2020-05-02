class ApplicationController < ActionController::API
    def find_username(id)
        @name = User.find(id).name
    end
end
