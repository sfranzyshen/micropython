set(SDKCONFIG_DEFAULTS
    boards/sdkconfig.base
    ${SDKCONFIG_IDF_VERSION_SPECIFIC}
    boards/sdkconfig.ble
    boards/sdkconfig.spiram
    boards/WROVER_16M/sdkconfig.board
)

if(MICROPY_BOARD_VARIANT STREQUAL "OTA")
    set(SDKCONFIG_DEFAULTS
            ${SDKCONFIG_DEFAULTS}
            boards/WROVER_16M/sdkconfig.ota
    )

    list(APPEND MICROPY_DEF_BOARD
            MICROPY_HW_BOARD_NAME="Wrover 16M module with OTA"
    )
endif()

if(MICROPY_BOARD_VARIANT STREQUAL "OTA_USER")
    set(SDKCONFIG_DEFAULTS
            ${SDKCONFIG_DEFAULTS}
            boards/WROVER_16M/sdkconfig.ota_user
    )

    list(APPEND MICROPY_DEF_BOARD
            MICROPY_HW_BOARD_NAME="Wrover 16M module with OTA and USER filesys"
    )
endif()

