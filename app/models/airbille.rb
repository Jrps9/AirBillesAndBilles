class Airbille < ApplicationRecord
    belongs_to :user

    def rand_name
        self.name = "Toto"
    end

    def rand_color
        self.couleur = "%06x" % (rand * 0xffffff)
    end

end
