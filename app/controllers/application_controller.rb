class ApplicationController < ActionController::Base
    Pagy::DEFAULT[:items] = 10
    include Pagy::Backend   

    require 'pagy'
    #Pagy::I18n.load(locale: 'es', filepath: 'config/locales/es.yml')
end
