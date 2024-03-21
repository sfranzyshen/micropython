set(SDKCONFIG_DEFAULTS
    boards/sdkconfig.base
    boards/sdkconfig.ble
    boards/sdkconfig.spiram
    boards/OTTO_ESP32_8MB/sdkconfig.board
)

if(MICROPY_BOARD_VARIANT STREQUAL "OTA")
    set(SDKCONFIG_DEFAULTS
            ${SDKCONFIG_DEFAULTS}
            boards/OTTO_ESP32_8MB/sdkconfig.ota
    )

    list(APPEND MICROPY_DEF_BOARD
            MICROPY_HW_BOARD_NAME="OTTO_ESP32_8MB module with OTA"
    )
endif()
