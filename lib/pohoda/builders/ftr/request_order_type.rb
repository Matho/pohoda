module Pohoda
  module Builders
    module Ftr
      class RequestOrderType
        include ParserCore::BaseBuilder
        include Ftr::Groups::GroupFilter1

        def builder
          super
        end
      end
    end
  end
end