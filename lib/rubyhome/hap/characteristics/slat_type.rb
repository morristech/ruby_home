# This is an automatically generated file, please do not modify

module Rubyhome
  class Characteristic
    class SlatType < Characteristic
      def self.uuid
        "000000C0-0000-1000-8000-0026BB765291"
      end

      def self.name
        :slat_type
      end

      def self.format
        "uint8"
      end

      def constraints
        {"ValidValues"=>{"0"=>"Horizontal", "1"=>"Vertical"}}
      end

      def description
        "Slat Type"
      end

      def permissions
        ["securedRead"]
      end

      def properties
        ["read"]
      end

      def unit
        nil
      end
    end
  end
end