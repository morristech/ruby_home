# This is an automatically generated file, please do not modify

module Rubyhome
  class Characteristic
    class TargetTiltAngle < Characteristic
      def self.uuid
        "000000C2-0000-1000-8000-0026BB765291"
      end

      def self.name
        :target_tilt_angle
      end

      def self.format
        "int32"
      end

      def constraints
        {"MaximumValue"=>90, "MinimumValue"=>-90, "StepValue"=>1}
      end

      def description
        "Target Tilt Angle"
      end

      def permissions
        ["securedRead", "securedWrite"]
      end

      def properties
        ["read", "write", "cnotify"]
      end

      def unit
        "arcdegrees"
      end
    end
  end
end