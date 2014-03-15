/*
 * This file generated automatically from randr.xml by c-client.xsl using XSLT.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_RandR_API XCB RandR API
 * @brief RandR XCB Protocol Implementation.
 * @{
 **/


module xcb.randr;

import xcb.xcb;
import xcb.xproto;
import xcb.render;

const int XCB_RANDR_MAJOR_VERSION =1;
const int XCB_RANDR_MINOR_VERSION =4;
  
extern(C) extern xcb_extension_t xcb_randr_id;

alias uint xcb_randr_mode_t;

/**
 * @brief xcb_randr_mode_iterator_t
 **/
struct xcb_randr_mode_iterator_t {
    xcb_randr_mode_t *data; /**<  */
    int               rem; /**<  */
    int               index; /**<  */
} ;

alias uint xcb_randr_crtc_t;

/**
 * @brief xcb_randr_crtc_iterator_t
 **/
struct xcb_randr_crtc_iterator_t {
    xcb_randr_crtc_t *data; /**<  */
    int               rem; /**<  */
    int               index; /**<  */
} ;

alias uint xcb_randr_output_t;

/**
 * @brief xcb_randr_output_iterator_t
 **/
struct xcb_randr_output_iterator_t {
    xcb_randr_output_t *data; /**<  */
    int                 rem; /**<  */
    int                 index; /**<  */
} ;

alias uint xcb_randr_provider_t;

/**
 * @brief xcb_randr_provider_iterator_t
 **/
struct xcb_randr_provider_iterator_t {
    xcb_randr_provider_t *data; /**<  */
    int                   rem; /**<  */
    int                   index; /**<  */
} ;

/** Opcode for xcb_randr_bad_output. */
const uint XCB_RANDR_BAD_OUTPUT = 0;

/**
 * @brief xcb_randr_bad_output_error_t
 **/
struct xcb_randr_bad_output_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
} ;

/** Opcode for xcb_randr_bad_crtc. */
const uint XCB_RANDR_BAD_CRTC = 1;

/**
 * @brief xcb_randr_bad_crtc_error_t
 **/
struct xcb_randr_bad_crtc_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
} ;

/** Opcode for xcb_randr_bad_mode. */
const uint XCB_RANDR_BAD_MODE = 2;

/**
 * @brief xcb_randr_bad_mode_error_t
 **/
struct xcb_randr_bad_mode_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
} ;

/** Opcode for xcb_randr_bad_provider. */
const uint XCB_RANDR_BAD_PROVIDER = 3;

/**
 * @brief xcb_randr_bad_provider_error_t
 **/
struct xcb_randr_bad_provider_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
} ;

enum :int{
    XCB_RANDR_ROTATION_ROTATE_0 = (1 << 0),
    XCB_RANDR_ROTATION_ROTATE_90 = (1 << 1),
    XCB_RANDR_ROTATION_ROTATE_180 = (1 << 2),
    XCB_RANDR_ROTATION_ROTATE_270 = (1 << 3),
    XCB_RANDR_ROTATION_REFLECT_X = (1 << 4),
    XCB_RANDR_ROTATION_REFLECT_Y = (1 << 5)
};

/**
 * @brief xcb_randr_screen_size_t
 **/
struct xcb_randr_screen_size_t {
    ushort width; /**<  */
    ushort height; /**<  */
    ushort mwidth; /**<  */
    ushort mheight; /**<  */
} ;

/**
 * @brief xcb_randr_screen_size_iterator_t
 **/
struct xcb_randr_screen_size_iterator_t {
    xcb_randr_screen_size_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
} ;

/**
 * @brief xcb_randr_refresh_rates_t
 **/
struct xcb_randr_refresh_rates_t {
    ushort nRates; /**<  */
} ;

/**
 * @brief xcb_randr_refresh_rates_iterator_t
 **/
struct xcb_randr_refresh_rates_iterator_t {
    xcb_randr_refresh_rates_t *data; /**<  */
    int                        rem; /**<  */
    int                        index; /**<  */
} ;

/**
 * @brief xcb_randr_query_version_cookie_t
 **/
struct xcb_randr_query_version_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_randr_query_version. */
const uint XCB_RANDR_QUERY_VERSION = 0;

/**
 * @brief xcb_randr_query_version_request_t
 **/
struct xcb_randr_query_version_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    uint   major_version; /**<  */
    uint   minor_version; /**<  */
} ;

/**
 * @brief xcb_randr_query_version_reply_t
 **/
struct xcb_randr_query_version_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   major_version; /**<  */
    uint   minor_version; /**<  */
    ubyte  pad1[16]; /**<  */
} ;

enum :int{
    XCB_RANDR_SET_CONFIG_SUCCESS = 0,
    XCB_RANDR_SET_CONFIG_INVALID_CONFIG_TIME = 1,
    XCB_RANDR_SET_CONFIG_INVALID_TIME = 2,
    XCB_RANDR_SET_CONFIG_FAILED = 3
};

/**
 * @brief xcb_randr_set_screen_config_cookie_t
 **/
struct xcb_randr_set_screen_config_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_randr_set_screen_config. */
const uint XCB_RANDR_SET_SCREEN_CONFIG = 2;

/**
 * @brief xcb_randr_set_screen_config_request_t
 **/
struct xcb_randr_set_screen_config_request_t {
    ubyte           major_opcode; /**<  */
    ubyte           minor_opcode; /**<  */
    ushort          length; /**<  */
    xcb_window_t    window; /**<  */
    xcb_timestamp_t timestamp; /**<  */
    xcb_timestamp_t config_timestamp; /**<  */
    ushort          sizeID; /**<  */
    ushort          rotation; /**<  */
    ushort          rate; /**<  */
    ubyte           pad0[2]; /**<  */
} ;

/**
 * @brief xcb_randr_set_screen_config_reply_t
 **/
struct xcb_randr_set_screen_config_reply_t {
    ubyte           response_type; /**<  */
    ubyte           status; /**<  */
    ushort          sequence; /**<  */
    uint            length; /**<  */
    xcb_timestamp_t new_timestamp; /**<  */
    xcb_timestamp_t config_timestamp; /**<  */
    xcb_window_t    root; /**<  */
    ushort          subpixel_order; /**<  */
    ubyte           pad0[10]; /**<  */
} ;

enum :int{
    XCB_RANDR_NOTIFY_MASK_SCREEN_CHANGE = (1 << 0),
    XCB_RANDR_NOTIFY_MASK_CRTC_CHANGE = (1 << 1),
    XCB_RANDR_NOTIFY_MASK_OUTPUT_CHANGE = (1 << 2),
    XCB_RANDR_NOTIFY_MASK_OUTPUT_PROPERTY = (1 << 3),
    XCB_RANDR_NOTIFY_MASK_PROVIDER_CHANGE = (1 << 4),
    XCB_RANDR_NOTIFY_MASK_PROVIDER_PROPERTY = (1 << 5),
    XCB_RANDR_NOTIFY_MASK_RESOURCE_CHANGE = (1 << 6)
};

/** Opcode for xcb_randr_select_input. */
const uint XCB_RANDR_SELECT_INPUT = 4;

/**
 * @brief xcb_randr_select_input_request_t
 **/
struct xcb_randr_select_input_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
    ushort       enable; /**<  */
    ubyte        pad0[2]; /**<  */
} ;

/**
 * @brief xcb_randr_get_screen_info_cookie_t
 **/
struct xcb_randr_get_screen_info_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_randr_get_screen_info. */
const uint XCB_RANDR_GET_SCREEN_INFO = 5;

/**
 * @brief xcb_randr_get_screen_info_request_t
 **/
struct xcb_randr_get_screen_info_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
} ;

/**
 * @brief xcb_randr_get_screen_info_reply_t
 **/
struct xcb_randr_get_screen_info_reply_t {
    ubyte           response_type; /**<  */
    ubyte           rotations; /**<  */
    ushort          sequence; /**<  */
    uint            length; /**<  */
    xcb_window_t    root; /**<  */
    xcb_timestamp_t timestamp; /**<  */
    xcb_timestamp_t config_timestamp; /**<  */
    ushort          nSizes; /**<  */
    ushort          sizeID; /**<  */
    ushort          rotation; /**<  */
    ushort          rate; /**<  */
    ushort          nInfo; /**<  */
    ubyte           pad0[2]; /**<  */
} ;

/**
 * @brief xcb_randr_get_screen_size_range_cookie_t
 **/
struct xcb_randr_get_screen_size_range_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_randr_get_screen_size_range. */
const uint XCB_RANDR_GET_SCREEN_SIZE_RANGE = 6;

/**
 * @brief xcb_randr_get_screen_size_range_request_t
 **/
struct xcb_randr_get_screen_size_range_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
} ;

/**
 * @brief xcb_randr_get_screen_size_range_reply_t
 **/
struct xcb_randr_get_screen_size_range_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort min_width; /**<  */
    ushort min_height; /**<  */
    ushort max_width; /**<  */
    ushort max_height; /**<  */
    ubyte  pad1[16]; /**<  */
} ;

/** Opcode for xcb_randr_set_screen_size. */
const uint XCB_RANDR_SET_SCREEN_SIZE = 7;

/**
 * @brief xcb_randr_set_screen_size_request_t
 **/
struct xcb_randr_set_screen_size_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
    ushort       width; /**<  */
    ushort       height; /**<  */
    uint         mm_width; /**<  */
    uint         mm_height; /**<  */
} ;

enum :int{
    XCB_RANDR_MODE_FLAG_HSYNC_POSITIVE = (1 << 0),
    XCB_RANDR_MODE_FLAG_HSYNC_NEGATIVE = (1 << 1),
    XCB_RANDR_MODE_FLAG_VSYNC_POSITIVE = (1 << 2),
    XCB_RANDR_MODE_FLAG_VSYNC_NEGATIVE = (1 << 3),
    XCB_RANDR_MODE_FLAG_INTERLACE = (1 << 4),
    XCB_RANDR_MODE_FLAG_DOUBLE_SCAN = (1 << 5),
    XCB_RANDR_MODE_FLAG_CSYNC = (1 << 6),
    XCB_RANDR_MODE_FLAG_CSYNC_POSITIVE = (1 << 7),
    XCB_RANDR_MODE_FLAG_CSYNC_NEGATIVE = (1 << 8),
    XCB_RANDR_MODE_FLAG_HSKEW_PRESENT = (1 << 9),
    XCB_RANDR_MODE_FLAG_BCAST = (1 << 10),
    XCB_RANDR_MODE_FLAG_PIXEL_MULTIPLEX = (1 << 11),
    XCB_RANDR_MODE_FLAG_DOUBLE_CLOCK = (1 << 12),
    XCB_RANDR_MODE_FLAG_HALVE_CLOCK = (1 << 13)
};

/**
 * @brief xcb_randr_mode_info_t
 **/
struct xcb_randr_mode_info_t {
    uint   id; /**<  */
    ushort width; /**<  */
    ushort height; /**<  */
    uint   dot_clock; /**<  */
    ushort hsync_start; /**<  */
    ushort hsync_end; /**<  */
    ushort htotal; /**<  */
    ushort hskew; /**<  */
    ushort vsync_start; /**<  */
    ushort vsync_end; /**<  */
    ushort vtotal; /**<  */
    ushort name_len; /**<  */
    uint   mode_flags; /**<  */
} ;

/**
 * @brief xcb_randr_mode_info_iterator_t
 **/
struct xcb_randr_mode_info_iterator_t {
    xcb_randr_mode_info_t *data; /**<  */
    int                    rem; /**<  */
    int                    index; /**<  */
} ;

/**
 * @brief xcb_randr_get_screen_resources_cookie_t
 **/
struct xcb_randr_get_screen_resources_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_randr_get_screen_resources. */
const uint XCB_RANDR_GET_SCREEN_RESOURCES = 8;

/**
 * @brief xcb_randr_get_screen_resources_request_t
 **/
struct xcb_randr_get_screen_resources_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
} ;

/**
 * @brief xcb_randr_get_screen_resources_reply_t
 **/
struct xcb_randr_get_screen_resources_reply_t {
    ubyte           response_type; /**<  */
    ubyte           pad0; /**<  */
    ushort          sequence; /**<  */
    uint            length; /**<  */
    xcb_timestamp_t timestamp; /**<  */
    xcb_timestamp_t config_timestamp; /**<  */
    ushort          num_crtcs; /**<  */
    ushort          num_outputs; /**<  */
    ushort          num_modes; /**<  */
    ushort          names_len; /**<  */
    ubyte           pad1[8]; /**<  */
} ;

enum :int{
    XCB_RANDR_CONNECTION_CONNECTED = 0,
    XCB_RANDR_CONNECTION_DISCONNECTED = 1,
    XCB_RANDR_CONNECTION_UNKNOWN = 2
};

/**
 * @brief xcb_randr_get_output_info_cookie_t
 **/
struct xcb_randr_get_output_info_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_randr_get_output_info. */
const uint XCB_RANDR_GET_OUTPUT_INFO = 9;

/**
 * @brief xcb_randr_get_output_info_request_t
 **/
struct xcb_randr_get_output_info_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_randr_output_t output; /**<  */
    xcb_timestamp_t    config_timestamp; /**<  */
} ;

/**
 * @brief xcb_randr_get_output_info_reply_t
 **/
struct xcb_randr_get_output_info_reply_t {
    ubyte            response_type; /**<  */
    ubyte            status; /**<  */
    ushort           sequence; /**<  */
    uint             length; /**<  */
    xcb_timestamp_t  timestamp; /**<  */
    xcb_randr_crtc_t crtc; /**<  */
    uint             mm_width; /**<  */
    uint             mm_height; /**<  */
    ubyte            connection; /**<  */
    ubyte            subpixel_order; /**<  */
    ushort           num_crtcs; /**<  */
    ushort           num_modes; /**<  */
    ushort           num_preferred; /**<  */
    ushort           num_clones; /**<  */
    ushort           name_len; /**<  */
} ;

/**
 * @brief xcb_randr_list_output_properties_cookie_t
 **/
struct xcb_randr_list_output_properties_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_randr_list_output_properties. */
const uint XCB_RANDR_LIST_OUTPUT_PROPERTIES = 10;

/**
 * @brief xcb_randr_list_output_properties_request_t
 **/
struct xcb_randr_list_output_properties_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_randr_output_t output; /**<  */
} ;

/**
 * @brief xcb_randr_list_output_properties_reply_t
 **/
struct xcb_randr_list_output_properties_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort num_atoms; /**<  */
    ubyte  pad1[22]; /**<  */
} ;

/**
 * @brief xcb_randr_query_output_property_cookie_t
 **/
struct xcb_randr_query_output_property_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_randr_query_output_property. */
const uint XCB_RANDR_QUERY_OUTPUT_PROPERTY = 11;

/**
 * @brief xcb_randr_query_output_property_request_t
 **/
struct xcb_randr_query_output_property_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_randr_output_t output; /**<  */
    xcb_atom_t         property; /**<  */
} ;

/**
 * @brief xcb_randr_query_output_property_reply_t
 **/
struct xcb_randr_query_output_property_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    bool   pending; /**<  */
    bool   range; /**<  */
    bool   immutable; /**<  */
    ubyte  pad1[21]; /**<  */
} ;

/** Opcode for xcb_randr_configure_output_property. */
const uint XCB_RANDR_CONFIGURE_OUTPUT_PROPERTY = 12;

/**
 * @brief xcb_randr_configure_output_property_request_t
 **/
struct xcb_randr_configure_output_property_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_randr_output_t output; /**<  */
    xcb_atom_t         property; /**<  */
    bool               pending; /**<  */
    bool               range; /**<  */
    ubyte              pad0[2]; /**<  */
} ;

/** Opcode for xcb_randr_change_output_property. */
const uint XCB_RANDR_CHANGE_OUTPUT_PROPERTY = 13;

/**
 * @brief xcb_randr_change_output_property_request_t
 **/
struct xcb_randr_change_output_property_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_randr_output_t output; /**<  */
    xcb_atom_t         property; /**<  */
    xcb_atom_t         type; /**<  */
    ubyte              format; /**<  */
    ubyte              mode; /**<  */
    ubyte              pad0[2]; /**<  */
    uint               num_units; /**<  */
} ;

/** Opcode for xcb_randr_delete_output_property. */
const uint XCB_RANDR_DELETE_OUTPUT_PROPERTY = 14;

/**
 * @brief xcb_randr_delete_output_property_request_t
 **/
struct xcb_randr_delete_output_property_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_randr_output_t output; /**<  */
    xcb_atom_t         property; /**<  */
} ;

/**
 * @brief xcb_randr_get_output_property_cookie_t
 **/
struct xcb_randr_get_output_property_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_randr_get_output_property. */
const uint XCB_RANDR_GET_OUTPUT_PROPERTY = 15;

/**
 * @brief xcb_randr_get_output_property_request_t
 **/
struct xcb_randr_get_output_property_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_randr_output_t output; /**<  */
    xcb_atom_t         property; /**<  */
    xcb_atom_t         type; /**<  */
    uint               long_offset; /**<  */
    uint               long_length; /**<  */
    bool               _delete; /**<  */
    bool               pending; /**<  */
    ubyte              pad0[2]; /**<  */
} ;

/**
 * @brief xcb_randr_get_output_property_reply_t
 **/
struct xcb_randr_get_output_property_reply_t {
    ubyte      response_type; /**<  */
    ubyte      format; /**<  */
    ushort     sequence; /**<  */
    uint       length; /**<  */
    xcb_atom_t type; /**<  */
    uint       bytes_after; /**<  */
    uint       num_items; /**<  */
    ubyte      pad0[12]; /**<  */
} ;

/**
 * @brief xcb_randr_create_mode_cookie_t
 **/
struct xcb_randr_create_mode_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_randr_create_mode. */
const uint XCB_RANDR_CREATE_MODE = 16;

/**
 * @brief xcb_randr_create_mode_request_t
 **/
struct xcb_randr_create_mode_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_window_t          window; /**<  */
    xcb_randr_mode_info_t mode_info; /**<  */
} ;

/**
 * @brief xcb_randr_create_mode_reply_t
 **/
struct xcb_randr_create_mode_reply_t {
    ubyte            response_type; /**<  */
    ubyte            pad0; /**<  */
    ushort           sequence; /**<  */
    uint             length; /**<  */
    xcb_randr_mode_t mode; /**<  */
    ubyte            pad1[20]; /**<  */
} ;

/** Opcode for xcb_randr_destroy_mode. */
const uint XCB_RANDR_DESTROY_MODE = 17;

/**
 * @brief xcb_randr_destroy_mode_request_t
 **/
struct xcb_randr_destroy_mode_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_randr_mode_t mode; /**<  */
} ;

/** Opcode for xcb_randr_add_output_mode. */
const uint XCB_RANDR_ADD_OUTPUT_MODE = 18;

/**
 * @brief xcb_randr_add_output_mode_request_t
 **/
struct xcb_randr_add_output_mode_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_randr_output_t output; /**<  */
    xcb_randr_mode_t   mode; /**<  */
} ;

/** Opcode for xcb_randr_delete_output_mode. */
const uint XCB_RANDR_DELETE_OUTPUT_MODE = 19;

/**
 * @brief xcb_randr_delete_output_mode_request_t
 **/
struct xcb_randr_delete_output_mode_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_randr_output_t output; /**<  */
    xcb_randr_mode_t   mode; /**<  */
} ;

/**
 * @brief xcb_randr_get_crtc_info_cookie_t
 **/
struct xcb_randr_get_crtc_info_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_randr_get_crtc_info. */
const uint XCB_RANDR_GET_CRTC_INFO = 20;

/**
 * @brief xcb_randr_get_crtc_info_request_t
 **/
struct xcb_randr_get_crtc_info_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_randr_crtc_t crtc; /**<  */
    xcb_timestamp_t  config_timestamp; /**<  */
} ;

/**
 * @brief xcb_randr_get_crtc_info_reply_t
 **/
struct xcb_randr_get_crtc_info_reply_t {
    ubyte            response_type; /**<  */
    ubyte            status; /**<  */
    ushort           sequence; /**<  */
    uint             length; /**<  */
    xcb_timestamp_t  timestamp; /**<  */
    short            x; /**<  */
    short            y; /**<  */
    ushort           width; /**<  */
    ushort           height; /**<  */
    xcb_randr_mode_t mode; /**<  */
    ushort           rotation; /**<  */
    ushort           rotations; /**<  */
    ushort           num_outputs; /**<  */
    ushort           num_possible_outputs; /**<  */
} ;

/**
 * @brief xcb_randr_set_crtc_config_cookie_t
 **/
struct xcb_randr_set_crtc_config_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_randr_set_crtc_config. */
const uint XCB_RANDR_SET_CRTC_CONFIG = 21;

/**
 * @brief xcb_randr_set_crtc_config_request_t
 **/
struct xcb_randr_set_crtc_config_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_randr_crtc_t crtc; /**<  */
    xcb_timestamp_t  timestamp; /**<  */
    xcb_timestamp_t  config_timestamp; /**<  */
    short            x; /**<  */
    short            y; /**<  */
    xcb_randr_mode_t mode; /**<  */
    ushort           rotation; /**<  */
    ubyte            pad0[2]; /**<  */
} ;

/**
 * @brief xcb_randr_set_crtc_config_reply_t
 **/
struct xcb_randr_set_crtc_config_reply_t {
    ubyte           response_type; /**<  */
    ubyte           status; /**<  */
    ushort          sequence; /**<  */
    uint            length; /**<  */
    xcb_timestamp_t timestamp; /**<  */
    ubyte           pad0[20]; /**<  */
} ;

/**
 * @brief xcb_randr_get_crtc_gamma_size_cookie_t
 **/
struct xcb_randr_get_crtc_gamma_size_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_randr_get_crtc_gamma_size. */
const uint XCB_RANDR_GET_CRTC_GAMMA_SIZE = 22;

/**
 * @brief xcb_randr_get_crtc_gamma_size_request_t
 **/
struct xcb_randr_get_crtc_gamma_size_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_randr_crtc_t crtc; /**<  */
} ;

/**
 * @brief xcb_randr_get_crtc_gamma_size_reply_t
 **/
struct xcb_randr_get_crtc_gamma_size_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort size; /**<  */
    ubyte  pad1[22]; /**<  */
} ;

/**
 * @brief xcb_randr_get_crtc_gamma_cookie_t
 **/
struct xcb_randr_get_crtc_gamma_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_randr_get_crtc_gamma. */
const uint XCB_RANDR_GET_CRTC_GAMMA = 23;

/**
 * @brief xcb_randr_get_crtc_gamma_request_t
 **/
struct xcb_randr_get_crtc_gamma_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_randr_crtc_t crtc; /**<  */
} ;

/**
 * @brief xcb_randr_get_crtc_gamma_reply_t
 **/
struct xcb_randr_get_crtc_gamma_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort size; /**<  */
    ubyte  pad1[22]; /**<  */
} ;

/** Opcode for xcb_randr_set_crtc_gamma. */
const uint XCB_RANDR_SET_CRTC_GAMMA = 24;

/**
 * @brief xcb_randr_set_crtc_gamma_request_t
 **/
struct xcb_randr_set_crtc_gamma_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_randr_crtc_t crtc; /**<  */
    ushort           size; /**<  */
    ubyte            pad0[2]; /**<  */
} ;

/**
 * @brief xcb_randr_get_screen_resources_current_cookie_t
 **/
struct xcb_randr_get_screen_resources_current_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_randr_get_screen_resources_current. */
const uint XCB_RANDR_GET_SCREEN_RESOURCES_CURRENT = 25;

/**
 * @brief xcb_randr_get_screen_resources_current_request_t
 **/
struct xcb_randr_get_screen_resources_current_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
} ;

/**
 * @brief xcb_randr_get_screen_resources_current_reply_t
 **/
struct xcb_randr_get_screen_resources_current_reply_t {
    ubyte           response_type; /**<  */
    ubyte           pad0; /**<  */
    ushort          sequence; /**<  */
    uint            length; /**<  */
    xcb_timestamp_t timestamp; /**<  */
    xcb_timestamp_t config_timestamp; /**<  */
    ushort          num_crtcs; /**<  */
    ushort          num_outputs; /**<  */
    ushort          num_modes; /**<  */
    ushort          names_len; /**<  */
    ubyte           pad1[8]; /**<  */
} ;

enum :int{
    XCB_RANDR_TRANSFORM_UNIT = (1 << 0),
    XCB_RANDR_TRANSFORM_SCALE_UP = (1 << 1),
    XCB_RANDR_TRANSFORM_SCALE_DOWN = (1 << 2),
    XCB_RANDR_TRANSFORM_PROJECTIVE = (1 << 3)
};

/** Opcode for xcb_randr_set_crtc_transform. */
const uint XCB_RANDR_SET_CRTC_TRANSFORM = 26;

/**
 * @brief xcb_randr_set_crtc_transform_request_t
 **/
struct xcb_randr_set_crtc_transform_request_t {
    ubyte                  major_opcode; /**<  */
    ubyte                  minor_opcode; /**<  */
    ushort                 length; /**<  */
    xcb_randr_crtc_t       crtc; /**<  */
    xcb_render_transform_t transform; /**<  */
    ushort                 filter_len; /**<  */
    ubyte                  pad0[2]; /**<  */
} ;

/**
 * @brief xcb_randr_get_crtc_transform_cookie_t
 **/
struct xcb_randr_get_crtc_transform_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_randr_get_crtc_transform. */
const uint XCB_RANDR_GET_CRTC_TRANSFORM = 27;

/**
 * @brief xcb_randr_get_crtc_transform_request_t
 **/
struct xcb_randr_get_crtc_transform_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_randr_crtc_t crtc; /**<  */
} ;

/**
 * @brief xcb_randr_get_crtc_transform_reply_t
 **/
struct xcb_randr_get_crtc_transform_reply_t {
    ubyte                  response_type; /**<  */
    ubyte                  pad0; /**<  */
    ushort                 sequence; /**<  */
    uint                   length; /**<  */
    xcb_render_transform_t pending_transform; /**<  */
    bool                   has_transforms; /**<  */
    ubyte                  pad1[3]; /**<  */
    xcb_render_transform_t current_transform; /**<  */
    ubyte                  pad2[4]; /**<  */
    ushort                 pending_len; /**<  */
    ushort                 pending_nparams; /**<  */
    ushort                 current_len; /**<  */
    ushort                 current_nparams; /**<  */
} ;

/**
 * @brief xcb_randr_get_panning_cookie_t
 **/
struct xcb_randr_get_panning_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_randr_get_panning. */
const uint XCB_RANDR_GET_PANNING = 28;

/**
 * @brief xcb_randr_get_panning_request_t
 **/
struct xcb_randr_get_panning_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_randr_crtc_t crtc; /**<  */
} ;

/**
 * @brief xcb_randr_get_panning_reply_t
 **/
struct xcb_randr_get_panning_reply_t {
    ubyte           response_type; /**<  */
    ubyte           status; /**<  */
    ushort          sequence; /**<  */
    uint            length; /**<  */
    xcb_timestamp_t timestamp; /**<  */
    ushort          left; /**<  */
    ushort          top; /**<  */
    ushort          width; /**<  */
    ushort          height; /**<  */
    ushort          track_left; /**<  */
    ushort          track_top; /**<  */
    ushort          track_width; /**<  */
    ushort          track_height; /**<  */
    short           border_left; /**<  */
    short           border_top; /**<  */
    short           border_right; /**<  */
    short           border_bottom; /**<  */
} ;

/**
 * @brief xcb_randr_set_panning_cookie_t
 **/
struct xcb_randr_set_panning_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_randr_set_panning. */
const uint XCB_RANDR_SET_PANNING = 29;

/**
 * @brief xcb_randr_set_panning_request_t
 **/
struct xcb_randr_set_panning_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_randr_crtc_t crtc; /**<  */
    xcb_timestamp_t  timestamp; /**<  */
    ushort           left; /**<  */
    ushort           top; /**<  */
    ushort           width; /**<  */
    ushort           height; /**<  */
    ushort           track_left; /**<  */
    ushort           track_top; /**<  */
    ushort           track_width; /**<  */
    ushort           track_height; /**<  */
    short            border_left; /**<  */
    short            border_top; /**<  */
    short            border_right; /**<  */
    short            border_bottom; /**<  */
} ;

/**
 * @brief xcb_randr_set_panning_reply_t
 **/
struct xcb_randr_set_panning_reply_t {
    ubyte           response_type; /**<  */
    ubyte           status; /**<  */
    ushort          sequence; /**<  */
    uint            length; /**<  */
    xcb_timestamp_t timestamp; /**<  */
} ;

/** Opcode for xcb_randr_set_output_primary. */
const uint XCB_RANDR_SET_OUTPUT_PRIMARY = 30;

/**
 * @brief xcb_randr_set_output_primary_request_t
 **/
struct xcb_randr_set_output_primary_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_window_t       window; /**<  */
    xcb_randr_output_t output; /**<  */
} ;

/**
 * @brief xcb_randr_get_output_primary_cookie_t
 **/
struct xcb_randr_get_output_primary_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_randr_get_output_primary. */
const uint XCB_RANDR_GET_OUTPUT_PRIMARY = 31;

/**
 * @brief xcb_randr_get_output_primary_request_t
 **/
struct xcb_randr_get_output_primary_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
} ;

/**
 * @brief xcb_randr_get_output_primary_reply_t
 **/
struct xcb_randr_get_output_primary_reply_t {
    ubyte              response_type; /**<  */
    ubyte              pad0; /**<  */
    ushort             sequence; /**<  */
    uint               length; /**<  */
    xcb_randr_output_t output; /**<  */
} ;

/**
 * @brief xcb_randr_get_providers_cookie_t
 **/
struct xcb_randr_get_providers_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_randr_get_providers. */
const uint XCB_RANDR_GET_PROVIDERS = 32;

/**
 * @brief xcb_randr_get_providers_request_t
 **/
struct xcb_randr_get_providers_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
} ;

/**
 * @brief xcb_randr_get_providers_reply_t
 **/
struct xcb_randr_get_providers_reply_t {
    ubyte           response_type; /**<  */
    ubyte           pad0; /**<  */
    ushort          sequence; /**<  */
    uint            length; /**<  */
    xcb_timestamp_t timestamp; /**<  */
    ushort          num_providers; /**<  */
    ubyte           pad1[18]; /**<  */
} ;

enum :int{
    XCB_RANDR_PROVIDER_CAPABILITY_SOURCE_OUTPUT = (1 << 0),
    XCB_RANDR_PROVIDER_CAPABILITY_SINK_OUTPUT = (1 << 1),
    XCB_RANDR_PROVIDER_CAPABILITY_SOURCE_OFFLOAD = (1 << 2),
    XCB_RANDR_PROVIDER_CAPABILITY_SINK_OFFLOAD = (1 << 3)
};

/**
 * @brief xcb_randr_get_provider_info_cookie_t
 **/
struct xcb_randr_get_provider_info_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_randr_get_provider_info. */
const uint XCB_RANDR_GET_PROVIDER_INFO = 33;

/**
 * @brief xcb_randr_get_provider_info_request_t
 **/
struct xcb_randr_get_provider_info_request_t {
    ubyte                major_opcode; /**<  */
    ubyte                minor_opcode; /**<  */
    ushort               length; /**<  */
    xcb_randr_provider_t provider; /**<  */
    xcb_timestamp_t      config_timestamp; /**<  */
} ;

/**
 * @brief xcb_randr_get_provider_info_reply_t
 **/
struct xcb_randr_get_provider_info_reply_t {
    ubyte           response_type; /**<  */
    ubyte           status; /**<  */
    ushort          sequence; /**<  */
    uint            length; /**<  */
    xcb_timestamp_t timestamp; /**<  */
    uint            capabilities; /**<  */
    ushort          num_crtcs; /**<  */
    ushort          num_outputs; /**<  */
    ushort          num_associated_providers; /**<  */
    ushort          name_len; /**<  */
    ubyte           pad0[8]; /**<  */
} ;

/** Opcode for xcb_randr_set_provider_offload_sink. */
const uint XCB_RANDR_SET_PROVIDER_OFFLOAD_SINK = 34;

/**
 * @brief xcb_randr_set_provider_offload_sink_request_t
 **/
struct xcb_randr_set_provider_offload_sink_request_t {
    ubyte                major_opcode; /**<  */
    ubyte                minor_opcode; /**<  */
    ushort               length; /**<  */
    xcb_randr_provider_t provider; /**<  */
    xcb_randr_provider_t sink_provider; /**<  */
    xcb_timestamp_t      config_timestamp; /**<  */
} ;

/** Opcode for xcb_randr_set_provider_output_source. */
const uint XCB_RANDR_SET_PROVIDER_OUTPUT_SOURCE = 35;

/**
 * @brief xcb_randr_set_provider_output_source_request_t
 **/
struct xcb_randr_set_provider_output_source_request_t {
    ubyte                major_opcode; /**<  */
    ubyte                minor_opcode; /**<  */
    ushort               length; /**<  */
    xcb_randr_provider_t provider; /**<  */
    xcb_randr_provider_t source_provider; /**<  */
    xcb_timestamp_t      config_timestamp; /**<  */
} ;

/**
 * @brief xcb_randr_list_provider_properties_cookie_t
 **/
struct xcb_randr_list_provider_properties_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_randr_list_provider_properties. */
const uint XCB_RANDR_LIST_PROVIDER_PROPERTIES = 36;

/**
 * @brief xcb_randr_list_provider_properties_request_t
 **/
struct xcb_randr_list_provider_properties_request_t {
    ubyte                major_opcode; /**<  */
    ubyte                minor_opcode; /**<  */
    ushort               length; /**<  */
    xcb_randr_provider_t provider; /**<  */
} ;

/**
 * @brief xcb_randr_list_provider_properties_reply_t
 **/
struct xcb_randr_list_provider_properties_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort num_atoms; /**<  */
    ubyte  pad1[22]; /**<  */
} ;

/**
 * @brief xcb_randr_query_provider_property_cookie_t
 **/
struct xcb_randr_query_provider_property_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_randr_query_provider_property. */
const uint XCB_RANDR_QUERY_PROVIDER_PROPERTY = 37;

/**
 * @brief xcb_randr_query_provider_property_request_t
 **/
struct xcb_randr_query_provider_property_request_t {
    ubyte                major_opcode; /**<  */
    ubyte                minor_opcode; /**<  */
    ushort               length; /**<  */
    xcb_randr_provider_t provider; /**<  */
    xcb_atom_t           property; /**<  */
} ;

/**
 * @brief xcb_randr_query_provider_property_reply_t
 **/
struct xcb_randr_query_provider_property_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    bool   pending; /**<  */
    bool   range; /**<  */
    bool   immutable; /**<  */
    ubyte  pad1[21]; /**<  */
} ;

/** Opcode for xcb_randr_configure_provider_property. */
const uint XCB_RANDR_CONFIGURE_PROVIDER_PROPERTY = 38;

/**
 * @brief xcb_randr_configure_provider_property_request_t
 **/
struct xcb_randr_configure_provider_property_request_t {
    ubyte                major_opcode; /**<  */
    ubyte                minor_opcode; /**<  */
    ushort               length; /**<  */
    xcb_randr_provider_t provider; /**<  */
    xcb_atom_t           property; /**<  */
    bool                 pending; /**<  */
    bool                 range; /**<  */
    ubyte                pad0[2]; /**<  */
} ;

/** Opcode for xcb_randr_change_provider_property. */
const uint XCB_RANDR_CHANGE_PROVIDER_PROPERTY = 39;

/**
 * @brief xcb_randr_change_provider_property_request_t
 **/
struct xcb_randr_change_provider_property_request_t {
    ubyte                major_opcode; /**<  */
    ubyte                minor_opcode; /**<  */
    ushort               length; /**<  */
    xcb_randr_provider_t provider; /**<  */
    xcb_atom_t           property; /**<  */
    xcb_atom_t           type; /**<  */
    ubyte                format; /**<  */
    ubyte                mode; /**<  */
    ubyte                pad0[2]; /**<  */
    uint                 num_items; /**<  */
} ;

/** Opcode for xcb_randr_delete_provider_property. */
const uint XCB_RANDR_DELETE_PROVIDER_PROPERTY = 40;

/**
 * @brief xcb_randr_delete_provider_property_request_t
 **/
struct xcb_randr_delete_provider_property_request_t {
    ubyte                major_opcode; /**<  */
    ubyte                minor_opcode; /**<  */
    ushort               length; /**<  */
    xcb_randr_provider_t provider; /**<  */
    xcb_atom_t           property; /**<  */
} ;

/**
 * @brief xcb_randr_get_provider_property_cookie_t
 **/
struct xcb_randr_get_provider_property_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_randr_get_provider_property. */
const uint XCB_RANDR_GET_PROVIDER_PROPERTY = 41;

/**
 * @brief xcb_randr_get_provider_property_request_t
 **/
struct xcb_randr_get_provider_property_request_t {
    ubyte                major_opcode; /**<  */
    ubyte                minor_opcode; /**<  */
    ushort               length; /**<  */
    xcb_randr_provider_t provider; /**<  */
    xcb_atom_t           property; /**<  */
    xcb_atom_t           type; /**<  */
    uint                 long_offset; /**<  */
    uint                 long_length; /**<  */
    bool                 _delete; /**<  */
    bool                 pending; /**<  */
    ubyte                pad0[2]; /**<  */
} ;

/**
 * @brief xcb_randr_get_provider_property_reply_t
 **/
struct xcb_randr_get_provider_property_reply_t {
    ubyte      response_type; /**<  */
    ubyte      format; /**<  */
    ushort     sequence; /**<  */
    uint       length; /**<  */
    xcb_atom_t type; /**<  */
    uint       bytes_after; /**<  */
    uint       num_items; /**<  */
    ubyte      pad0[12]; /**<  */
} ;

/** Opcode for xcb_randr_screen_change_notify. */
const uint XCB_RANDR_SCREEN_CHANGE_NOTIFY = 0;

/**
 * @brief xcb_randr_screen_change_notify_event_t
 **/
struct xcb_randr_screen_change_notify_event_t {
    ubyte           response_type; /**<  */
    ubyte           rotation; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t timestamp; /**<  */
    xcb_timestamp_t config_timestamp; /**<  */
    xcb_window_t    root; /**<  */
    xcb_window_t    request_window; /**<  */
    ushort          sizeID; /**<  */
    ushort          subpixel_order; /**<  */
    ushort          width; /**<  */
    ushort          height; /**<  */
    ushort          mwidth; /**<  */
    ushort          mheight; /**<  */
} ;

enum :int{
    XCB_RANDR_NOTIFY_CRTC_CHANGE = 0,
    XCB_RANDR_NOTIFY_OUTPUT_CHANGE = 1,
    XCB_RANDR_NOTIFY_OUTPUT_PROPERTY = 2,
    XCB_RANDR_NOTIFY_PROVIDER_CHANGE = 3,
    XCB_RANDR_NOTIFY_PROVIDER_PROPERTY = 4,
    XCB_RANDR_NOTIFY_RESOURCE_CHANGE = 5
};

/**
 * @brief xcb_randr_crtc_change_t
 **/
struct xcb_randr_crtc_change_t {
    xcb_timestamp_t  timestamp; /**<  */
    xcb_window_t     window; /**<  */
    xcb_randr_crtc_t crtc; /**<  */
    xcb_randr_mode_t mode; /**<  */
    ushort           rotation; /**<  */
    ubyte            pad0[2]; /**<  */
    short            x; /**<  */
    short            y; /**<  */
    ushort           width; /**<  */
    ushort           height; /**<  */
} ;

/**
 * @brief xcb_randr_crtc_change_iterator_t
 **/
struct xcb_randr_crtc_change_iterator_t {
    xcb_randr_crtc_change_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
} ;

/**
 * @brief xcb_randr_output_change_t
 **/
struct xcb_randr_output_change_t {
    xcb_timestamp_t    timestamp; /**<  */
    xcb_timestamp_t    config_timestamp; /**<  */
    xcb_window_t       window; /**<  */
    xcb_randr_output_t output; /**<  */
    xcb_randr_crtc_t   crtc; /**<  */
    xcb_randr_mode_t   mode; /**<  */
    ushort             rotation; /**<  */
    ubyte              connection; /**<  */
    ubyte              subpixel_order; /**<  */
} ;

/**
 * @brief xcb_randr_output_change_iterator_t
 **/
struct xcb_randr_output_change_iterator_t {
    xcb_randr_output_change_t *data; /**<  */
    int                        rem; /**<  */
    int                        index; /**<  */
} ;

/**
 * @brief xcb_randr_output_property_t
 **/
struct xcb_randr_output_property_t {
    xcb_window_t       window; /**<  */
    xcb_randr_output_t output; /**<  */
    xcb_atom_t         atom; /**<  */
    xcb_timestamp_t    timestamp; /**<  */
    ubyte              status; /**<  */
    ubyte              pad0[11]; /**<  */
} ;

/**
 * @brief xcb_randr_output_property_iterator_t
 **/
struct xcb_randr_output_property_iterator_t {
    xcb_randr_output_property_t *data; /**<  */
    int                          rem; /**<  */
    int                          index; /**<  */
} ;

/**
 * @brief xcb_randr_provider_change_t
 **/
struct xcb_randr_provider_change_t {
    xcb_timestamp_t      timestamp; /**<  */
    xcb_window_t         window; /**<  */
    xcb_randr_provider_t provider; /**<  */
    ubyte                pad0[16]; /**<  */
} ;

/**
 * @brief xcb_randr_provider_change_iterator_t
 **/
struct xcb_randr_provider_change_iterator_t {
    xcb_randr_provider_change_t *data; /**<  */
    int                          rem; /**<  */
    int                          index; /**<  */
} ;

/**
 * @brief xcb_randr_provider_property_t
 **/
struct xcb_randr_provider_property_t {
    xcb_window_t         window; /**<  */
    xcb_randr_provider_t provider; /**<  */
    xcb_atom_t           atom; /**<  */
    xcb_timestamp_t      timestamp; /**<  */
    ubyte                state; /**<  */
    ubyte                pad0[11]; /**<  */
} ;

/**
 * @brief xcb_randr_provider_property_iterator_t
 **/
struct xcb_randr_provider_property_iterator_t {
    xcb_randr_provider_property_t *data; /**<  */
    int                            rem; /**<  */
    int                            index; /**<  */
} ;

/**
 * @brief xcb_randr_resource_change_t
 **/
struct xcb_randr_resource_change_t {
    xcb_timestamp_t timestamp; /**<  */
    xcb_window_t    window; /**<  */
    ubyte           pad0[20]; /**<  */
} ;

/**
 * @brief xcb_randr_resource_change_iterator_t
 **/
struct xcb_randr_resource_change_iterator_t {
    xcb_randr_resource_change_t *data; /**<  */
    int                          rem; /**<  */
    int                          index; /**<  */
} ;

/**
 * @brief xcb_randr_notify_data_t
 **/
union xcb_randr_notify_data_t {
    xcb_randr_crtc_change_t       cc; /**<  */
    xcb_randr_output_change_t     oc; /**<  */
    xcb_randr_output_property_t   op; /**<  */
    xcb_randr_provider_change_t   pc; /**<  */
    xcb_randr_provider_property_t pp; /**<  */
    xcb_randr_resource_change_t   rc; /**<  */
} ;

/**
 * @brief xcb_randr_notify_data_iterator_t
 **/
struct xcb_randr_notify_data_iterator_t {
    xcb_randr_notify_data_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
} ;

/** Opcode for xcb_randr_notify. */
const uint XCB_RANDR_NOTIFY = 1;

/**
 * @brief xcb_randr_notify_event_t
 **/
struct xcb_randr_notify_event_t {
    ubyte                   response_type; /**<  */
    ubyte                   subCode; /**<  */
    ushort                  sequence; /**<  */
    xcb_randr_notify_data_t u; /**<  */
} ;


/*****************************************************************************
 **
 ** void xcb_randr_mode_next
 ** 
 ** @param xcb_randr_mode_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_randr_mode_next (xcb_randr_mode_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_mode_end
 ** 
 ** @param xcb_randr_mode_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_mode_end (xcb_randr_mode_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_randr_crtc_next
 ** 
 ** @param xcb_randr_crtc_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_randr_crtc_next (xcb_randr_crtc_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_crtc_end
 ** 
 ** @param xcb_randr_crtc_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_crtc_end (xcb_randr_crtc_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_randr_output_next
 ** 
 ** @param xcb_randr_output_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_randr_output_next (xcb_randr_output_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_output_end
 ** 
 ** @param xcb_randr_output_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_output_end (xcb_randr_output_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_randr_provider_next
 ** 
 ** @param xcb_randr_provider_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_randr_provider_next (xcb_randr_provider_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_provider_end
 ** 
 ** @param xcb_randr_provider_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_provider_end (xcb_randr_provider_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_randr_screen_size_next
 ** 
 ** @param xcb_randr_screen_size_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_randr_screen_size_next (xcb_randr_screen_size_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_screen_size_end
 ** 
 ** @param xcb_randr_screen_size_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_screen_size_end (xcb_randr_screen_size_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** ushort * xcb_randr_refresh_rates_rates
 ** 
 ** @param /+const+/ xcb_randr_refresh_rates_t *R
 ** @returns ushort *
 **
 *****************************************************************************/
 
extern(C) ushort *
xcb_randr_refresh_rates_rates (/+const+/ xcb_randr_refresh_rates_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_refresh_rates_rates_length
 ** 
 ** @param /+const+/ xcb_randr_refresh_rates_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_refresh_rates_rates_length (/+const+/ xcb_randr_refresh_rates_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_refresh_rates_rates_end
 ** 
 ** @param /+const+/ xcb_randr_refresh_rates_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_refresh_rates_rates_end (/+const+/ xcb_randr_refresh_rates_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_randr_refresh_rates_next
 ** 
 ** @param xcb_randr_refresh_rates_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_randr_refresh_rates_next (xcb_randr_refresh_rates_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_refresh_rates_end
 ** 
 ** @param xcb_randr_refresh_rates_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_refresh_rates_end (xcb_randr_refresh_rates_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_query_version_cookie_t xcb_randr_query_version
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              major_version
 ** @param uint              minor_version
 ** @returns xcb_randr_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_query_version_cookie_t
xcb_randr_query_version (xcb_connection_t *c  /**< */,
                         uint              major_version  /**< */,
                         uint              minor_version  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_query_version_cookie_t xcb_randr_query_version_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              major_version
 ** @param uint              minor_version
 ** @returns xcb_randr_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_query_version_cookie_t
xcb_randr_query_version_unchecked (xcb_connection_t *c  /**< */,
                                   uint              major_version  /**< */,
                                   uint              minor_version  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_query_version_reply_t * xcb_randr_query_version_reply
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_randr_query_version_cookie_t   cookie
 ** @param xcb_generic_error_t              **e
 ** @returns xcb_randr_query_version_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_query_version_reply_t *
xcb_randr_query_version_reply (xcb_connection_t                  *c  /**< */,
                               xcb_randr_query_version_cookie_t   cookie  /**< */,
                               xcb_generic_error_t              **e  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_set_screen_config_cookie_t xcb_randr_set_screen_config
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param xcb_timestamp_t   timestamp
 ** @param xcb_timestamp_t   config_timestamp
 ** @param ushort            sizeID
 ** @param ushort            rotation
 ** @param ushort            rate
 ** @returns xcb_randr_set_screen_config_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_set_screen_config_cookie_t
xcb_randr_set_screen_config (xcb_connection_t *c  /**< */,
                             xcb_window_t      window  /**< */,
                             xcb_timestamp_t   timestamp  /**< */,
                             xcb_timestamp_t   config_timestamp  /**< */,
                             ushort            sizeID  /**< */,
                             ushort            rotation  /**< */,
                             ushort            rate  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_set_screen_config_cookie_t xcb_randr_set_screen_config_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param xcb_timestamp_t   timestamp
 ** @param xcb_timestamp_t   config_timestamp
 ** @param ushort            sizeID
 ** @param ushort            rotation
 ** @param ushort            rate
 ** @returns xcb_randr_set_screen_config_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_set_screen_config_cookie_t
xcb_randr_set_screen_config_unchecked (xcb_connection_t *c  /**< */,
                                       xcb_window_t      window  /**< */,
                                       xcb_timestamp_t   timestamp  /**< */,
                                       xcb_timestamp_t   config_timestamp  /**< */,
                                       ushort            sizeID  /**< */,
                                       ushort            rotation  /**< */,
                                       ushort            rate  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_set_screen_config_reply_t * xcb_randr_set_screen_config_reply
 ** 
 ** @param xcb_connection_t                      *c
 ** @param xcb_randr_set_screen_config_cookie_t   cookie
 ** @param xcb_generic_error_t                  **e
 ** @returns xcb_randr_set_screen_config_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_set_screen_config_reply_t *
xcb_randr_set_screen_config_reply (xcb_connection_t                      *c  /**< */,
                                   xcb_randr_set_screen_config_cookie_t   cookie  /**< */,
                                   xcb_generic_error_t                  **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_select_input_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param ushort            enable
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_select_input_checked (xcb_connection_t *c  /**< */,
                                xcb_window_t      window  /**< */,
                                ushort            enable  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_select_input
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param ushort            enable
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_select_input (xcb_connection_t *c  /**< */,
                        xcb_window_t      window  /**< */,
                        ushort            enable  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_screen_info_cookie_t xcb_randr_get_screen_info
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_randr_get_screen_info_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_screen_info_cookie_t
xcb_randr_get_screen_info (xcb_connection_t *c  /**< */,
                           xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_screen_info_cookie_t xcb_randr_get_screen_info_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_randr_get_screen_info_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_screen_info_cookie_t
xcb_randr_get_screen_info_unchecked (xcb_connection_t *c  /**< */,
                                     xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_screen_size_t * xcb_randr_get_screen_info_sizes
 ** 
 ** @param /+const+/ xcb_randr_get_screen_info_reply_t *R
 ** @returns xcb_randr_screen_size_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_screen_size_t *
xcb_randr_get_screen_info_sizes (/+const+/ xcb_randr_get_screen_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_screen_info_sizes_length
 ** 
 ** @param /+const+/ xcb_randr_get_screen_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_screen_info_sizes_length (/+const+/ xcb_randr_get_screen_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_screen_size_iterator_t xcb_randr_get_screen_info_sizes_iterator
 ** 
 ** @param /+const+/ xcb_randr_get_screen_info_reply_t *R
 ** @returns xcb_randr_screen_size_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_screen_size_iterator_t
xcb_randr_get_screen_info_sizes_iterator (/+const+/ xcb_randr_get_screen_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_screen_info_rates_length
 ** 
 ** @param /+const+/ xcb_randr_get_screen_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_screen_info_rates_length (/+const+/ xcb_randr_get_screen_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_refresh_rates_iterator_t xcb_randr_get_screen_info_rates_iterator
 ** 
 ** @param /+const+/ xcb_randr_get_screen_info_reply_t *R
 ** @returns xcb_randr_refresh_rates_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_refresh_rates_iterator_t
xcb_randr_get_screen_info_rates_iterator (/+const+/ xcb_randr_get_screen_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_screen_info_reply_t * xcb_randr_get_screen_info_reply
 ** 
 ** @param xcb_connection_t                    *c
 ** @param xcb_randr_get_screen_info_cookie_t   cookie
 ** @param xcb_generic_error_t                **e
 ** @returns xcb_randr_get_screen_info_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_screen_info_reply_t *
xcb_randr_get_screen_info_reply (xcb_connection_t                    *c  /**< */,
                                 xcb_randr_get_screen_info_cookie_t   cookie  /**< */,
                                 xcb_generic_error_t                **e  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_screen_size_range_cookie_t xcb_randr_get_screen_size_range
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_randr_get_screen_size_range_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_screen_size_range_cookie_t
xcb_randr_get_screen_size_range (xcb_connection_t *c  /**< */,
                                 xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_screen_size_range_cookie_t xcb_randr_get_screen_size_range_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_randr_get_screen_size_range_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_screen_size_range_cookie_t
xcb_randr_get_screen_size_range_unchecked (xcb_connection_t *c  /**< */,
                                           xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_screen_size_range_reply_t * xcb_randr_get_screen_size_range_reply
 ** 
 ** @param xcb_connection_t                          *c
 ** @param xcb_randr_get_screen_size_range_cookie_t   cookie
 ** @param xcb_generic_error_t                      **e
 ** @returns xcb_randr_get_screen_size_range_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_screen_size_range_reply_t *
xcb_randr_get_screen_size_range_reply (xcb_connection_t                          *c  /**< */,
                                       xcb_randr_get_screen_size_range_cookie_t   cookie  /**< */,
                                       xcb_generic_error_t                      **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_set_screen_size_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param ushort            width
 ** @param ushort            height
 ** @param uint              mm_width
 ** @param uint              mm_height
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_set_screen_size_checked (xcb_connection_t *c  /**< */,
                                   xcb_window_t      window  /**< */,
                                   ushort            width  /**< */,
                                   ushort            height  /**< */,
                                   uint              mm_width  /**< */,
                                   uint              mm_height  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_set_screen_size
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param ushort            width
 ** @param ushort            height
 ** @param uint              mm_width
 ** @param uint              mm_height
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_set_screen_size (xcb_connection_t *c  /**< */,
                           xcb_window_t      window  /**< */,
                           ushort            width  /**< */,
                           ushort            height  /**< */,
                           uint              mm_width  /**< */,
                           uint              mm_height  /**< */);


/*****************************************************************************
 **
 ** void xcb_randr_mode_info_next
 ** 
 ** @param xcb_randr_mode_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_randr_mode_info_next (xcb_randr_mode_info_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_mode_info_end
 ** 
 ** @param xcb_randr_mode_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_mode_info_end (xcb_randr_mode_info_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_screen_resources_cookie_t xcb_randr_get_screen_resources
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_randr_get_screen_resources_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_screen_resources_cookie_t
xcb_randr_get_screen_resources (xcb_connection_t *c  /**< */,
                                xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_screen_resources_cookie_t xcb_randr_get_screen_resources_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_randr_get_screen_resources_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_screen_resources_cookie_t
xcb_randr_get_screen_resources_unchecked (xcb_connection_t *c  /**< */,
                                          xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_crtc_t * xcb_randr_get_screen_resources_crtcs
 ** 
 ** @param /+const+/ xcb_randr_get_screen_resources_reply_t *R
 ** @returns xcb_randr_crtc_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_crtc_t *
xcb_randr_get_screen_resources_crtcs (/+const+/ xcb_randr_get_screen_resources_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_screen_resources_crtcs_length
 ** 
 ** @param /+const+/ xcb_randr_get_screen_resources_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_screen_resources_crtcs_length (/+const+/ xcb_randr_get_screen_resources_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_crtc_iterator_t xcb_randr_get_screen_resources_crtcs_iterator
 ** 
 ** @param /+const+/ xcb_randr_get_screen_resources_reply_t *R
 ** @returns xcb_randr_crtc_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_crtc_iterator_t
xcb_randr_get_screen_resources_crtcs_iterator (/+const+/ xcb_randr_get_screen_resources_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_output_t * xcb_randr_get_screen_resources_outputs
 ** 
 ** @param /+const+/ xcb_randr_get_screen_resources_reply_t *R
 ** @returns xcb_randr_output_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_output_t *
xcb_randr_get_screen_resources_outputs (/+const+/ xcb_randr_get_screen_resources_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_screen_resources_outputs_length
 ** 
 ** @param /+const+/ xcb_randr_get_screen_resources_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_screen_resources_outputs_length (/+const+/ xcb_randr_get_screen_resources_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_output_iterator_t xcb_randr_get_screen_resources_outputs_iterator
 ** 
 ** @param /+const+/ xcb_randr_get_screen_resources_reply_t *R
 ** @returns xcb_randr_output_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_output_iterator_t
xcb_randr_get_screen_resources_outputs_iterator (/+const+/ xcb_randr_get_screen_resources_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_mode_info_t * xcb_randr_get_screen_resources_modes
 ** 
 ** @param /+const+/ xcb_randr_get_screen_resources_reply_t *R
 ** @returns xcb_randr_mode_info_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_mode_info_t *
xcb_randr_get_screen_resources_modes (/+const+/ xcb_randr_get_screen_resources_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_screen_resources_modes_length
 ** 
 ** @param /+const+/ xcb_randr_get_screen_resources_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_screen_resources_modes_length (/+const+/ xcb_randr_get_screen_resources_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_mode_info_iterator_t xcb_randr_get_screen_resources_modes_iterator
 ** 
 ** @param /+const+/ xcb_randr_get_screen_resources_reply_t *R
 ** @returns xcb_randr_mode_info_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_mode_info_iterator_t
xcb_randr_get_screen_resources_modes_iterator (/+const+/ xcb_randr_get_screen_resources_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_randr_get_screen_resources_names
 ** 
 ** @param /+const+/ xcb_randr_get_screen_resources_reply_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
extern(C) ubyte *
xcb_randr_get_screen_resources_names (/+const+/ xcb_randr_get_screen_resources_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_screen_resources_names_length
 ** 
 ** @param /+const+/ xcb_randr_get_screen_resources_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_screen_resources_names_length (/+const+/ xcb_randr_get_screen_resources_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_screen_resources_names_end
 ** 
 ** @param /+const+/ xcb_randr_get_screen_resources_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_screen_resources_names_end (/+const+/ xcb_randr_get_screen_resources_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_screen_resources_reply_t * xcb_randr_get_screen_resources_reply
 ** 
 ** @param xcb_connection_t                         *c
 ** @param xcb_randr_get_screen_resources_cookie_t   cookie
 ** @param xcb_generic_error_t                     **e
 ** @returns xcb_randr_get_screen_resources_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_screen_resources_reply_t *
xcb_randr_get_screen_resources_reply (xcb_connection_t                         *c  /**< */,
                                      xcb_randr_get_screen_resources_cookie_t   cookie  /**< */,
                                      xcb_generic_error_t                     **e  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_output_info_cookie_t xcb_randr_get_output_info
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_timestamp_t     config_timestamp
 ** @returns xcb_randr_get_output_info_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_output_info_cookie_t
xcb_randr_get_output_info (xcb_connection_t   *c  /**< */,
                           xcb_randr_output_t  output  /**< */,
                           xcb_timestamp_t     config_timestamp  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_output_info_cookie_t xcb_randr_get_output_info_unchecked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_timestamp_t     config_timestamp
 ** @returns xcb_randr_get_output_info_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_output_info_cookie_t
xcb_randr_get_output_info_unchecked (xcb_connection_t   *c  /**< */,
                                     xcb_randr_output_t  output  /**< */,
                                     xcb_timestamp_t     config_timestamp  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_crtc_t * xcb_randr_get_output_info_crtcs
 ** 
 ** @param /+const+/ xcb_randr_get_output_info_reply_t *R
 ** @returns xcb_randr_crtc_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_crtc_t *
xcb_randr_get_output_info_crtcs (/+const+/ xcb_randr_get_output_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_output_info_crtcs_length
 ** 
 ** @param /+const+/ xcb_randr_get_output_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_output_info_crtcs_length (/+const+/ xcb_randr_get_output_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_crtc_iterator_t xcb_randr_get_output_info_crtcs_iterator
 ** 
 ** @param /+const+/ xcb_randr_get_output_info_reply_t *R
 ** @returns xcb_randr_crtc_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_crtc_iterator_t
xcb_randr_get_output_info_crtcs_iterator (/+const+/ xcb_randr_get_output_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_mode_t * xcb_randr_get_output_info_modes
 ** 
 ** @param /+const+/ xcb_randr_get_output_info_reply_t *R
 ** @returns xcb_randr_mode_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_mode_t *
xcb_randr_get_output_info_modes (/+const+/ xcb_randr_get_output_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_output_info_modes_length
 ** 
 ** @param /+const+/ xcb_randr_get_output_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_output_info_modes_length (/+const+/ xcb_randr_get_output_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_mode_iterator_t xcb_randr_get_output_info_modes_iterator
 ** 
 ** @param /+const+/ xcb_randr_get_output_info_reply_t *R
 ** @returns xcb_randr_mode_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_mode_iterator_t
xcb_randr_get_output_info_modes_iterator (/+const+/ xcb_randr_get_output_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_output_t * xcb_randr_get_output_info_clones
 ** 
 ** @param /+const+/ xcb_randr_get_output_info_reply_t *R
 ** @returns xcb_randr_output_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_output_t *
xcb_randr_get_output_info_clones (/+const+/ xcb_randr_get_output_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_output_info_clones_length
 ** 
 ** @param /+const+/ xcb_randr_get_output_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_output_info_clones_length (/+const+/ xcb_randr_get_output_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_output_iterator_t xcb_randr_get_output_info_clones_iterator
 ** 
 ** @param /+const+/ xcb_randr_get_output_info_reply_t *R
 ** @returns xcb_randr_output_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_output_iterator_t
xcb_randr_get_output_info_clones_iterator (/+const+/ xcb_randr_get_output_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_randr_get_output_info_name
 ** 
 ** @param /+const+/ xcb_randr_get_output_info_reply_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
extern(C) ubyte *
xcb_randr_get_output_info_name (/+const+/ xcb_randr_get_output_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_output_info_name_length
 ** 
 ** @param /+const+/ xcb_randr_get_output_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_output_info_name_length (/+const+/ xcb_randr_get_output_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_output_info_name_end
 ** 
 ** @param /+const+/ xcb_randr_get_output_info_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_output_info_name_end (/+const+/ xcb_randr_get_output_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_output_info_reply_t * xcb_randr_get_output_info_reply
 ** 
 ** @param xcb_connection_t                    *c
 ** @param xcb_randr_get_output_info_cookie_t   cookie
 ** @param xcb_generic_error_t                **e
 ** @returns xcb_randr_get_output_info_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_output_info_reply_t *
xcb_randr_get_output_info_reply (xcb_connection_t                    *c  /**< */,
                                 xcb_randr_get_output_info_cookie_t   cookie  /**< */,
                                 xcb_generic_error_t                **e  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_list_output_properties_cookie_t xcb_randr_list_output_properties
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @returns xcb_randr_list_output_properties_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_list_output_properties_cookie_t
xcb_randr_list_output_properties (xcb_connection_t   *c  /**< */,
                                  xcb_randr_output_t  output  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_list_output_properties_cookie_t xcb_randr_list_output_properties_unchecked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @returns xcb_randr_list_output_properties_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_list_output_properties_cookie_t
xcb_randr_list_output_properties_unchecked (xcb_connection_t   *c  /**< */,
                                            xcb_randr_output_t  output  /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_randr_list_output_properties_atoms
 ** 
 ** @param /+const+/ xcb_randr_list_output_properties_reply_t *R
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
extern(C) xcb_atom_t *
xcb_randr_list_output_properties_atoms (/+const+/ xcb_randr_list_output_properties_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_list_output_properties_atoms_length
 ** 
 ** @param /+const+/ xcb_randr_list_output_properties_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_list_output_properties_atoms_length (/+const+/ xcb_randr_list_output_properties_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_atom_iterator_t xcb_randr_list_output_properties_atoms_iterator
 ** 
 ** @param /+const+/ xcb_randr_list_output_properties_reply_t *R
 ** @returns xcb_atom_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_atom_iterator_t
xcb_randr_list_output_properties_atoms_iterator (/+const+/ xcb_randr_list_output_properties_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_list_output_properties_reply_t * xcb_randr_list_output_properties_reply
 ** 
 ** @param xcb_connection_t                           *c
 ** @param xcb_randr_list_output_properties_cookie_t   cookie
 ** @param xcb_generic_error_t                       **e
 ** @returns xcb_randr_list_output_properties_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_list_output_properties_reply_t *
xcb_randr_list_output_properties_reply (xcb_connection_t                           *c  /**< */,
                                        xcb_randr_list_output_properties_cookie_t   cookie  /**< */,
                                        xcb_generic_error_t                       **e  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_query_output_property_cookie_t xcb_randr_query_output_property
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_atom_t          property
 ** @returns xcb_randr_query_output_property_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_query_output_property_cookie_t
xcb_randr_query_output_property (xcb_connection_t   *c  /**< */,
                                 xcb_randr_output_t  output  /**< */,
                                 xcb_atom_t          property  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_query_output_property_cookie_t xcb_randr_query_output_property_unchecked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_atom_t          property
 ** @returns xcb_randr_query_output_property_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_query_output_property_cookie_t
xcb_randr_query_output_property_unchecked (xcb_connection_t   *c  /**< */,
                                           xcb_randr_output_t  output  /**< */,
                                           xcb_atom_t          property  /**< */);


/*****************************************************************************
 **
 ** int * xcb_randr_query_output_property_valid_values
 ** 
 ** @param /+const+/ xcb_randr_query_output_property_reply_t *R
 ** @returns int *
 **
 *****************************************************************************/
 
extern(C) int *
xcb_randr_query_output_property_valid_values (/+const+/ xcb_randr_query_output_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_query_output_property_valid_values_length
 ** 
 ** @param /+const+/ xcb_randr_query_output_property_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_query_output_property_valid_values_length (/+const+/ xcb_randr_query_output_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_query_output_property_valid_values_end
 ** 
 ** @param /+const+/ xcb_randr_query_output_property_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_query_output_property_valid_values_end (/+const+/ xcb_randr_query_output_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_query_output_property_reply_t * xcb_randr_query_output_property_reply
 ** 
 ** @param xcb_connection_t                          *c
 ** @param xcb_randr_query_output_property_cookie_t   cookie
 ** @param xcb_generic_error_t                      **e
 ** @returns xcb_randr_query_output_property_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_query_output_property_reply_t *
xcb_randr_query_output_property_reply (xcb_connection_t                          *c  /**< */,
                                       xcb_randr_query_output_property_cookie_t   cookie  /**< */,
                                       xcb_generic_error_t                      **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_configure_output_property_checked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_atom_t          property
 ** @param bool                pending
 ** @param bool                range
 ** @param uint                values_len
 ** @param /+const+/ int      *values
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_configure_output_property_checked (xcb_connection_t   *c  /**< */,
                                             xcb_randr_output_t  output  /**< */,
                                             xcb_atom_t          property  /**< */,
                                             bool                pending  /**< */,
                                             bool                range  /**< */,
                                             uint                values_len  /**< */,
                                             /+const+/ int      *values  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_configure_output_property
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_atom_t          property
 ** @param bool                pending
 ** @param bool                range
 ** @param uint                values_len
 ** @param /+const+/ int      *values
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_configure_output_property (xcb_connection_t   *c  /**< */,
                                     xcb_randr_output_t  output  /**< */,
                                     xcb_atom_t          property  /**< */,
                                     bool                pending  /**< */,
                                     bool                range  /**< */,
                                     uint                values_len  /**< */,
                                     /+const+/ int      *values  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_change_output_property_checked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_atom_t          property
 ** @param xcb_atom_t          type
 ** @param ubyte               format
 ** @param ubyte               mode
 ** @param uint                num_units
 ** @param /+const+/ void     *data
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_change_output_property_checked (xcb_connection_t   *c  /**< */,
                                          xcb_randr_output_t  output  /**< */,
                                          xcb_atom_t          property  /**< */,
                                          xcb_atom_t          type  /**< */,
                                          ubyte               format  /**< */,
                                          ubyte               mode  /**< */,
                                          uint                num_units  /**< */,
                                          /+const+/ void     *data  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_change_output_property
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_atom_t          property
 ** @param xcb_atom_t          type
 ** @param ubyte               format
 ** @param ubyte               mode
 ** @param uint                num_units
 ** @param /+const+/ void     *data
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_change_output_property (xcb_connection_t   *c  /**< */,
                                  xcb_randr_output_t  output  /**< */,
                                  xcb_atom_t          property  /**< */,
                                  xcb_atom_t          type  /**< */,
                                  ubyte               format  /**< */,
                                  ubyte               mode  /**< */,
                                  uint                num_units  /**< */,
                                  /+const+/ void     *data  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_delete_output_property_checked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_atom_t          property
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_delete_output_property_checked (xcb_connection_t   *c  /**< */,
                                          xcb_randr_output_t  output  /**< */,
                                          xcb_atom_t          property  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_delete_output_property
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_atom_t          property
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_delete_output_property (xcb_connection_t   *c  /**< */,
                                  xcb_randr_output_t  output  /**< */,
                                  xcb_atom_t          property  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_output_property_cookie_t xcb_randr_get_output_property
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_atom_t          property
 ** @param xcb_atom_t          type
 ** @param uint                long_offset
 ** @param uint                long_length
 ** @param bool                _delete
 ** @param bool                pending
 ** @returns xcb_randr_get_output_property_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_output_property_cookie_t
xcb_randr_get_output_property (xcb_connection_t   *c  /**< */,
                               xcb_randr_output_t  output  /**< */,
                               xcb_atom_t          property  /**< */,
                               xcb_atom_t          type  /**< */,
                               uint                long_offset  /**< */,
                               uint                long_length  /**< */,
                               bool                _delete  /**< */,
                               bool                pending  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_output_property_cookie_t xcb_randr_get_output_property_unchecked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_atom_t          property
 ** @param xcb_atom_t          type
 ** @param uint                long_offset
 ** @param uint                long_length
 ** @param bool                _delete
 ** @param bool                pending
 ** @returns xcb_randr_get_output_property_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_output_property_cookie_t
xcb_randr_get_output_property_unchecked (xcb_connection_t   *c  /**< */,
                                         xcb_randr_output_t  output  /**< */,
                                         xcb_atom_t          property  /**< */,
                                         xcb_atom_t          type  /**< */,
                                         uint                long_offset  /**< */,
                                         uint                long_length  /**< */,
                                         bool                _delete  /**< */,
                                         bool                pending  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_randr_get_output_property_data
 ** 
 ** @param /+const+/ xcb_randr_get_output_property_reply_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
extern(C) ubyte *
xcb_randr_get_output_property_data (/+const+/ xcb_randr_get_output_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_output_property_data_length
 ** 
 ** @param /+const+/ xcb_randr_get_output_property_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_output_property_data_length (/+const+/ xcb_randr_get_output_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_output_property_data_end
 ** 
 ** @param /+const+/ xcb_randr_get_output_property_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_output_property_data_end (/+const+/ xcb_randr_get_output_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_output_property_reply_t * xcb_randr_get_output_property_reply
 ** 
 ** @param xcb_connection_t                        *c
 ** @param xcb_randr_get_output_property_cookie_t   cookie
 ** @param xcb_generic_error_t                    **e
 ** @returns xcb_randr_get_output_property_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_output_property_reply_t *
xcb_randr_get_output_property_reply (xcb_connection_t                        *c  /**< */,
                                     xcb_randr_get_output_property_cookie_t   cookie  /**< */,
                                     xcb_generic_error_t                    **e  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_create_mode_cookie_t xcb_randr_create_mode
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_window_t           window
 ** @param xcb_randr_mode_info_t  mode_info
 ** @param uint                   name_len
 ** @param /+const+/ char        *name
 ** @returns xcb_randr_create_mode_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_create_mode_cookie_t
xcb_randr_create_mode (xcb_connection_t      *c  /**< */,
                       xcb_window_t           window  /**< */,
                       xcb_randr_mode_info_t  mode_info  /**< */,
                       uint                   name_len  /**< */,
                       /+const+/ char        *name  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_create_mode_cookie_t xcb_randr_create_mode_unchecked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_window_t           window
 ** @param xcb_randr_mode_info_t  mode_info
 ** @param uint                   name_len
 ** @param /+const+/ char        *name
 ** @returns xcb_randr_create_mode_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_create_mode_cookie_t
xcb_randr_create_mode_unchecked (xcb_connection_t      *c  /**< */,
                                 xcb_window_t           window  /**< */,
                                 xcb_randr_mode_info_t  mode_info  /**< */,
                                 uint                   name_len  /**< */,
                                 /+const+/ char        *name  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_create_mode_reply_t * xcb_randr_create_mode_reply
 ** 
 ** @param xcb_connection_t                *c
 ** @param xcb_randr_create_mode_cookie_t   cookie
 ** @param xcb_generic_error_t            **e
 ** @returns xcb_randr_create_mode_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_create_mode_reply_t *
xcb_randr_create_mode_reply (xcb_connection_t                *c  /**< */,
                             xcb_randr_create_mode_cookie_t   cookie  /**< */,
                             xcb_generic_error_t            **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_destroy_mode_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_mode_t  mode
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_destroy_mode_checked (xcb_connection_t *c  /**< */,
                                xcb_randr_mode_t  mode  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_destroy_mode
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_mode_t  mode
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_destroy_mode (xcb_connection_t *c  /**< */,
                        xcb_randr_mode_t  mode  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_add_output_mode_checked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_randr_mode_t    mode
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_add_output_mode_checked (xcb_connection_t   *c  /**< */,
                                   xcb_randr_output_t  output  /**< */,
                                   xcb_randr_mode_t    mode  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_add_output_mode
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_randr_mode_t    mode
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_add_output_mode (xcb_connection_t   *c  /**< */,
                           xcb_randr_output_t  output  /**< */,
                           xcb_randr_mode_t    mode  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_delete_output_mode_checked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_randr_mode_t    mode
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_delete_output_mode_checked (xcb_connection_t   *c  /**< */,
                                      xcb_randr_output_t  output  /**< */,
                                      xcb_randr_mode_t    mode  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_delete_output_mode
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_randr_mode_t    mode
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_delete_output_mode (xcb_connection_t   *c  /**< */,
                              xcb_randr_output_t  output  /**< */,
                              xcb_randr_mode_t    mode  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_crtc_info_cookie_t xcb_randr_get_crtc_info
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_crtc_t  crtc
 ** @param xcb_timestamp_t   config_timestamp
 ** @returns xcb_randr_get_crtc_info_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_crtc_info_cookie_t
xcb_randr_get_crtc_info (xcb_connection_t *c  /**< */,
                         xcb_randr_crtc_t  crtc  /**< */,
                         xcb_timestamp_t   config_timestamp  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_crtc_info_cookie_t xcb_randr_get_crtc_info_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_crtc_t  crtc
 ** @param xcb_timestamp_t   config_timestamp
 ** @returns xcb_randr_get_crtc_info_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_crtc_info_cookie_t
xcb_randr_get_crtc_info_unchecked (xcb_connection_t *c  /**< */,
                                   xcb_randr_crtc_t  crtc  /**< */,
                                   xcb_timestamp_t   config_timestamp  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_output_t * xcb_randr_get_crtc_info_outputs
 ** 
 ** @param /+const+/ xcb_randr_get_crtc_info_reply_t *R
 ** @returns xcb_randr_output_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_output_t *
xcb_randr_get_crtc_info_outputs (/+const+/ xcb_randr_get_crtc_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_crtc_info_outputs_length
 ** 
 ** @param /+const+/ xcb_randr_get_crtc_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_crtc_info_outputs_length (/+const+/ xcb_randr_get_crtc_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_output_iterator_t xcb_randr_get_crtc_info_outputs_iterator
 ** 
 ** @param /+const+/ xcb_randr_get_crtc_info_reply_t *R
 ** @returns xcb_randr_output_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_output_iterator_t
xcb_randr_get_crtc_info_outputs_iterator (/+const+/ xcb_randr_get_crtc_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_output_t * xcb_randr_get_crtc_info_possible
 ** 
 ** @param /+const+/ xcb_randr_get_crtc_info_reply_t *R
 ** @returns xcb_randr_output_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_output_t *
xcb_randr_get_crtc_info_possible (/+const+/ xcb_randr_get_crtc_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_crtc_info_possible_length
 ** 
 ** @param /+const+/ xcb_randr_get_crtc_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_crtc_info_possible_length (/+const+/ xcb_randr_get_crtc_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_output_iterator_t xcb_randr_get_crtc_info_possible_iterator
 ** 
 ** @param /+const+/ xcb_randr_get_crtc_info_reply_t *R
 ** @returns xcb_randr_output_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_output_iterator_t
xcb_randr_get_crtc_info_possible_iterator (/+const+/ xcb_randr_get_crtc_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_crtc_info_reply_t * xcb_randr_get_crtc_info_reply
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_randr_get_crtc_info_cookie_t   cookie
 ** @param xcb_generic_error_t              **e
 ** @returns xcb_randr_get_crtc_info_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_crtc_info_reply_t *
xcb_randr_get_crtc_info_reply (xcb_connection_t                  *c  /**< */,
                               xcb_randr_get_crtc_info_cookie_t   cookie  /**< */,
                               xcb_generic_error_t              **e  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_set_crtc_config_cookie_t xcb_randr_set_crtc_config
 ** 
 ** @param xcb_connection_t             *c
 ** @param xcb_randr_crtc_t              crtc
 ** @param xcb_timestamp_t               timestamp
 ** @param xcb_timestamp_t               config_timestamp
 ** @param short                         x
 ** @param short                         y
 ** @param xcb_randr_mode_t              mode
 ** @param ushort                        rotation
 ** @param uint                          outputs_len
 ** @param /+const+/ xcb_randr_output_t *outputs
 ** @returns xcb_randr_set_crtc_config_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_set_crtc_config_cookie_t
xcb_randr_set_crtc_config (xcb_connection_t             *c  /**< */,
                           xcb_randr_crtc_t              crtc  /**< */,
                           xcb_timestamp_t               timestamp  /**< */,
                           xcb_timestamp_t               config_timestamp  /**< */,
                           short                         x  /**< */,
                           short                         y  /**< */,
                           xcb_randr_mode_t              mode  /**< */,
                           ushort                        rotation  /**< */,
                           uint                          outputs_len  /**< */,
                           /+const+/ xcb_randr_output_t *outputs  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_set_crtc_config_cookie_t xcb_randr_set_crtc_config_unchecked
 ** 
 ** @param xcb_connection_t             *c
 ** @param xcb_randr_crtc_t              crtc
 ** @param xcb_timestamp_t               timestamp
 ** @param xcb_timestamp_t               config_timestamp
 ** @param short                         x
 ** @param short                         y
 ** @param xcb_randr_mode_t              mode
 ** @param ushort                        rotation
 ** @param uint                          outputs_len
 ** @param /+const+/ xcb_randr_output_t *outputs
 ** @returns xcb_randr_set_crtc_config_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_set_crtc_config_cookie_t
xcb_randr_set_crtc_config_unchecked (xcb_connection_t             *c  /**< */,
                                     xcb_randr_crtc_t              crtc  /**< */,
                                     xcb_timestamp_t               timestamp  /**< */,
                                     xcb_timestamp_t               config_timestamp  /**< */,
                                     short                         x  /**< */,
                                     short                         y  /**< */,
                                     xcb_randr_mode_t              mode  /**< */,
                                     ushort                        rotation  /**< */,
                                     uint                          outputs_len  /**< */,
                                     /+const+/ xcb_randr_output_t *outputs  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_set_crtc_config_reply_t * xcb_randr_set_crtc_config_reply
 ** 
 ** @param xcb_connection_t                    *c
 ** @param xcb_randr_set_crtc_config_cookie_t   cookie
 ** @param xcb_generic_error_t                **e
 ** @returns xcb_randr_set_crtc_config_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_set_crtc_config_reply_t *
xcb_randr_set_crtc_config_reply (xcb_connection_t                    *c  /**< */,
                                 xcb_randr_set_crtc_config_cookie_t   cookie  /**< */,
                                 xcb_generic_error_t                **e  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_crtc_gamma_size_cookie_t xcb_randr_get_crtc_gamma_size
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_crtc_t  crtc
 ** @returns xcb_randr_get_crtc_gamma_size_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_crtc_gamma_size_cookie_t
xcb_randr_get_crtc_gamma_size (xcb_connection_t *c  /**< */,
                               xcb_randr_crtc_t  crtc  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_crtc_gamma_size_cookie_t xcb_randr_get_crtc_gamma_size_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_crtc_t  crtc
 ** @returns xcb_randr_get_crtc_gamma_size_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_crtc_gamma_size_cookie_t
xcb_randr_get_crtc_gamma_size_unchecked (xcb_connection_t *c  /**< */,
                                         xcb_randr_crtc_t  crtc  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_crtc_gamma_size_reply_t * xcb_randr_get_crtc_gamma_size_reply
 ** 
 ** @param xcb_connection_t                        *c
 ** @param xcb_randr_get_crtc_gamma_size_cookie_t   cookie
 ** @param xcb_generic_error_t                    **e
 ** @returns xcb_randr_get_crtc_gamma_size_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_crtc_gamma_size_reply_t *
xcb_randr_get_crtc_gamma_size_reply (xcb_connection_t                        *c  /**< */,
                                     xcb_randr_get_crtc_gamma_size_cookie_t   cookie  /**< */,
                                     xcb_generic_error_t                    **e  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_crtc_gamma_cookie_t xcb_randr_get_crtc_gamma
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_crtc_t  crtc
 ** @returns xcb_randr_get_crtc_gamma_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_crtc_gamma_cookie_t
xcb_randr_get_crtc_gamma (xcb_connection_t *c  /**< */,
                          xcb_randr_crtc_t  crtc  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_crtc_gamma_cookie_t xcb_randr_get_crtc_gamma_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_crtc_t  crtc
 ** @returns xcb_randr_get_crtc_gamma_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_crtc_gamma_cookie_t
xcb_randr_get_crtc_gamma_unchecked (xcb_connection_t *c  /**< */,
                                    xcb_randr_crtc_t  crtc  /**< */);


/*****************************************************************************
 **
 ** ushort * xcb_randr_get_crtc_gamma_red
 ** 
 ** @param /+const+/ xcb_randr_get_crtc_gamma_reply_t *R
 ** @returns ushort *
 **
 *****************************************************************************/
 
extern(C) ushort *
xcb_randr_get_crtc_gamma_red (/+const+/ xcb_randr_get_crtc_gamma_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_crtc_gamma_red_length
 ** 
 ** @param /+const+/ xcb_randr_get_crtc_gamma_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_crtc_gamma_red_length (/+const+/ xcb_randr_get_crtc_gamma_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_crtc_gamma_red_end
 ** 
 ** @param /+const+/ xcb_randr_get_crtc_gamma_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_crtc_gamma_red_end (/+const+/ xcb_randr_get_crtc_gamma_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** ushort * xcb_randr_get_crtc_gamma_green
 ** 
 ** @param /+const+/ xcb_randr_get_crtc_gamma_reply_t *R
 ** @returns ushort *
 **
 *****************************************************************************/
 
extern(C) ushort *
xcb_randr_get_crtc_gamma_green (/+const+/ xcb_randr_get_crtc_gamma_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_crtc_gamma_green_length
 ** 
 ** @param /+const+/ xcb_randr_get_crtc_gamma_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_crtc_gamma_green_length (/+const+/ xcb_randr_get_crtc_gamma_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_crtc_gamma_green_end
 ** 
 ** @param /+const+/ xcb_randr_get_crtc_gamma_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_crtc_gamma_green_end (/+const+/ xcb_randr_get_crtc_gamma_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** ushort * xcb_randr_get_crtc_gamma_blue
 ** 
 ** @param /+const+/ xcb_randr_get_crtc_gamma_reply_t *R
 ** @returns ushort *
 **
 *****************************************************************************/
 
extern(C) ushort *
xcb_randr_get_crtc_gamma_blue (/+const+/ xcb_randr_get_crtc_gamma_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_crtc_gamma_blue_length
 ** 
 ** @param /+const+/ xcb_randr_get_crtc_gamma_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_crtc_gamma_blue_length (/+const+/ xcb_randr_get_crtc_gamma_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_crtc_gamma_blue_end
 ** 
 ** @param /+const+/ xcb_randr_get_crtc_gamma_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_crtc_gamma_blue_end (/+const+/ xcb_randr_get_crtc_gamma_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_crtc_gamma_reply_t * xcb_randr_get_crtc_gamma_reply
 ** 
 ** @param xcb_connection_t                   *c
 ** @param xcb_randr_get_crtc_gamma_cookie_t   cookie
 ** @param xcb_generic_error_t               **e
 ** @returns xcb_randr_get_crtc_gamma_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_crtc_gamma_reply_t *
xcb_randr_get_crtc_gamma_reply (xcb_connection_t                   *c  /**< */,
                                xcb_randr_get_crtc_gamma_cookie_t   cookie  /**< */,
                                xcb_generic_error_t               **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_set_crtc_gamma_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_crtc_t  crtc
 ** @param ushort            size
 ** @param /+const+/ ushort *red
 ** @param /+const+/ ushort *green
 ** @param /+const+/ ushort *blue
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_set_crtc_gamma_checked (xcb_connection_t *c  /**< */,
                                  xcb_randr_crtc_t  crtc  /**< */,
                                  ushort            size  /**< */,
                                  /+const+/ ushort *red  /**< */,
                                  /+const+/ ushort *green  /**< */,
                                  /+const+/ ushort *blue  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_set_crtc_gamma
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_crtc_t  crtc
 ** @param ushort            size
 ** @param /+const+/ ushort *red
 ** @param /+const+/ ushort *green
 ** @param /+const+/ ushort *blue
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_set_crtc_gamma (xcb_connection_t *c  /**< */,
                          xcb_randr_crtc_t  crtc  /**< */,
                          ushort            size  /**< */,
                          /+const+/ ushort *red  /**< */,
                          /+const+/ ushort *green  /**< */,
                          /+const+/ ushort *blue  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_screen_resources_current_cookie_t xcb_randr_get_screen_resources_current
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_randr_get_screen_resources_current_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_screen_resources_current_cookie_t
xcb_randr_get_screen_resources_current (xcb_connection_t *c  /**< */,
                                        xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_screen_resources_current_cookie_t xcb_randr_get_screen_resources_current_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_randr_get_screen_resources_current_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_screen_resources_current_cookie_t
xcb_randr_get_screen_resources_current_unchecked (xcb_connection_t *c  /**< */,
                                                  xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_crtc_t * xcb_randr_get_screen_resources_current_crtcs
 ** 
 ** @param /+const+/ xcb_randr_get_screen_resources_current_reply_t *R
 ** @returns xcb_randr_crtc_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_crtc_t *
xcb_randr_get_screen_resources_current_crtcs (/+const+/ xcb_randr_get_screen_resources_current_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_screen_resources_current_crtcs_length
 ** 
 ** @param /+const+/ xcb_randr_get_screen_resources_current_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_screen_resources_current_crtcs_length (/+const+/ xcb_randr_get_screen_resources_current_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_crtc_iterator_t xcb_randr_get_screen_resources_current_crtcs_iterator
 ** 
 ** @param /+const+/ xcb_randr_get_screen_resources_current_reply_t *R
 ** @returns xcb_randr_crtc_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_crtc_iterator_t
xcb_randr_get_screen_resources_current_crtcs_iterator (/+const+/ xcb_randr_get_screen_resources_current_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_output_t * xcb_randr_get_screen_resources_current_outputs
 ** 
 ** @param /+const+/ xcb_randr_get_screen_resources_current_reply_t *R
 ** @returns xcb_randr_output_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_output_t *
xcb_randr_get_screen_resources_current_outputs (/+const+/ xcb_randr_get_screen_resources_current_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_screen_resources_current_outputs_length
 ** 
 ** @param /+const+/ xcb_randr_get_screen_resources_current_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_screen_resources_current_outputs_length (/+const+/ xcb_randr_get_screen_resources_current_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_output_iterator_t xcb_randr_get_screen_resources_current_outputs_iterator
 ** 
 ** @param /+const+/ xcb_randr_get_screen_resources_current_reply_t *R
 ** @returns xcb_randr_output_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_output_iterator_t
xcb_randr_get_screen_resources_current_outputs_iterator (/+const+/ xcb_randr_get_screen_resources_current_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_mode_info_t * xcb_randr_get_screen_resources_current_modes
 ** 
 ** @param /+const+/ xcb_randr_get_screen_resources_current_reply_t *R
 ** @returns xcb_randr_mode_info_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_mode_info_t *
xcb_randr_get_screen_resources_current_modes (/+const+/ xcb_randr_get_screen_resources_current_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_screen_resources_current_modes_length
 ** 
 ** @param /+const+/ xcb_randr_get_screen_resources_current_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_screen_resources_current_modes_length (/+const+/ xcb_randr_get_screen_resources_current_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_mode_info_iterator_t xcb_randr_get_screen_resources_current_modes_iterator
 ** 
 ** @param /+const+/ xcb_randr_get_screen_resources_current_reply_t *R
 ** @returns xcb_randr_mode_info_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_mode_info_iterator_t
xcb_randr_get_screen_resources_current_modes_iterator (/+const+/ xcb_randr_get_screen_resources_current_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_randr_get_screen_resources_current_names
 ** 
 ** @param /+const+/ xcb_randr_get_screen_resources_current_reply_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
extern(C) ubyte *
xcb_randr_get_screen_resources_current_names (/+const+/ xcb_randr_get_screen_resources_current_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_screen_resources_current_names_length
 ** 
 ** @param /+const+/ xcb_randr_get_screen_resources_current_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_screen_resources_current_names_length (/+const+/ xcb_randr_get_screen_resources_current_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_screen_resources_current_names_end
 ** 
 ** @param /+const+/ xcb_randr_get_screen_resources_current_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_screen_resources_current_names_end (/+const+/ xcb_randr_get_screen_resources_current_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_screen_resources_current_reply_t * xcb_randr_get_screen_resources_current_reply
 ** 
 ** @param xcb_connection_t                                 *c
 ** @param xcb_randr_get_screen_resources_current_cookie_t   cookie
 ** @param xcb_generic_error_t                             **e
 ** @returns xcb_randr_get_screen_resources_current_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_screen_resources_current_reply_t *
xcb_randr_get_screen_resources_current_reply (xcb_connection_t                                 *c  /**< */,
                                              xcb_randr_get_screen_resources_current_cookie_t   cookie  /**< */,
                                              xcb_generic_error_t                             **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_set_crtc_transform_checked
 ** 
 ** @param xcb_connection_t             *c
 ** @param xcb_randr_crtc_t              crtc
 ** @param xcb_render_transform_t        transform
 ** @param ushort                        filter_len
 ** @param /+const+/ char               *filter_name
 ** @param uint                          filter_params_len
 ** @param /+const+/ xcb_render_fixed_t *filter_params
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_set_crtc_transform_checked (xcb_connection_t             *c  /**< */,
                                      xcb_randr_crtc_t              crtc  /**< */,
                                      xcb_render_transform_t        transform  /**< */,
                                      ushort                        filter_len  /**< */,
                                      /+const+/ char               *filter_name  /**< */,
                                      uint                          filter_params_len  /**< */,
                                      /+const+/ xcb_render_fixed_t *filter_params  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_set_crtc_transform
 ** 
 ** @param xcb_connection_t             *c
 ** @param xcb_randr_crtc_t              crtc
 ** @param xcb_render_transform_t        transform
 ** @param ushort                        filter_len
 ** @param /+const+/ char               *filter_name
 ** @param uint                          filter_params_len
 ** @param /+const+/ xcb_render_fixed_t *filter_params
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_set_crtc_transform (xcb_connection_t             *c  /**< */,
                              xcb_randr_crtc_t              crtc  /**< */,
                              xcb_render_transform_t        transform  /**< */,
                              ushort                        filter_len  /**< */,
                              /+const+/ char               *filter_name  /**< */,
                              uint                          filter_params_len  /**< */,
                              /+const+/ xcb_render_fixed_t *filter_params  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_crtc_transform_cookie_t xcb_randr_get_crtc_transform
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_crtc_t  crtc
 ** @returns xcb_randr_get_crtc_transform_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_crtc_transform_cookie_t
xcb_randr_get_crtc_transform (xcb_connection_t *c  /**< */,
                              xcb_randr_crtc_t  crtc  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_crtc_transform_cookie_t xcb_randr_get_crtc_transform_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_crtc_t  crtc
 ** @returns xcb_randr_get_crtc_transform_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_crtc_transform_cookie_t
xcb_randr_get_crtc_transform_unchecked (xcb_connection_t *c  /**< */,
                                        xcb_randr_crtc_t  crtc  /**< */);


/*****************************************************************************
 **
 ** char * xcb_randr_get_crtc_transform_pending_filter_name
 ** 
 ** @param /+const+/ xcb_randr_get_crtc_transform_reply_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
extern(C) char *
xcb_randr_get_crtc_transform_pending_filter_name (/+const+/ xcb_randr_get_crtc_transform_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_crtc_transform_pending_filter_name_length
 ** 
 ** @param /+const+/ xcb_randr_get_crtc_transform_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_crtc_transform_pending_filter_name_length (/+const+/ xcb_randr_get_crtc_transform_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_crtc_transform_pending_filter_name_end
 ** 
 ** @param /+const+/ xcb_randr_get_crtc_transform_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_crtc_transform_pending_filter_name_end (/+const+/ xcb_randr_get_crtc_transform_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_render_fixed_t * xcb_randr_get_crtc_transform_pending_params
 ** 
 ** @param /+const+/ xcb_randr_get_crtc_transform_reply_t *R
 ** @returns xcb_render_fixed_t *
 **
 *****************************************************************************/
 
extern(C) xcb_render_fixed_t *
xcb_randr_get_crtc_transform_pending_params (/+const+/ xcb_randr_get_crtc_transform_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_crtc_transform_pending_params_length
 ** 
 ** @param /+const+/ xcb_randr_get_crtc_transform_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_crtc_transform_pending_params_length (/+const+/ xcb_randr_get_crtc_transform_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_render_fixed_iterator_t xcb_randr_get_crtc_transform_pending_params_iterator
 ** 
 ** @param /+const+/ xcb_randr_get_crtc_transform_reply_t *R
 ** @returns xcb_render_fixed_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_render_fixed_iterator_t
xcb_randr_get_crtc_transform_pending_params_iterator (/+const+/ xcb_randr_get_crtc_transform_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** char * xcb_randr_get_crtc_transform_current_filter_name
 ** 
 ** @param /+const+/ xcb_randr_get_crtc_transform_reply_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
extern(C) char *
xcb_randr_get_crtc_transform_current_filter_name (/+const+/ xcb_randr_get_crtc_transform_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_crtc_transform_current_filter_name_length
 ** 
 ** @param /+const+/ xcb_randr_get_crtc_transform_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_crtc_transform_current_filter_name_length (/+const+/ xcb_randr_get_crtc_transform_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_crtc_transform_current_filter_name_end
 ** 
 ** @param /+const+/ xcb_randr_get_crtc_transform_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_crtc_transform_current_filter_name_end (/+const+/ xcb_randr_get_crtc_transform_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_render_fixed_t * xcb_randr_get_crtc_transform_current_params
 ** 
 ** @param /+const+/ xcb_randr_get_crtc_transform_reply_t *R
 ** @returns xcb_render_fixed_t *
 **
 *****************************************************************************/
 
extern(C) xcb_render_fixed_t *
xcb_randr_get_crtc_transform_current_params (/+const+/ xcb_randr_get_crtc_transform_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_crtc_transform_current_params_length
 ** 
 ** @param /+const+/ xcb_randr_get_crtc_transform_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_crtc_transform_current_params_length (/+const+/ xcb_randr_get_crtc_transform_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_render_fixed_iterator_t xcb_randr_get_crtc_transform_current_params_iterator
 ** 
 ** @param /+const+/ xcb_randr_get_crtc_transform_reply_t *R
 ** @returns xcb_render_fixed_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_render_fixed_iterator_t
xcb_randr_get_crtc_transform_current_params_iterator (/+const+/ xcb_randr_get_crtc_transform_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_crtc_transform_reply_t * xcb_randr_get_crtc_transform_reply
 ** 
 ** @param xcb_connection_t                       *c
 ** @param xcb_randr_get_crtc_transform_cookie_t   cookie
 ** @param xcb_generic_error_t                   **e
 ** @returns xcb_randr_get_crtc_transform_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_crtc_transform_reply_t *
xcb_randr_get_crtc_transform_reply (xcb_connection_t                       *c  /**< */,
                                    xcb_randr_get_crtc_transform_cookie_t   cookie  /**< */,
                                    xcb_generic_error_t                   **e  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_panning_cookie_t xcb_randr_get_panning
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_crtc_t  crtc
 ** @returns xcb_randr_get_panning_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_panning_cookie_t
xcb_randr_get_panning (xcb_connection_t *c  /**< */,
                       xcb_randr_crtc_t  crtc  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_panning_cookie_t xcb_randr_get_panning_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_crtc_t  crtc
 ** @returns xcb_randr_get_panning_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_panning_cookie_t
xcb_randr_get_panning_unchecked (xcb_connection_t *c  /**< */,
                                 xcb_randr_crtc_t  crtc  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_panning_reply_t * xcb_randr_get_panning_reply
 ** 
 ** @param xcb_connection_t                *c
 ** @param xcb_randr_get_panning_cookie_t   cookie
 ** @param xcb_generic_error_t            **e
 ** @returns xcb_randr_get_panning_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_panning_reply_t *
xcb_randr_get_panning_reply (xcb_connection_t                *c  /**< */,
                             xcb_randr_get_panning_cookie_t   cookie  /**< */,
                             xcb_generic_error_t            **e  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_set_panning_cookie_t xcb_randr_set_panning
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_crtc_t  crtc
 ** @param xcb_timestamp_t   timestamp
 ** @param ushort            left
 ** @param ushort            top
 ** @param ushort            width
 ** @param ushort            height
 ** @param ushort            track_left
 ** @param ushort            track_top
 ** @param ushort            track_width
 ** @param ushort            track_height
 ** @param short             border_left
 ** @param short             border_top
 ** @param short             border_right
 ** @param short             border_bottom
 ** @returns xcb_randr_set_panning_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_set_panning_cookie_t
xcb_randr_set_panning (xcb_connection_t *c  /**< */,
                       xcb_randr_crtc_t  crtc  /**< */,
                       xcb_timestamp_t   timestamp  /**< */,
                       ushort            left  /**< */,
                       ushort            top  /**< */,
                       ushort            width  /**< */,
                       ushort            height  /**< */,
                       ushort            track_left  /**< */,
                       ushort            track_top  /**< */,
                       ushort            track_width  /**< */,
                       ushort            track_height  /**< */,
                       short             border_left  /**< */,
                       short             border_top  /**< */,
                       short             border_right  /**< */,
                       short             border_bottom  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_set_panning_cookie_t xcb_randr_set_panning_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_crtc_t  crtc
 ** @param xcb_timestamp_t   timestamp
 ** @param ushort            left
 ** @param ushort            top
 ** @param ushort            width
 ** @param ushort            height
 ** @param ushort            track_left
 ** @param ushort            track_top
 ** @param ushort            track_width
 ** @param ushort            track_height
 ** @param short             border_left
 ** @param short             border_top
 ** @param short             border_right
 ** @param short             border_bottom
 ** @returns xcb_randr_set_panning_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_set_panning_cookie_t
xcb_randr_set_panning_unchecked (xcb_connection_t *c  /**< */,
                                 xcb_randr_crtc_t  crtc  /**< */,
                                 xcb_timestamp_t   timestamp  /**< */,
                                 ushort            left  /**< */,
                                 ushort            top  /**< */,
                                 ushort            width  /**< */,
                                 ushort            height  /**< */,
                                 ushort            track_left  /**< */,
                                 ushort            track_top  /**< */,
                                 ushort            track_width  /**< */,
                                 ushort            track_height  /**< */,
                                 short             border_left  /**< */,
                                 short             border_top  /**< */,
                                 short             border_right  /**< */,
                                 short             border_bottom  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_set_panning_reply_t * xcb_randr_set_panning_reply
 ** 
 ** @param xcb_connection_t                *c
 ** @param xcb_randr_set_panning_cookie_t   cookie
 ** @param xcb_generic_error_t            **e
 ** @returns xcb_randr_set_panning_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_set_panning_reply_t *
xcb_randr_set_panning_reply (xcb_connection_t                *c  /**< */,
                             xcb_randr_set_panning_cookie_t   cookie  /**< */,
                             xcb_generic_error_t            **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_set_output_primary_checked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_window_t        window
 ** @param xcb_randr_output_t  output
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_set_output_primary_checked (xcb_connection_t   *c  /**< */,
                                      xcb_window_t        window  /**< */,
                                      xcb_randr_output_t  output  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_set_output_primary
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_window_t        window
 ** @param xcb_randr_output_t  output
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_set_output_primary (xcb_connection_t   *c  /**< */,
                              xcb_window_t        window  /**< */,
                              xcb_randr_output_t  output  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_output_primary_cookie_t xcb_randr_get_output_primary
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_randr_get_output_primary_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_output_primary_cookie_t
xcb_randr_get_output_primary (xcb_connection_t *c  /**< */,
                              xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_output_primary_cookie_t xcb_randr_get_output_primary_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_randr_get_output_primary_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_output_primary_cookie_t
xcb_randr_get_output_primary_unchecked (xcb_connection_t *c  /**< */,
                                        xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_output_primary_reply_t * xcb_randr_get_output_primary_reply
 ** 
 ** @param xcb_connection_t                       *c
 ** @param xcb_randr_get_output_primary_cookie_t   cookie
 ** @param xcb_generic_error_t                   **e
 ** @returns xcb_randr_get_output_primary_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_output_primary_reply_t *
xcb_randr_get_output_primary_reply (xcb_connection_t                       *c  /**< */,
                                    xcb_randr_get_output_primary_cookie_t   cookie  /**< */,
                                    xcb_generic_error_t                   **e  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_providers_cookie_t xcb_randr_get_providers
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_randr_get_providers_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_providers_cookie_t
xcb_randr_get_providers (xcb_connection_t *c  /**< */,
                         xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_providers_cookie_t xcb_randr_get_providers_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_randr_get_providers_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_providers_cookie_t
xcb_randr_get_providers_unchecked (xcb_connection_t *c  /**< */,
                                   xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_provider_t * xcb_randr_get_providers_providers
 ** 
 ** @param /+const+/ xcb_randr_get_providers_reply_t *R
 ** @returns xcb_randr_provider_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_provider_t *
xcb_randr_get_providers_providers (/+const+/ xcb_randr_get_providers_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_providers_providers_length
 ** 
 ** @param /+const+/ xcb_randr_get_providers_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_providers_providers_length (/+const+/ xcb_randr_get_providers_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_provider_iterator_t xcb_randr_get_providers_providers_iterator
 ** 
 ** @param /+const+/ xcb_randr_get_providers_reply_t *R
 ** @returns xcb_randr_provider_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_provider_iterator_t
xcb_randr_get_providers_providers_iterator (/+const+/ xcb_randr_get_providers_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_providers_reply_t * xcb_randr_get_providers_reply
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_randr_get_providers_cookie_t   cookie
 ** @param xcb_generic_error_t              **e
 ** @returns xcb_randr_get_providers_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_providers_reply_t *
xcb_randr_get_providers_reply (xcb_connection_t                  *c  /**< */,
                               xcb_randr_get_providers_cookie_t   cookie  /**< */,
                               xcb_generic_error_t              **e  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_provider_info_cookie_t xcb_randr_get_provider_info
 ** 
 ** @param xcb_connection_t     *c
 ** @param xcb_randr_provider_t  provider
 ** @param xcb_timestamp_t       config_timestamp
 ** @returns xcb_randr_get_provider_info_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_provider_info_cookie_t
xcb_randr_get_provider_info (xcb_connection_t     *c  /**< */,
                             xcb_randr_provider_t  provider  /**< */,
                             xcb_timestamp_t       config_timestamp  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_provider_info_cookie_t xcb_randr_get_provider_info_unchecked
 ** 
 ** @param xcb_connection_t     *c
 ** @param xcb_randr_provider_t  provider
 ** @param xcb_timestamp_t       config_timestamp
 ** @returns xcb_randr_get_provider_info_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_provider_info_cookie_t
xcb_randr_get_provider_info_unchecked (xcb_connection_t     *c  /**< */,
                                       xcb_randr_provider_t  provider  /**< */,
                                       xcb_timestamp_t       config_timestamp  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_crtc_t * xcb_randr_get_provider_info_crtcs
 ** 
 ** @param /+const+/ xcb_randr_get_provider_info_reply_t *R
 ** @returns xcb_randr_crtc_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_crtc_t *
xcb_randr_get_provider_info_crtcs (/+const+/ xcb_randr_get_provider_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_provider_info_crtcs_length
 ** 
 ** @param /+const+/ xcb_randr_get_provider_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_provider_info_crtcs_length (/+const+/ xcb_randr_get_provider_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_crtc_iterator_t xcb_randr_get_provider_info_crtcs_iterator
 ** 
 ** @param /+const+/ xcb_randr_get_provider_info_reply_t *R
 ** @returns xcb_randr_crtc_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_crtc_iterator_t
xcb_randr_get_provider_info_crtcs_iterator (/+const+/ xcb_randr_get_provider_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_output_t * xcb_randr_get_provider_info_outputs
 ** 
 ** @param /+const+/ xcb_randr_get_provider_info_reply_t *R
 ** @returns xcb_randr_output_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_output_t *
xcb_randr_get_provider_info_outputs (/+const+/ xcb_randr_get_provider_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_provider_info_outputs_length
 ** 
 ** @param /+const+/ xcb_randr_get_provider_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_provider_info_outputs_length (/+const+/ xcb_randr_get_provider_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_output_iterator_t xcb_randr_get_provider_info_outputs_iterator
 ** 
 ** @param /+const+/ xcb_randr_get_provider_info_reply_t *R
 ** @returns xcb_randr_output_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_output_iterator_t
xcb_randr_get_provider_info_outputs_iterator (/+const+/ xcb_randr_get_provider_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_provider_t * xcb_randr_get_provider_info_associated_providers
 ** 
 ** @param /+const+/ xcb_randr_get_provider_info_reply_t *R
 ** @returns xcb_randr_provider_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_provider_t *
xcb_randr_get_provider_info_associated_providers (/+const+/ xcb_randr_get_provider_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_provider_info_associated_providers_length
 ** 
 ** @param /+const+/ xcb_randr_get_provider_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_provider_info_associated_providers_length (/+const+/ xcb_randr_get_provider_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_provider_iterator_t xcb_randr_get_provider_info_associated_providers_iterator
 ** 
 ** @param /+const+/ xcb_randr_get_provider_info_reply_t *R
 ** @returns xcb_randr_provider_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_provider_iterator_t
xcb_randr_get_provider_info_associated_providers_iterator (/+const+/ xcb_randr_get_provider_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_randr_get_provider_info_associated_capability
 ** 
 ** @param /+const+/ xcb_randr_get_provider_info_reply_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
extern(C) uint *
xcb_randr_get_provider_info_associated_capability (/+const+/ xcb_randr_get_provider_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_provider_info_associated_capability_length
 ** 
 ** @param /+const+/ xcb_randr_get_provider_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_provider_info_associated_capability_length (/+const+/ xcb_randr_get_provider_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_provider_info_associated_capability_end
 ** 
 ** @param /+const+/ xcb_randr_get_provider_info_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_provider_info_associated_capability_end (/+const+/ xcb_randr_get_provider_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** char * xcb_randr_get_provider_info_name
 ** 
 ** @param /+const+/ xcb_randr_get_provider_info_reply_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
extern(C) char *
xcb_randr_get_provider_info_name (/+const+/ xcb_randr_get_provider_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_provider_info_name_length
 ** 
 ** @param /+const+/ xcb_randr_get_provider_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_provider_info_name_length (/+const+/ xcb_randr_get_provider_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_provider_info_name_end
 ** 
 ** @param /+const+/ xcb_randr_get_provider_info_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_provider_info_name_end (/+const+/ xcb_randr_get_provider_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_provider_info_reply_t * xcb_randr_get_provider_info_reply
 ** 
 ** @param xcb_connection_t                      *c
 ** @param xcb_randr_get_provider_info_cookie_t   cookie
 ** @param xcb_generic_error_t                  **e
 ** @returns xcb_randr_get_provider_info_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_provider_info_reply_t *
xcb_randr_get_provider_info_reply (xcb_connection_t                      *c  /**< */,
                                   xcb_randr_get_provider_info_cookie_t   cookie  /**< */,
                                   xcb_generic_error_t                  **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_set_provider_offload_sink_checked
 ** 
 ** @param xcb_connection_t     *c
 ** @param xcb_randr_provider_t  provider
 ** @param xcb_randr_provider_t  sink_provider
 ** @param xcb_timestamp_t       config_timestamp
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_set_provider_offload_sink_checked (xcb_connection_t     *c  /**< */,
                                             xcb_randr_provider_t  provider  /**< */,
                                             xcb_randr_provider_t  sink_provider  /**< */,
                                             xcb_timestamp_t       config_timestamp  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_set_provider_offload_sink
 ** 
 ** @param xcb_connection_t     *c
 ** @param xcb_randr_provider_t  provider
 ** @param xcb_randr_provider_t  sink_provider
 ** @param xcb_timestamp_t       config_timestamp
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_set_provider_offload_sink (xcb_connection_t     *c  /**< */,
                                     xcb_randr_provider_t  provider  /**< */,
                                     xcb_randr_provider_t  sink_provider  /**< */,
                                     xcb_timestamp_t       config_timestamp  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_set_provider_output_source_checked
 ** 
 ** @param xcb_connection_t     *c
 ** @param xcb_randr_provider_t  provider
 ** @param xcb_randr_provider_t  source_provider
 ** @param xcb_timestamp_t       config_timestamp
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_set_provider_output_source_checked (xcb_connection_t     *c  /**< */,
                                              xcb_randr_provider_t  provider  /**< */,
                                              xcb_randr_provider_t  source_provider  /**< */,
                                              xcb_timestamp_t       config_timestamp  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_set_provider_output_source
 ** 
 ** @param xcb_connection_t     *c
 ** @param xcb_randr_provider_t  provider
 ** @param xcb_randr_provider_t  source_provider
 ** @param xcb_timestamp_t       config_timestamp
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_set_provider_output_source (xcb_connection_t     *c  /**< */,
                                      xcb_randr_provider_t  provider  /**< */,
                                      xcb_randr_provider_t  source_provider  /**< */,
                                      xcb_timestamp_t       config_timestamp  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_list_provider_properties_cookie_t xcb_randr_list_provider_properties
 ** 
 ** @param xcb_connection_t     *c
 ** @param xcb_randr_provider_t  provider
 ** @returns xcb_randr_list_provider_properties_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_list_provider_properties_cookie_t
xcb_randr_list_provider_properties (xcb_connection_t     *c  /**< */,
                                    xcb_randr_provider_t  provider  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_list_provider_properties_cookie_t xcb_randr_list_provider_properties_unchecked
 ** 
 ** @param xcb_connection_t     *c
 ** @param xcb_randr_provider_t  provider
 ** @returns xcb_randr_list_provider_properties_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_list_provider_properties_cookie_t
xcb_randr_list_provider_properties_unchecked (xcb_connection_t     *c  /**< */,
                                              xcb_randr_provider_t  provider  /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_randr_list_provider_properties_atoms
 ** 
 ** @param /+const+/ xcb_randr_list_provider_properties_reply_t *R
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
extern(C) xcb_atom_t *
xcb_randr_list_provider_properties_atoms (/+const+/ xcb_randr_list_provider_properties_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_list_provider_properties_atoms_length
 ** 
 ** @param /+const+/ xcb_randr_list_provider_properties_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_list_provider_properties_atoms_length (/+const+/ xcb_randr_list_provider_properties_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_atom_iterator_t xcb_randr_list_provider_properties_atoms_iterator
 ** 
 ** @param /+const+/ xcb_randr_list_provider_properties_reply_t *R
 ** @returns xcb_atom_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_atom_iterator_t
xcb_randr_list_provider_properties_atoms_iterator (/+const+/ xcb_randr_list_provider_properties_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_list_provider_properties_reply_t * xcb_randr_list_provider_properties_reply
 ** 
 ** @param xcb_connection_t                             *c
 ** @param xcb_randr_list_provider_properties_cookie_t   cookie
 ** @param xcb_generic_error_t                         **e
 ** @returns xcb_randr_list_provider_properties_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_list_provider_properties_reply_t *
xcb_randr_list_provider_properties_reply (xcb_connection_t                             *c  /**< */,
                                          xcb_randr_list_provider_properties_cookie_t   cookie  /**< */,
                                          xcb_generic_error_t                         **e  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_query_provider_property_cookie_t xcb_randr_query_provider_property
 ** 
 ** @param xcb_connection_t     *c
 ** @param xcb_randr_provider_t  provider
 ** @param xcb_atom_t            property
 ** @returns xcb_randr_query_provider_property_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_query_provider_property_cookie_t
xcb_randr_query_provider_property (xcb_connection_t     *c  /**< */,
                                   xcb_randr_provider_t  provider  /**< */,
                                   xcb_atom_t            property  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_query_provider_property_cookie_t xcb_randr_query_provider_property_unchecked
 ** 
 ** @param xcb_connection_t     *c
 ** @param xcb_randr_provider_t  provider
 ** @param xcb_atom_t            property
 ** @returns xcb_randr_query_provider_property_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_query_provider_property_cookie_t
xcb_randr_query_provider_property_unchecked (xcb_connection_t     *c  /**< */,
                                             xcb_randr_provider_t  provider  /**< */,
                                             xcb_atom_t            property  /**< */);


/*****************************************************************************
 **
 ** int * xcb_randr_query_provider_property_valid_values
 ** 
 ** @param /+const+/ xcb_randr_query_provider_property_reply_t *R
 ** @returns int *
 **
 *****************************************************************************/
 
extern(C) int *
xcb_randr_query_provider_property_valid_values (/+const+/ xcb_randr_query_provider_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_query_provider_property_valid_values_length
 ** 
 ** @param /+const+/ xcb_randr_query_provider_property_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_query_provider_property_valid_values_length (/+const+/ xcb_randr_query_provider_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_query_provider_property_valid_values_end
 ** 
 ** @param /+const+/ xcb_randr_query_provider_property_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_query_provider_property_valid_values_end (/+const+/ xcb_randr_query_provider_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_query_provider_property_reply_t * xcb_randr_query_provider_property_reply
 ** 
 ** @param xcb_connection_t                            *c
 ** @param xcb_randr_query_provider_property_cookie_t   cookie
 ** @param xcb_generic_error_t                        **e
 ** @returns xcb_randr_query_provider_property_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_query_provider_property_reply_t *
xcb_randr_query_provider_property_reply (xcb_connection_t                            *c  /**< */,
                                         xcb_randr_query_provider_property_cookie_t   cookie  /**< */,
                                         xcb_generic_error_t                        **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_configure_provider_property_checked
 ** 
 ** @param xcb_connection_t     *c
 ** @param xcb_randr_provider_t  provider
 ** @param xcb_atom_t            property
 ** @param bool                  pending
 ** @param bool                  range
 ** @param uint                  values_len
 ** @param /+const+/ int        *values
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_configure_provider_property_checked (xcb_connection_t     *c  /**< */,
                                               xcb_randr_provider_t  provider  /**< */,
                                               xcb_atom_t            property  /**< */,
                                               bool                  pending  /**< */,
                                               bool                  range  /**< */,
                                               uint                  values_len  /**< */,
                                               /+const+/ int        *values  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_configure_provider_property
 ** 
 ** @param xcb_connection_t     *c
 ** @param xcb_randr_provider_t  provider
 ** @param xcb_atom_t            property
 ** @param bool                  pending
 ** @param bool                  range
 ** @param uint                  values_len
 ** @param /+const+/ int        *values
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_configure_provider_property (xcb_connection_t     *c  /**< */,
                                       xcb_randr_provider_t  provider  /**< */,
                                       xcb_atom_t            property  /**< */,
                                       bool                  pending  /**< */,
                                       bool                  range  /**< */,
                                       uint                  values_len  /**< */,
                                       /+const+/ int        *values  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_change_provider_property_checked
 ** 
 ** @param xcb_connection_t     *c
 ** @param xcb_randr_provider_t  provider
 ** @param xcb_atom_t            property
 ** @param xcb_atom_t            type
 ** @param ubyte                 format
 ** @param ubyte                 mode
 ** @param uint                  num_items
 ** @param /+const+/ void       *data
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_change_provider_property_checked (xcb_connection_t     *c  /**< */,
                                            xcb_randr_provider_t  provider  /**< */,
                                            xcb_atom_t            property  /**< */,
                                            xcb_atom_t            type  /**< */,
                                            ubyte                 format  /**< */,
                                            ubyte                 mode  /**< */,
                                            uint                  num_items  /**< */,
                                            /+const+/ void       *data  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_change_provider_property
 ** 
 ** @param xcb_connection_t     *c
 ** @param xcb_randr_provider_t  provider
 ** @param xcb_atom_t            property
 ** @param xcb_atom_t            type
 ** @param ubyte                 format
 ** @param ubyte                 mode
 ** @param uint                  num_items
 ** @param /+const+/ void       *data
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_change_provider_property (xcb_connection_t     *c  /**< */,
                                    xcb_randr_provider_t  provider  /**< */,
                                    xcb_atom_t            property  /**< */,
                                    xcb_atom_t            type  /**< */,
                                    ubyte                 format  /**< */,
                                    ubyte                 mode  /**< */,
                                    uint                  num_items  /**< */,
                                    /+const+/ void       *data  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_delete_provider_property_checked
 ** 
 ** @param xcb_connection_t     *c
 ** @param xcb_randr_provider_t  provider
 ** @param xcb_atom_t            property
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_delete_provider_property_checked (xcb_connection_t     *c  /**< */,
                                            xcb_randr_provider_t  provider  /**< */,
                                            xcb_atom_t            property  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_randr_delete_provider_property
 ** 
 ** @param xcb_connection_t     *c
 ** @param xcb_randr_provider_t  provider
 ** @param xcb_atom_t            property
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_delete_provider_property (xcb_connection_t     *c  /**< */,
                                    xcb_randr_provider_t  provider  /**< */,
                                    xcb_atom_t            property  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_provider_property_cookie_t xcb_randr_get_provider_property
 ** 
 ** @param xcb_connection_t     *c
 ** @param xcb_randr_provider_t  provider
 ** @param xcb_atom_t            property
 ** @param xcb_atom_t            type
 ** @param uint                  long_offset
 ** @param uint                  long_length
 ** @param bool                  _delete
 ** @param bool                  pending
 ** @returns xcb_randr_get_provider_property_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_provider_property_cookie_t
xcb_randr_get_provider_property (xcb_connection_t     *c  /**< */,
                                 xcb_randr_provider_t  provider  /**< */,
                                 xcb_atom_t            property  /**< */,
                                 xcb_atom_t            type  /**< */,
                                 uint                  long_offset  /**< */,
                                 uint                  long_length  /**< */,
                                 bool                  _delete  /**< */,
                                 bool                  pending  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_provider_property_cookie_t xcb_randr_get_provider_property_unchecked
 ** 
 ** @param xcb_connection_t     *c
 ** @param xcb_randr_provider_t  provider
 ** @param xcb_atom_t            property
 ** @param xcb_atom_t            type
 ** @param uint                  long_offset
 ** @param uint                  long_length
 ** @param bool                  _delete
 ** @param bool                  pending
 ** @returns xcb_randr_get_provider_property_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_provider_property_cookie_t
xcb_randr_get_provider_property_unchecked (xcb_connection_t     *c  /**< */,
                                           xcb_randr_provider_t  provider  /**< */,
                                           xcb_atom_t            property  /**< */,
                                           xcb_atom_t            type  /**< */,
                                           uint                  long_offset  /**< */,
                                           uint                  long_length  /**< */,
                                           bool                  _delete  /**< */,
                                           bool                  pending  /**< */);


/*****************************************************************************
 **
 ** void * xcb_randr_get_provider_property_data
 ** 
 ** @param /+const+/ xcb_randr_get_provider_property_reply_t *R
 ** @returns void *
 **
 *****************************************************************************/
 
extern(C) void *
xcb_randr_get_provider_property_data (/+const+/ xcb_randr_get_provider_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_provider_property_data_length
 ** 
 ** @param /+const+/ xcb_randr_get_provider_property_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_provider_property_data_length (/+const+/ xcb_randr_get_provider_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_provider_property_data_end
 ** 
 ** @param /+const+/ xcb_randr_get_provider_property_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_provider_property_data_end (/+const+/ xcb_randr_get_provider_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_get_provider_property_reply_t * xcb_randr_get_provider_property_reply
 ** 
 ** @param xcb_connection_t                          *c
 ** @param xcb_randr_get_provider_property_cookie_t   cookie
 ** @param xcb_generic_error_t                      **e
 ** @returns xcb_randr_get_provider_property_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_provider_property_reply_t *
xcb_randr_get_provider_property_reply (xcb_connection_t                          *c  /**< */,
                                       xcb_randr_get_provider_property_cookie_t   cookie  /**< */,
                                       xcb_generic_error_t                      **e  /**< */);


/*****************************************************************************
 **
 ** void xcb_randr_crtc_change_next
 ** 
 ** @param xcb_randr_crtc_change_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_randr_crtc_change_next (xcb_randr_crtc_change_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_crtc_change_end
 ** 
 ** @param xcb_randr_crtc_change_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_crtc_change_end (xcb_randr_crtc_change_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_randr_output_change_next
 ** 
 ** @param xcb_randr_output_change_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_randr_output_change_next (xcb_randr_output_change_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_output_change_end
 ** 
 ** @param xcb_randr_output_change_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_output_change_end (xcb_randr_output_change_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_randr_output_property_next
 ** 
 ** @param xcb_randr_output_property_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_randr_output_property_next (xcb_randr_output_property_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_output_property_end
 ** 
 ** @param xcb_randr_output_property_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_output_property_end (xcb_randr_output_property_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_randr_provider_change_next
 ** 
 ** @param xcb_randr_provider_change_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_randr_provider_change_next (xcb_randr_provider_change_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_provider_change_end
 ** 
 ** @param xcb_randr_provider_change_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_provider_change_end (xcb_randr_provider_change_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_randr_provider_property_next
 ** 
 ** @param xcb_randr_provider_property_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_randr_provider_property_next (xcb_randr_provider_property_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_provider_property_end
 ** 
 ** @param xcb_randr_provider_property_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_provider_property_end (xcb_randr_provider_property_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_randr_resource_change_next
 ** 
 ** @param xcb_randr_resource_change_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_randr_resource_change_next (xcb_randr_resource_change_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_resource_change_end
 ** 
 ** @param xcb_randr_resource_change_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_resource_change_end (xcb_randr_resource_change_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_randr_notify_data_next
 ** 
 ** @param xcb_randr_notify_data_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_randr_notify_data_next (xcb_randr_notify_data_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_notify_data_end
 ** 
 ** @param xcb_randr_notify_data_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_notify_data_end (xcb_randr_notify_data_iterator_t i  /**< */);



/**
 * @}
 */
