# this file is only used in the position_setpoint triple as a dependency

uint64 timestamp		# time since system start (microseconds)

uint8 SETPOINT_TYPE_POSITION=0	# position setpoint
uint8 SETPOINT_TYPE_VELOCITY=1	# velocity setpoint
uint8 SETPOINT_TYPE_LOITER=2	# loiter setpoint
uint8 SETPOINT_TYPE_TAKEOFF=3	# takeoff setpoint
uint8 SETPOINT_TYPE_LAND=4	# land setpoint, altitude must be ignored, descend until landing
uint8 SETPOINT_TYPE_IDLE=5	# do nothing, switch off motors or keep at idle speed (MC)
uint8 SETPOINT_TYPE_OFFBOARD=6 	# setpoint in NED frame (x, y, z, vx, vy, vz) set by offboard
uint8 SETPOINT_TYPE_FOLLOW_TARGET=7  # setpoint in NED frame (x, y, z, vx, vy, vz) set by follow target

uint8 VELOCITY_FRAME_LOCAL_NED = 1 # MAV_FRAME_LOCAL_NED
uint8 VELOCITY_FRAME_BODY_NED = 8 # MAV_FRAME_BODY_NED

bool valid			# true if setpoint is valid
uint8 type			# setpoint type to adjust behavior of position controller

bool position_valid		# true if local position setpoint

float32[3] pos			# local position setpoint in m in NED

bool velocity_valid		# true if local velocity setpoint valid
uint8 vel_acc_frame		# to set velocity and acceleration setpoints in NED or bodyvalid

float32[3] vel			# local velocity setpoint in m/s in NED

bool acceleration_valid		# true if acceleration setpoint is valid/should be used
bool acceleration_is_force	# interprete acceleration as force

float32[3] acc			# acceleration setpoint in m/s/s in NED

bool attitude_valid	#attitude is valid

float32[4] attitude 	#attitude quaternion

bool rates_valid	#rates are valid

float32[3] rates	#roll rate

bool an_acc_valid	#angaular acceleration is valid

float32[3] an_acc	#angular acceleration
