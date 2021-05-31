module Api
    module V1 
        class CurrenciesController < ApplicationController
            before_action :authorize_access_request!, except: [:show, :index]

            def index
                @currencies = Currency.all 
                render json: @currencies, status: :ok
            end

            def show
                render json: @currency, status: :ok
            end

            private

            def currency_params
                params.require(:currency).permit(:name, :symbol)
            end
        end
    end
end
