# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "talker: 1 messages, 0 services")

set(MSG_I_FLAGS "-Italker:/home/yms/ws/ros1_application/beginner_tutorials/src/talker/msg;-Istd_msgs:/home/yms/ws/ros1_catkin_ws/install_isolated/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(talker_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/yms/ws/ros1_application/beginner_tutorials/src/talker/msg/Num.msg" NAME_WE)
add_custom_target(_talker_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "talker" "/home/yms/ws/ros1_application/beginner_tutorials/src/talker/msg/Num.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(talker
  "/home/yms/ws/ros1_application/beginner_tutorials/src/talker/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/talker
)

### Generating Services

### Generating Module File
_generate_module_cpp(talker
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/talker
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(talker_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(talker_generate_messages talker_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yms/ws/ros1_application/beginner_tutorials/src/talker/msg/Num.msg" NAME_WE)
add_dependencies(talker_generate_messages_cpp _talker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(talker_gencpp)
add_dependencies(talker_gencpp talker_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS talker_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(talker
  "/home/yms/ws/ros1_application/beginner_tutorials/src/talker/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/talker
)

### Generating Services

### Generating Module File
_generate_module_eus(talker
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/talker
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(talker_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(talker_generate_messages talker_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yms/ws/ros1_application/beginner_tutorials/src/talker/msg/Num.msg" NAME_WE)
add_dependencies(talker_generate_messages_eus _talker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(talker_geneus)
add_dependencies(talker_geneus talker_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS talker_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(talker
  "/home/yms/ws/ros1_application/beginner_tutorials/src/talker/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/talker
)

### Generating Services

### Generating Module File
_generate_module_lisp(talker
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/talker
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(talker_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(talker_generate_messages talker_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yms/ws/ros1_application/beginner_tutorials/src/talker/msg/Num.msg" NAME_WE)
add_dependencies(talker_generate_messages_lisp _talker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(talker_genlisp)
add_dependencies(talker_genlisp talker_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS talker_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(talker
  "/home/yms/ws/ros1_application/beginner_tutorials/src/talker/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/talker
)

### Generating Services

### Generating Module File
_generate_module_nodejs(talker
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/talker
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(talker_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(talker_generate_messages talker_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yms/ws/ros1_application/beginner_tutorials/src/talker/msg/Num.msg" NAME_WE)
add_dependencies(talker_generate_messages_nodejs _talker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(talker_gennodejs)
add_dependencies(talker_gennodejs talker_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS talker_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(talker
  "/home/yms/ws/ros1_application/beginner_tutorials/src/talker/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/talker
)

### Generating Services

### Generating Module File
_generate_module_py(talker
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/talker
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(talker_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(talker_generate_messages talker_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yms/ws/ros1_application/beginner_tutorials/src/talker/msg/Num.msg" NAME_WE)
add_dependencies(talker_generate_messages_py _talker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(talker_genpy)
add_dependencies(talker_genpy talker_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS talker_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/talker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/talker
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(talker_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/talker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/talker
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(talker_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/talker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/talker
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(talker_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/talker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/talker
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(talker_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/talker)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/talker\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/talker
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(talker_generate_messages_py std_msgs_generate_messages_py)
endif()
