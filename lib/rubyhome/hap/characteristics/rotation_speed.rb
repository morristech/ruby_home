# This is an automatically generated file, please do not modify

module Rubyhome
  class Characteristic
    class RotationSpeed < Characteristic
      def self.uuid
        "00000029-0000-1000-8000-0026BB765291"
      end

      def self.name
        :rotation_speed
      end

      def self.format
        "float"
      end

      def constraints
        {"MaximumValue"=>100, "MinimumValue"=>0, "StepValue"=>1}
      end

      def description
        "Rotation Speed"
      end

      def permissions
        ["securedRead", "securedWrite"]
      end

      def properties
        ["read", "write", "cnotify"]
      end

      def unit
        "percentage"
      end
    end
  end
end