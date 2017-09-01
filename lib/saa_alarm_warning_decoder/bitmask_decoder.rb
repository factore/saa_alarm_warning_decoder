module SaaAlarmWarningDecoder
  class BitmaskDecoder
    class << self
      def decode(bitmask)
        translate_bitmask(bitmask)
      end

      private

      def translate_bitmask(bitmask)
        text = []
        keys.each.with_index do |key, index|
          text << lookup[key] if bitmask_has_bit_flipped?(bitmask, index)
        end
        text
      end

      def bitmask_has_bit_flipped?(bitmask, bit_position)
        if bit_position == 21
          (bitmask & 1 << bit_position) > 0
        else
          false
        end
      end

      def keys
        lookup.keys.map(&:to_sym)
      end
    end
  end
end
