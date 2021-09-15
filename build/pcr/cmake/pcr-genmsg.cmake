# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pcr: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ipcr:/home/chld/ros_workspace/src/pcr/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pcr_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/chld/ros_workspace/src/pcr/msg/MyMsg.msg" NAME_WE)
add_custom_target(_pcr_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pcr" "/home/chld/ros_workspace/src/pcr/msg/MyMsg.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pcr
  "/home/chld/ros_workspace/src/pcr/msg/MyMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pcr
)

### Generating Services

### Generating Module File
_generate_module_cpp(pcr
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pcr
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pcr_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pcr_generate_messages pcr_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chld/ros_workspace/src/pcr/msg/MyMsg.msg" NAME_WE)
add_dependencies(pcr_generate_messages_cpp _pcr_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pcr_gencpp)
add_dependencies(pcr_gencpp pcr_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pcr_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(pcr
  "/home/chld/ros_workspace/src/pcr/msg/MyMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pcr
)

### Generating Services

### Generating Module File
_generate_module_eus(pcr
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pcr
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pcr_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pcr_generate_messages pcr_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chld/ros_workspace/src/pcr/msg/MyMsg.msg" NAME_WE)
add_dependencies(pcr_generate_messages_eus _pcr_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pcr_geneus)
add_dependencies(pcr_geneus pcr_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pcr_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pcr
  "/home/chld/ros_workspace/src/pcr/msg/MyMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pcr
)

### Generating Services

### Generating Module File
_generate_module_lisp(pcr
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pcr
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pcr_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pcr_generate_messages pcr_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chld/ros_workspace/src/pcr/msg/MyMsg.msg" NAME_WE)
add_dependencies(pcr_generate_messages_lisp _pcr_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pcr_genlisp)
add_dependencies(pcr_genlisp pcr_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pcr_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(pcr
  "/home/chld/ros_workspace/src/pcr/msg/MyMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pcr
)

### Generating Services

### Generating Module File
_generate_module_nodejs(pcr
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pcr
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pcr_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pcr_generate_messages pcr_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chld/ros_workspace/src/pcr/msg/MyMsg.msg" NAME_WE)
add_dependencies(pcr_generate_messages_nodejs _pcr_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pcr_gennodejs)
add_dependencies(pcr_gennodejs pcr_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pcr_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pcr
  "/home/chld/ros_workspace/src/pcr/msg/MyMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pcr
)

### Generating Services

### Generating Module File
_generate_module_py(pcr
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pcr
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pcr_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pcr_generate_messages pcr_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chld/ros_workspace/src/pcr/msg/MyMsg.msg" NAME_WE)
add_dependencies(pcr_generate_messages_py _pcr_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pcr_genpy)
add_dependencies(pcr_genpy pcr_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pcr_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pcr)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pcr
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pcr_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pcr)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pcr
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pcr_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pcr)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pcr
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pcr_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pcr)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pcr
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pcr_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pcr)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pcr\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pcr
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pcr_generate_messages_py std_msgs_generate_messages_py)
endif()
