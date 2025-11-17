module Pohoda
  module Builders
    module Inv
      class AttachmentType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :url_address
            root << Typ::TypeUrlAddress.new('typ:urlAddress', data[:url_address]).builder
          end

          root
        end
      end
    end
  end
end