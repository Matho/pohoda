module Pohoda
  module Parsers
    module Inv
      class PaymentAccount
        include ParserCore::BaseParser
        include Typ::Groups::MyGroupOfAccount

        def to_h
          hash = {}
          hash[:attributes] = attributes

          super.merge(hash)
        end
      end
    end
  end
end