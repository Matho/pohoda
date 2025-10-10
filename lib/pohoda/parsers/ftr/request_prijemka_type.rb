module Pohoda
  module Parsers
    module Ftr
      class RequestPrijemkaType
        include ParserCore::BaseParser
        include Ftr::Groups::GroupFilter1

        def to_h
          hash = {}
          hash[:attributes] = attributes

          super.merge(hash)
        end
      end
    end
  end
end