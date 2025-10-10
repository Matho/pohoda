module Pohoda
  module Parsers
    module Lst
      class ListAccountType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def item_account
          array_of_at(Lst::ItemAccountType, ['lst:itemAccount'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:item_account] = item_account.map(&:to_h) if has? 'lst:itemAccount'

          hash
          super.merge(hash)
        end
      end
    end
  end
end