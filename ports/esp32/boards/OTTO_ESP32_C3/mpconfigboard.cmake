set(IDF_TARGET esp32c3)

set(SDKCONFIG_DEFAULTS
    boards/sdkconfig.base
    ${SDKCONFIG_IDF_VERSION_SPECIFIC}
    boards/sdkconfig.ble
    boards/sdkconfig.spiram
    boards/OTTO_ESP32_C3/sdkconfig.board
    boards/ESP32_GENERIC_C3/sdkconfig.c3usb
)

if(MICROPY_BOARD_VARIANT STREQUAL "8M")
    set(SDKCONFIG_DEFAULTS
            ${SDKCONFIG_DEFAULTS}
            boards/OTTO_ESP32_C3/sdkconfig.8m
    )

    list(APPEND MICROPY_DEF_BOARD
            MICROPY_HW_BOARD_NAME="OTTO_ESP32_C3 8MB module"
    )
endif()

if(MICROPY_BOARD_VARIANT STREQUAL "16M")
    set(SDKCONFIG_DEFAULTS
            ${SDKCONFIG_DEFAULTS}
            boards/OTTO_ESP32_C3/sdkconfig.16m
    )

    list(APPEND MICROPY_DEF_BOARD
            MICROPY_HW_BOARD_NAME="OTTO_ESP32_C3 16MB module"
    )
endif()

if(MICROPY_BOARD_VARIANT STREQUAL "USER")
    set(SDKCONFIG_DEFAULTS
            ${SDKCONFIG_DEFAULTS}
            boards/OTTO_ESP32_C3/sdkconfig.user
    )

    list(APPEND MICROPY_DEF_BOARD
            MICROPY_HW_BOARD_NAME="OTTO_ESP32_C3 4MB module with USER partition"
    )
endif()

if(MICROPY_BOARD_VARIANT STREQUAL "USER")
    set(SDKCONFIG_DEFAULTS
            ${SDKCONFIG_DEFAULTS}
            boards/OTTO_ESP32_C3/sdkconfig.user
    )

    list(APPEND MICROPY_DEF_BOARD
            MICROPY_HW_BOARD_NAME="OTTO_ESP32_C3 4MB module with USER partition"
    )
endif()

if(MICROPY_BOARD_VARIANT STREQUAL "USER_8M")
    set(SDKCONFIG_DEFAULTS
            ${SDKCONFIG_DEFAULTS}
            boards/OTTO_ESP32_C3/sdkconfig.user_8m
    )

    list(APPEND MICROPY_DEF_BOARD
            MICROPY_HW_BOARD_NAME="OTTO_ESP32_C3 8MB module with USER partition"
    )
endif()

if(MICROPY_BOARD_VARIANT STREQUAL "USER_16M")
    set(SDKCONFIG_DEFAULTS
            ${SDKCONFIG_DEFAULTS}
            boards/OTTO_ESP32_C3/sdkconfig.user_16m
    )

    list(APPEND MICROPY_DEF_BOARD
            MICROPY_HW_BOARD_NAME="OTTO_ESP32_C3 16MB module with USER partition"
    )
endif()

if(MICROPY_BOARD_VARIANT STREQUAL "USER_OTA")
    set(SDKCONFIG_DEFAULTS
            ${SDKCONFIG_DEFAULTS}
            boards/OTTO_ESP32_C3/sdkconfig.user_ota
    )

    list(APPEND MICROPY_DEF_BOARD
            MICROPY_HW_BOARD_NAME="OTTO_ESP32_C3 4MB module with OTA, and USER partition"
    )
endif()

if(MICROPY_BOARD_VARIANT STREQUAL "USER_OTA_8M")
    set(SDKCONFIG_DEFAULTS
            ${SDKCONFIG_DEFAULTS}
            boards/OTTO_ESP32_C3/sdkconfig.user_ota_8m
    )

    list(APPEND MICROPY_DEF_BOARD
            MICROPY_HW_BOARD_NAME="OTTO_ESP32_C3 8MB module with OTA, and USER partition"
    )
endif()

if(MICROPY_BOARD_VARIANT STREQUAL "USER_OTA_16M")
    set(SDKCONFIG_DEFAULTS
            ${SDKCONFIG_DEFAULTS}
            boards/OTTO_ESP32_C3/sdkconfig.user_ota_16m
    )

    list(APPEND MICROPY_DEF_BOARD
            MICROPY_HW_BOARD_NAME="OTTO_ESP32_C3 16MB module with OTA, and USER partition"
    )
endif()
