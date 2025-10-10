module Pohoda
  module Builders
    module Ftr
      class RequestBankAccountType
        include ParserCore::BaseBuilder
        include Ftr::Groups::GroupFilter2

        def builder
          super
        end
      end
    end
  end
end