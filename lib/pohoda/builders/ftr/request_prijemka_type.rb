module Pohoda
  module Builders
    module Ftr
      class RequestPrijemkaType
        include ParserCore::BaseBuilder
        include Ftr::Groups::GroupFilter1

        def builder
          super
        end
      end
    end
  end
end