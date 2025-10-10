module Pohoda
  module Builders
    module Typ
      class TypeRound
        include ParserCore::BaseBuilder
        include Typ::Groups::MyGroupOfRound

        def builder
          root = super

          root << build_element('typ:priceRound', data[:price_round], data[:price_round_attributes]) if data.key? :price_round

          root
        end
      end
    end
  end
end