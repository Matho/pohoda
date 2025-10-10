module Pohoda
  module Parsers
    module Lst
      class ListRequestType
        include ParserCore::BaseParser

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash
        end
      end
    end
  end
end