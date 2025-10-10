module Pohoda
  module Parsers
    module Acu
      class ListAccountingUnitType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def item_accounting_units
          array_of_at(Acu::ItemAccountingUnitType, ['acu:itemAccountingUnit'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:item_accounting_units] = item_accounting_units.map(&:to_h) if has? 'acu:itemAccountingUnit'

          hash
          super.merge(hash)
        end
      end
    end
  end
end