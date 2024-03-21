set(SDKCONFIG_DEFAULTS
    boards/sdkconfig.base
    boards/sdkconfig.ble
    boards/sdkconfig.spiram
    boards/OTTO_ESP32/sdkconfig.board
)

if(MICROPY_BOARD_VARIANT STREQUAL "USER")
    set(SDKCONFIG_DEFAULTS
            ${SDKCONFIG_DEFAULTS}
            boards/OTTO_ESP32/sdkconfig.user
    )

    list(APPEND MICROPY_DEF_BOARD
            MICROPY_HW_BOARD_NAME="OTTO_ESP32 4MB module with USER partition"
    )
endif()

if(MICROPY_BOARD_VARIANT STREQUAL "USER_8M")
    set(SDKCONFIG_DEFAULTS
            ${SDKCONFIG_DEFAULTS}
            boards/OTTO_ESP32/sdkconfig.user_8m
    )

    list(APPEND MICROPY_DEF_BOARD
            MICROPY_HW_BOARD_NAME="OTTO_ESP32 8MB module with USER partition"
    )
endif()

if(MICROPY_BOARD_VARIANT STREQUAL "USER_16M")
    set(SDKCONFIG_DEFAULTS
            ${SDKCONFIG_DEFAULTS}
            boards/OTTO_ESP32/sdkconfig.user_16m
    )

    list(APPEND MICROPY_DEF_BOARD
            MICROPY_HW_BOARD_NAME="OTTO_ESP32 16MB module with USER partition"
    )
endif()

if(MICROPY_BOARD_VARIANT STREQUAL "USER_OTA")
    set(SDKCONFIG_DEFAULTS
            ${SDKCONFIG_DEFAULTS}
            boards/OTTO_ESP32/sdkconfig.user_ota
    )

    list(APPEND MICROPY_DEF_BOARD
            MICROPY_HW_BOARD_NAME="OTTO_ESP32 4MB module with OTA, and USER partition"
    )
endif()

if(MICROPY_BOARD_VARIANT STREQUAL "USER_OTA_8M")
    set(SDKCONFIG_DEFAULTS
            ${SDKCONFIG_DEFAULTS}
            boards/OTTO_ESP32/sdkconfig.user_ota_8m
    )

    list(APPEND MICROPY_DEF_BOARD
            MICROPY_HW_BOARD_NAME="OTTO_ESP32 8MB module with OTA, and USER partition"
    )
endif()

if(MICROPY_BOARD_VARIANT STREQUAL "USER_OTA_16M")
    set(SDKCONFIG_DEFAULTS
            ${SDKCONFIG_DEFAULTS}
            boards/OTTO_ESP32/sdkconfig.user_ota_16m
    )

    list(APPEND MICROPY_DEF_BOARD
            MICROPY_HW_BOARD_NAME="OTTO_ESP32 16MB module with OTA, and USER partition"
    )
endif()
