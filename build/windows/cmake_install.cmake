# Install script for directory: D:/Android/StudioProjects/vlabware_oet/windows

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "$<TARGET_FILE_DIR:vlabware_oet>")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/Android/StudioProjects/vlabware_oet/build/windows/flutter/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/Android/StudioProjects/vlabware_oet/build/windows/runner/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/Android/StudioProjects/vlabware_oet/build/windows/plugins/platform_device_id_windows/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/Android/StudioProjects/vlabware_oet/build/windows/plugins/screen_retriever/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/Android/StudioProjects/vlabware_oet/build/windows/plugins/syncfusion_pdfviewer_windows/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/Android/StudioProjects/vlabware_oet/build/windows/plugins/url_launcher_windows/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/Android/StudioProjects/vlabware_oet/build/windows/plugins/window_manager/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Debug/vlabware_oet.exe")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Debug" TYPE EXECUTABLE FILES "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Debug/vlabware_oet.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Profile/vlabware_oet.exe")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Profile" TYPE EXECUTABLE FILES "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Profile/vlabware_oet.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Release/vlabware_oet.exe")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Release" TYPE EXECUTABLE FILES "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Release/vlabware_oet.exe")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Debug/data/icudtl.dat")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Debug/data" TYPE FILE FILES "D:/Android/StudioProjects/vlabware_oet/windows/flutter/ephemeral/icudtl.dat")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Profile/data/icudtl.dat")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Profile/data" TYPE FILE FILES "D:/Android/StudioProjects/vlabware_oet/windows/flutter/ephemeral/icudtl.dat")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Release/data/icudtl.dat")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Release/data" TYPE FILE FILES "D:/Android/StudioProjects/vlabware_oet/windows/flutter/ephemeral/icudtl.dat")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Debug/flutter_windows.dll")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Debug" TYPE FILE FILES "D:/Android/StudioProjects/vlabware_oet/windows/flutter/ephemeral/flutter_windows.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Profile/flutter_windows.dll")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Profile" TYPE FILE FILES "D:/Android/StudioProjects/vlabware_oet/windows/flutter/ephemeral/flutter_windows.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Release/flutter_windows.dll")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Release" TYPE FILE FILES "D:/Android/StudioProjects/vlabware_oet/windows/flutter/ephemeral/flutter_windows.dll")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Debug/platform_device_id_windows_plugin.dll;D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Debug/screen_retriever_plugin.dll;D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Debug/syncfusion_pdfviewer_windows_plugin.dll;D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Debug/pdfium.dll;D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Debug/url_launcher_windows_plugin.dll;D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Debug/window_manager_plugin.dll")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Debug" TYPE FILE FILES
      "D:/Android/StudioProjects/vlabware_oet/build/windows/plugins/platform_device_id_windows/Debug/platform_device_id_windows_plugin.dll"
      "D:/Android/StudioProjects/vlabware_oet/build/windows/plugins/screen_retriever/Debug/screen_retriever_plugin.dll"
      "D:/Android/StudioProjects/vlabware_oet/build/windows/plugins/syncfusion_pdfviewer_windows/Debug/syncfusion_pdfviewer_windows_plugin.dll"
      "D:/Android/StudioProjects/vlabware_oet/windows/flutter/ephemeral/.plugin_symlinks/syncfusion_pdfviewer_windows/windows/include/pdfium/x64/bin/pdfium.dll"
      "D:/Android/StudioProjects/vlabware_oet/build/windows/plugins/url_launcher_windows/Debug/url_launcher_windows_plugin.dll"
      "D:/Android/StudioProjects/vlabware_oet/build/windows/plugins/window_manager/Debug/window_manager_plugin.dll"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Profile/platform_device_id_windows_plugin.dll;D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Profile/screen_retriever_plugin.dll;D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Profile/syncfusion_pdfviewer_windows_plugin.dll;D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Profile/pdfium.dll;D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Profile/url_launcher_windows_plugin.dll;D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Profile/window_manager_plugin.dll")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Profile" TYPE FILE FILES
      "D:/Android/StudioProjects/vlabware_oet/build/windows/plugins/platform_device_id_windows/Profile/platform_device_id_windows_plugin.dll"
      "D:/Android/StudioProjects/vlabware_oet/build/windows/plugins/screen_retriever/Profile/screen_retriever_plugin.dll"
      "D:/Android/StudioProjects/vlabware_oet/build/windows/plugins/syncfusion_pdfviewer_windows/Profile/syncfusion_pdfviewer_windows_plugin.dll"
      "D:/Android/StudioProjects/vlabware_oet/windows/flutter/ephemeral/.plugin_symlinks/syncfusion_pdfviewer_windows/windows/include/pdfium/x64/bin/pdfium.dll"
      "D:/Android/StudioProjects/vlabware_oet/build/windows/plugins/url_launcher_windows/Profile/url_launcher_windows_plugin.dll"
      "D:/Android/StudioProjects/vlabware_oet/build/windows/plugins/window_manager/Profile/window_manager_plugin.dll"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Release/platform_device_id_windows_plugin.dll;D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Release/screen_retriever_plugin.dll;D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Release/syncfusion_pdfviewer_windows_plugin.dll;D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Release/pdfium.dll;D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Release/url_launcher_windows_plugin.dll;D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Release/window_manager_plugin.dll")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Release" TYPE FILE FILES
      "D:/Android/StudioProjects/vlabware_oet/build/windows/plugins/platform_device_id_windows/Release/platform_device_id_windows_plugin.dll"
      "D:/Android/StudioProjects/vlabware_oet/build/windows/plugins/screen_retriever/Release/screen_retriever_plugin.dll"
      "D:/Android/StudioProjects/vlabware_oet/build/windows/plugins/syncfusion_pdfviewer_windows/Release/syncfusion_pdfviewer_windows_plugin.dll"
      "D:/Android/StudioProjects/vlabware_oet/windows/flutter/ephemeral/.plugin_symlinks/syncfusion_pdfviewer_windows/windows/include/pdfium/x64/bin/pdfium.dll"
      "D:/Android/StudioProjects/vlabware_oet/build/windows/plugins/url_launcher_windows/Release/url_launcher_windows_plugin.dll"
      "D:/Android/StudioProjects/vlabware_oet/build/windows/plugins/window_manager/Release/window_manager_plugin.dll"
      )
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    
  file(REMOVE_RECURSE "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Debug/data/flutter_assets")
  
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    
  file(REMOVE_RECURSE "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Profile/data/flutter_assets")
  
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    
  file(REMOVE_RECURSE "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Release/data/flutter_assets")
  
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Debug/data/flutter_assets")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Debug/data" TYPE DIRECTORY FILES "D:/Android/StudioProjects/vlabware_oet/build//flutter_assets")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Profile/data/flutter_assets")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Profile/data" TYPE DIRECTORY FILES "D:/Android/StudioProjects/vlabware_oet/build//flutter_assets")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Release/data/flutter_assets")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Release/data" TYPE DIRECTORY FILES "D:/Android/StudioProjects/vlabware_oet/build//flutter_assets")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Profile/data/app.so")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Profile/data" TYPE FILE FILES "D:/Android/StudioProjects/vlabware_oet/build/windows/app.so")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Release/data/app.so")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "D:/Android/StudioProjects/vlabware_oet/build/windows/runner/Release/data" TYPE FILE FILES "D:/Android/StudioProjects/vlabware_oet/build/windows/app.so")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "D:/Android/StudioProjects/vlabware_oet/build/windows/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
