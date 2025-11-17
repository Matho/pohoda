module Pohoda
  module Builders
    module Typ
      class TypeUrlAddress
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('typ:name', data[:name], data[:name_attributes]) if data.key? :name
          root << build_element('typ:url', data[:url], data[:url_attributes]) if data.key? :url

          root
        end
      end
    end
  end
end