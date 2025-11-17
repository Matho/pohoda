module Pohoda
  module Parsers
    module Inv
      class AttachmentType
        include ParserCore::BaseParser

        def url_address
          submodel_at(Typ::TypeUrlAddress, 'typ:urlAddress')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:url_address] = url_address.to_h if has? 'typ:urlAddress'

          hash
        end
      end
    end
  end
end