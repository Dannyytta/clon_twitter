class Twitter < ApplicationRecord
    include PgSearch::Model

    pg_search_scope :search_full_text,
    against: {
        username:  'A',
        description: 'B',
    },
    using: {
        tsearch: {
            prefix: true,      # Coincidencias de prefijo
            any_word: true,    # Coincidencias intermedias
            dictionary: "spanish"  # Diccionario para búsqueda en español (opcional, reemplaza "spanish" según necesites)
        }
    }
   
end
