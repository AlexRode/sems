FIND_PATH(BCG729_INCLUDE_DIR bcg729/decoder.h)
FIND_LIBRARY(BCG729_LIBRARIES NAMES bcg729)

IF(BCG729_INCLUDE_DIR AND BCG729_LIBRARIES)
	SET(BCG729_FOUND TRUE)
ENDIF(BCG729_INCLUDE_DIR AND BCG729_LIBRARIES)

IF(BCG729_FOUND)
	IF (NOT Bcg729_FIND_QUIETLY)
		MESSAGE(STATUS "Found bcg729 includes:	${BCG729_INCLUDE_DIR}/bcg729/decoder.h")
		MESSAGE(STATUS "Found bcg729 library: ${BCG729_LIBRARIES}")
	ENDIF (NOT Bcg729_FIND_QUIETLY)
ELSE(BCG729_FOUND)
	IF (Bcg729_FIND_REQUIRED)
		MESSAGE(FATAL_ERROR "Could NOT find bcg729 development files")
	ENDIF (Bcg729_FIND_REQUIRED)
ENDIF(BCG729_FOUND)