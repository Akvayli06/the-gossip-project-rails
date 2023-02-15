class DynamiqueController < ApplicationController
    def dynamique
        @name = params[:name]
    end
end