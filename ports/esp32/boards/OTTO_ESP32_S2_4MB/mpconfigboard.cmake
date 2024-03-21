set(IDF_TARGET esp32s2)

set(SDKCONFIG_DEFAULTS
    boards/sdkconfig.base
    ${SDKCONFIG_IDF_VERSION_SPECIFIC}
    boards/sdkconfig.usb
    boards/sdkconfig.spiram_sx
    boards/OTTO_ESP32_S2_4MB/sdkconfig.board
)
if(MICROPY_BOARD_VARIANT STREQUAL "OTA")
    set(SDKCONFIG_DEFAULTS
            ${SDKCONFIG_DEFAULTS}
            boards/OTTO_ESP32_S2_4MB/sdkconfig.ota
    )

    list(APPEND MICROPY_DEF_BOARD
            MICROPY_HW_BOARD_NAME="ESP32_S2 4M module with OTA"
    )
endif()
