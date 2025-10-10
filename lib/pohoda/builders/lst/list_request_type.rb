module Pohoda
  module Builders
    module Lst
      class ListRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          add_attributes_and_namespaces(root)
        end
      end
    end
  end
end