module Pohoda
  module Parsers
    module Typ
      class TypeUrlAddress
        include ParserCore::BaseParser

        def name
          at 'typ:name'
        end

        def url
          at 'typ:url'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:name] = name if has? 'typ:name'
          hash[:url] = url if has? 'typ:url'

          hash
        end
      end
    end
  end
end