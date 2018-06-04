# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "maplin_arm: 3 messages, 0 services")

set(MSG_I_FLAGS "-Imaplin_arm:/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(maplin_arm_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/MotorState.msg" NAME_WE)
add_custom_target(_maplin_arm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "maplin_arm" "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/MotorState.msg" ""
)

get_filename_component(_filename "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/SetMotorStates.msg" NAME_WE)
add_custom_target(_maplin_arm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "maplin_arm" "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/SetMotorStates.msg" "maplin_arm/MotorState:std_msgs/Header"
)

get_filename_component(_filename "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/MoveJoint.msg" NAME_WE)
add_custom_target(_maplin_arm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "maplin_arm" "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/MoveJoint.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(maplin_arm
  "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/maplin_arm
)
_generate_msg_cpp(maplin_arm
  "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/SetMotorStates.msg"
  "${MSG_I_FLAGS}"
  "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/MotorState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/maplin_arm
)
_generate_msg_cpp(maplin_arm
  "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/MoveJoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/maplin_arm
)

### Generating Services

### Generating Module File
_generate_module_cpp(maplin_arm
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/maplin_arm
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(maplin_arm_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(maplin_arm_generate_messages maplin_arm_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/MotorState.msg" NAME_WE)
add_dependencies(maplin_arm_generate_messages_cpp _maplin_arm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/SetMotorStates.msg" NAME_WE)
add_dependencies(maplin_arm_generate_messages_cpp _maplin_arm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/MoveJoint.msg" NAME_WE)
add_dependencies(maplin_arm_generate_messages_cpp _maplin_arm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(maplin_arm_gencpp)
add_dependencies(maplin_arm_gencpp maplin_arm_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS maplin_arm_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(maplin_arm
  "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/maplin_arm
)
_generate_msg_eus(maplin_arm
  "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/SetMotorStates.msg"
  "${MSG_I_FLAGS}"
  "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/MotorState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/maplin_arm
)
_generate_msg_eus(maplin_arm
  "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/MoveJoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/maplin_arm
)

### Generating Services

### Generating Module File
_generate_module_eus(maplin_arm
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/maplin_arm
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(maplin_arm_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(maplin_arm_generate_messages maplin_arm_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/MotorState.msg" NAME_WE)
add_dependencies(maplin_arm_generate_messages_eus _maplin_arm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/SetMotorStates.msg" NAME_WE)
add_dependencies(maplin_arm_generate_messages_eus _maplin_arm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/MoveJoint.msg" NAME_WE)
add_dependencies(maplin_arm_generate_messages_eus _maplin_arm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(maplin_arm_geneus)
add_dependencies(maplin_arm_geneus maplin_arm_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS maplin_arm_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(maplin_arm
  "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/maplin_arm
)
_generate_msg_lisp(maplin_arm
  "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/SetMotorStates.msg"
  "${MSG_I_FLAGS}"
  "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/MotorState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/maplin_arm
)
_generate_msg_lisp(maplin_arm
  "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/MoveJoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/maplin_arm
)

### Generating Services

### Generating Module File
_generate_module_lisp(maplin_arm
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/maplin_arm
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(maplin_arm_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(maplin_arm_generate_messages maplin_arm_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/MotorState.msg" NAME_WE)
add_dependencies(maplin_arm_generate_messages_lisp _maplin_arm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/SetMotorStates.msg" NAME_WE)
add_dependencies(maplin_arm_generate_messages_lisp _maplin_arm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/MoveJoint.msg" NAME_WE)
add_dependencies(maplin_arm_generate_messages_lisp _maplin_arm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(maplin_arm_genlisp)
add_dependencies(maplin_arm_genlisp maplin_arm_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS maplin_arm_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(maplin_arm
  "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/maplin_arm
)
_generate_msg_nodejs(maplin_arm
  "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/SetMotorStates.msg"
  "${MSG_I_FLAGS}"
  "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/MotorState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/maplin_arm
)
_generate_msg_nodejs(maplin_arm
  "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/MoveJoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/maplin_arm
)

### Generating Services

### Generating Module File
_generate_module_nodejs(maplin_arm
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/maplin_arm
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(maplin_arm_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(maplin_arm_generate_messages maplin_arm_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/MotorState.msg" NAME_WE)
add_dependencies(maplin_arm_generate_messages_nodejs _maplin_arm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/SetMotorStates.msg" NAME_WE)
add_dependencies(maplin_arm_generate_messages_nodejs _maplin_arm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/MoveJoint.msg" NAME_WE)
add_dependencies(maplin_arm_generate_messages_nodejs _maplin_arm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(maplin_arm_gennodejs)
add_dependencies(maplin_arm_gennodejs maplin_arm_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS maplin_arm_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(maplin_arm
  "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/maplin_arm
)
_generate_msg_py(maplin_arm
  "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/SetMotorStates.msg"
  "${MSG_I_FLAGS}"
  "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/MotorState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/maplin_arm
)
_generate_msg_py(maplin_arm
  "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/MoveJoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/maplin_arm
)

### Generating Services

### Generating Module File
_generate_module_py(maplin_arm
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/maplin_arm
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(maplin_arm_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(maplin_arm_generate_messages maplin_arm_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/MotorState.msg" NAME_WE)
add_dependencies(maplin_arm_generate_messages_py _maplin_arm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/SetMotorStates.msg" NAME_WE)
add_dependencies(maplin_arm_generate_messages_py _maplin_arm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg/MoveJoint.msg" NAME_WE)
add_dependencies(maplin_arm_generate_messages_py _maplin_arm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(maplin_arm_genpy)
add_dependencies(maplin_arm_genpy maplin_arm_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS maplin_arm_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/maplin_arm)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/maplin_arm
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(maplin_arm_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/maplin_arm)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/maplin_arm
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(maplin_arm_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/maplin_arm)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/maplin_arm
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(maplin_arm_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/maplin_arm)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/maplin_arm
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(maplin_arm_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/maplin_arm)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/maplin_arm\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/maplin_arm
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(maplin_arm_generate_messages_py std_msgs_generate_messages_py)
endif()
