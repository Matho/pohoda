module Pohoda
  module Parsers
    module Ftr
      class RequestBankAccountType
        include ParserCore::BaseParser
        include Ftr::Groups::GroupFilter2

        def to_h
          hash = {}
          hash[:attributes] = attributes

          super.merge(hash)
        end
      end
    end
  end
end