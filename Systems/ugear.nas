var update_ugear = func( dt ) {
    var ap_enable = props.globals.getNode("/ugear/settings/ap-enable");
    if ( ap_enable == nil ) {
	props.globals.initNode("/ugear/settings/ap-enable", 0, "BOOL", 1);
        ap_enable = props.globals.getNode("/ugear/settings/ap-enable");
    }
    if ( ap_enable.getBoolValue() ) {
	setprop( "/controls/flight/aileron", getprop("/ugear/act/aileron") );
	setprop( "/controls/flight/elevator", getprop("/ugear/act/elevator") );
    }
}
