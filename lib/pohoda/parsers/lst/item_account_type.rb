module Pohoda
  module Parsers
    module Lst
      class ItemAccountType
        include ParserCore::BaseParser

        def item_account_attributes
          attributes_at 'lst:itemAccount'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:item_account_attributes] = item_account_attributes if has? 'lst:itemAccount'

          hash
        end
      end
    end
  end
end