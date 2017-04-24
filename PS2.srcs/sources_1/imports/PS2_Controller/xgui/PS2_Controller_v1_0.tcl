# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "INITIALIZE_MOUSE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CLOCK" -parent ${Page_0}


}

proc update_PARAM_VALUE.CLOCK { PARAM_VALUE.CLOCK } {
	# Procedure called to update CLOCK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLOCK { PARAM_VALUE.CLOCK } {
	# Procedure called to validate CLOCK
	return true
}

proc update_PARAM_VALUE.INITIALIZE_MOUSE { PARAM_VALUE.INITIALIZE_MOUSE } {
	# Procedure called to update INITIALIZE_MOUSE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INITIALIZE_MOUSE { PARAM_VALUE.INITIALIZE_MOUSE } {
	# Procedure called to validate INITIALIZE_MOUSE
	return true
}


proc update_MODELPARAM_VALUE.INITIALIZE_MOUSE { MODELPARAM_VALUE.INITIALIZE_MOUSE PARAM_VALUE.INITIALIZE_MOUSE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INITIALIZE_MOUSE}] ${MODELPARAM_VALUE.INITIALIZE_MOUSE}
}

proc update_MODELPARAM_VALUE.CLOCK { MODELPARAM_VALUE.CLOCK PARAM_VALUE.CLOCK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLOCK}] ${MODELPARAM_VALUE.CLOCK}
}

