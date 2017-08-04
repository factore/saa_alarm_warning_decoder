require_relative './bitmask_decoder'

module SaaAlarmWarningDecoder
  class AlarmsDecoder < BitmaskDecoder
    def self.lookup
      {
        vfd_over_temperature: "VFD Over Temperature",
        vfd_over_current: "VFD Over Current",
        ext_vfd_voltage: "Extername VFD Voltage",
        int_vfd_voltage: "Internal VFD Voltage",
        internal_vfd: "Internal VFD",
        vfd_parameter: "VFD Parameter",
        vfd_startup: "VFD Startup",
        other_vfd: "Other VFD",
        vfd_communication: "VFD Communication",
        vfd_speed: "VFD Speed",
        reserved: "RESERVED"
      }
    end
  end
end
