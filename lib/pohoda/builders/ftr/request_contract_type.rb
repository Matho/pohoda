module Pohoda
  module Builders
    module Ftr
      class RequestContractType
        include ParserCore::BaseBuilder
        include Ftr::Groups::GroupFilter1

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root
        end
      end
    end
  end
end