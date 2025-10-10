module Pohoda
  module Builders
    module Inv
      class PaymentAccount
        include ParserCore::BaseBuilder
        include Typ::Groups::MyGroupOfAccount

        def builder
          super
        end
      end
    end
  end
end