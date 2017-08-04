require_relative './bitmask_decoder'

module SaaAlarmWarningDecoder
  class WarningsDecoder < BitmaskDecoder
    def self.lookup
      {
        vfd_over_temperature: "VFD Over Temperature",
        vfd_over_current: "VFD Over Current",
        ext_vfd_voltage: "External VFD Voltage",
        int_vfd_voltage: "Internal VFD Voltage",
        internal_vfd: "Internal VFD",
        reserved1: "",
        vfd_startup: "VFD Startup",
        other_vfd: "Other VFD",
        vfd_communication: "VFD Communication",
        vfd_speed: "VFD Speed",
        vfd_wiring: "VFD Wiring",
        sys_over_temperature: "System Over Temperature",
        sys_under_temperature: "System Under Temperature",
        batter_under_voltage: "Battery Under Voltage",
        bms_com_loss: "BMS Communication Lost.",
        vfd_com_loss: "VFD Communication Lost.",
        invalid_vfd_parameter: "Invalid VFD Parameter",
        vfd_init_failure: "VFD Initialization Failure.",
        vfd_speed_set_failure: "VFD Speed Set Failure",
        vfd_start_set_failure: "VFD Start Set Failure",
        sensorless_error: "Sensorless Error",
        # below is actually called "Hand Mode Timeout", but SAA prefers the term "Pump In Hand"
        hand_mode_timeout: "Pump In Hand"
      }
    end
  end
end
