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

float32 x			# local position setpoint in m in NED
float32 y			# local position setpoint in m in NED
float32 z			# local position setpoint in m in NED

bool velocity_valid		# true if local velocity setpoint valid
uint8 vel_acc_frame		# to set velocity and acceleration setpoints in NED or bodyvalid

float32 vx			# local velocity setpoint in m/s in NED
float32 vy			# local velocity setpoint in m/s in NED
float32 vz			# local velocity setpoint in m/s in NED

bool acceleration_valid		# true if acceleration setpoint is valid/should be used
bool acceleration_is_force	# interprete acceleration as force

float32 ax			# acceleration x setpoint in m/s^2 in NED
float32 ay			# acceleration y setpoint in m/s^2 in NED
float32 az			# acceleration z setpoint in m/s^2 in NED

bool attitude_valid	#attitude is valid

float32[4] attitude #attitude quaternion

bool rates_valid	#rates are valid

float32	roll_rate	#roll rate
float32	pitch_rate	#pitch rate
float32	yaw_rate	#yaw rate

bool an_acc_valid	#angaular acceleration is valid

float32	roll_acc	#roll acceleration
float32	pitch_acc	#pitch acceleration
float32	yaw_acc		#yaw acceleration
