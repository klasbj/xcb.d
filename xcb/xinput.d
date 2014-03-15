/*
 * This file generated automatically from xinput.xml by c-client.xsl using XSLT.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_Input_API XCB Input API
 * @brief Input XCB Protocol Implementation.
 * @{
 **/


module xcb.xinput;

import xcb.xcb;
import xcb.xfixes;
import xcb.xproto;

const int XCB_INPUT_MAJOR_VERSION =2;
const int XCB_INPUT_MINOR_VERSION =3;
  
extern(C) extern xcb_extension_t xcb_input_id;

alias uint xcb_input_event_class_t;

/**
 * @brief xcb_input_event_class_iterator_t
 **/
struct xcb_input_event_class_iterator_t {
    xcb_input_event_class_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
} ;

alias ubyte xcb_input_key_code_t;

/**
 * @brief xcb_input_key_code_iterator_t
 **/
struct xcb_input_key_code_iterator_t {
    xcb_input_key_code_t *data; /**<  */
    int                   rem; /**<  */
    int                   index; /**<  */
} ;

alias ushort xcb_input_device_id_t;

/**
 * @brief xcb_input_device_id_iterator_t
 **/
struct xcb_input_device_id_iterator_t {
    xcb_input_device_id_t *data; /**<  */
    int                    rem; /**<  */
    int                    index; /**<  */
} ;

alias int xcb_input_fp_1616_t;

/**
 * @brief xcb_input_fp_1616_iterator_t
 **/
struct xcb_input_fp_1616_iterator_t {
    xcb_input_fp_1616_t *data; /**<  */
    int                  rem; /**<  */
    int                  index; /**<  */
} ;

/**
 * @brief xcb_input_fp_3232_t
 **/
struct xcb_input_fp_3232_t {
    int  integral; /**<  */
    uint frac; /**<  */
} ;

/**
 * @brief xcb_input_fp_3232_iterator_t
 **/
struct xcb_input_fp_3232_iterator_t {
    xcb_input_fp_3232_t *data; /**<  */
    int                  rem; /**<  */
    int                  index; /**<  */
} ;

/**
 * @brief xcb_input_get_extension_version_cookie_t
 **/
struct xcb_input_get_extension_version_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_get_extension_version. */
const uint XCB_INPUT_GET_EXTENSION_VERSION = 1;

/**
 * @brief xcb_input_get_extension_version_request_t
 **/
struct xcb_input_get_extension_version_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort name_len; /**<  */
    ubyte  pad0[2]; /**<  */
} ;

/**
 * @brief xcb_input_get_extension_version_reply_t
 **/
struct xcb_input_get_extension_version_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort server_major; /**<  */
    ushort server_minor; /**<  */
    bool   present; /**<  */
    ubyte  pad1[19]; /**<  */
} ;

enum :int{
    XCB_INPUT_DEVICE_USE_IS_X_POINTER = 0,
    XCB_INPUT_DEVICE_USE_IS_X_KEYBOARD = 1,
    XCB_INPUT_DEVICE_USE_IS_X_EXTENSION_DEVICE = 2,
    XCB_INPUT_DEVICE_USE_IS_X_EXTENSION_KEYBOARD = 3,
    XCB_INPUT_DEVICE_USE_IS_X_EXTENSION_POINTER = 4
};

enum :int{
    XCB_INPUT_INPUT_CLASS_KEY = 0,
    XCB_INPUT_INPUT_CLASS_BUTTON = 1,
    XCB_INPUT_INPUT_CLASS_VALUATOR = 2,
    XCB_INPUT_INPUT_CLASS_FEEDBACK = 3,
    XCB_INPUT_INPUT_CLASS_PROXIMITY = 4,
    XCB_INPUT_INPUT_CLASS_FOCUS = 5,
    XCB_INPUT_INPUT_CLASS_OTHER = 6
};

enum :int{
    XCB_INPUT_VALUATOR_MODE_RELATIVE = 0,
    XCB_INPUT_VALUATOR_MODE_ABSOLUTE = 1
};

/**
 * @brief xcb_input_device_info_t
 **/
struct xcb_input_device_info_t {
    xcb_atom_t device_type; /**<  */
    ubyte      device_id; /**<  */
    ubyte      num_class_info; /**<  */
    ubyte      device_use; /**<  */
    ubyte      pad0; /**<  */
} ;

/**
 * @brief xcb_input_device_info_iterator_t
 **/
struct xcb_input_device_info_iterator_t {
    xcb_input_device_info_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
} ;

/**
 * @brief xcb_input_key_info_t
 **/
struct xcb_input_key_info_t {
    ubyte                class_id; /**<  */
    ubyte                len; /**<  */
    xcb_input_key_code_t min_keycode; /**<  */
    xcb_input_key_code_t max_keycode; /**<  */
    ushort               num_keys; /**<  */
    ubyte                pad0[2]; /**<  */
} ;

/**
 * @brief xcb_input_key_info_iterator_t
 **/
struct xcb_input_key_info_iterator_t {
    xcb_input_key_info_t *data; /**<  */
    int                   rem; /**<  */
    int                   index; /**<  */
} ;

/**
 * @brief xcb_input_button_info_t
 **/
struct xcb_input_button_info_t {
    ubyte  class_id; /**<  */
    ubyte  len; /**<  */
    ushort num_buttons; /**<  */
} ;

/**
 * @brief xcb_input_button_info_iterator_t
 **/
struct xcb_input_button_info_iterator_t {
    xcb_input_button_info_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
} ;

/**
 * @brief xcb_input_axis_info_t
 **/
struct xcb_input_axis_info_t {
    uint resolution; /**<  */
    int  minimum; /**<  */
    int  maximum; /**<  */
} ;

/**
 * @brief xcb_input_axis_info_iterator_t
 **/
struct xcb_input_axis_info_iterator_t {
    xcb_input_axis_info_t *data; /**<  */
    int                    rem; /**<  */
    int                    index; /**<  */
} ;

/**
 * @brief xcb_input_valuator_info_t
 **/
struct xcb_input_valuator_info_t {
    ubyte class_id; /**<  */
    ubyte len; /**<  */
    ubyte axes_len; /**<  */
    ubyte mode; /**<  */
    uint  motion_size; /**<  */
} ;

/**
 * @brief xcb_input_valuator_info_iterator_t
 **/
struct xcb_input_valuator_info_iterator_t {
    xcb_input_valuator_info_t *data; /**<  */
    int                        rem; /**<  */
    int                        index; /**<  */
} ;

/**
 * @brief xcb_input_input_info_t
 **/
struct xcb_input_input_info_t {
    ubyte class_id; /**<  */
    ubyte len; /**<  */
} ;

/**
 * @brief xcb_input_input_info_iterator_t
 **/
struct xcb_input_input_info_iterator_t {
    xcb_input_input_info_t *data; /**<  */
    int                     rem; /**<  */
    int                     index; /**<  */
} ;

/**
 * @brief xcb_input_device_name_t
 **/
struct xcb_input_device_name_t {
    ubyte len; /**<  */
} ;

/**
 * @brief xcb_input_device_name_iterator_t
 **/
struct xcb_input_device_name_iterator_t {
    xcb_input_device_name_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
} ;

/**
 * @brief xcb_input_list_input_devices_cookie_t
 **/
struct xcb_input_list_input_devices_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_list_input_devices. */
const uint XCB_INPUT_LIST_INPUT_DEVICES = 2;

/**
 * @brief xcb_input_list_input_devices_request_t
 **/
struct xcb_input_list_input_devices_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
} ;

/**
 * @brief xcb_input_list_input_devices_reply_t
 **/
struct xcb_input_list_input_devices_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  devices_len; /**<  */
    ubyte  pad1[23]; /**<  */
} ;

/**
 * @brief xcb_input_input_class_info_t
 **/
struct xcb_input_input_class_info_t {
    ubyte class_id; /**<  */
    ubyte event_type_base; /**<  */
} ;

/**
 * @brief xcb_input_input_class_info_iterator_t
 **/
struct xcb_input_input_class_info_iterator_t {
    xcb_input_input_class_info_t *data; /**<  */
    int                           rem; /**<  */
    int                           index; /**<  */
} ;

/**
 * @brief xcb_input_open_device_cookie_t
 **/
struct xcb_input_open_device_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_open_device. */
const uint XCB_INPUT_OPEN_DEVICE = 3;

/**
 * @brief xcb_input_open_device_request_t
 **/
struct xcb_input_open_device_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  device_id; /**<  */
    ubyte  pad0[3]; /**<  */
} ;

/**
 * @brief xcb_input_open_device_reply_t
 **/
struct xcb_input_open_device_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  num_classes; /**<  */
    ubyte  pad1[23]; /**<  */
} ;

/** Opcode for xcb_input_close_device. */
const uint XCB_INPUT_CLOSE_DEVICE = 4;

/**
 * @brief xcb_input_close_device_request_t
 **/
struct xcb_input_close_device_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  device_id; /**<  */
    ubyte  pad0[3]; /**<  */
} ;

/**
 * @brief xcb_input_set_device_mode_cookie_t
 **/
struct xcb_input_set_device_mode_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_set_device_mode. */
const uint XCB_INPUT_SET_DEVICE_MODE = 5;

/**
 * @brief xcb_input_set_device_mode_request_t
 **/
struct xcb_input_set_device_mode_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  device_id; /**<  */
    ubyte  mode; /**<  */
    ubyte  pad0[2]; /**<  */
} ;

/**
 * @brief xcb_input_set_device_mode_reply_t
 **/
struct xcb_input_set_device_mode_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  status; /**<  */
    ubyte  pad1[23]; /**<  */
} ;

/** Opcode for xcb_input_select_extension_event. */
const uint XCB_INPUT_SELECT_EXTENSION_EVENT = 6;

/**
 * @brief xcb_input_select_extension_event_request_t
 **/
struct xcb_input_select_extension_event_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
    ushort       num_classes; /**<  */
    ubyte        pad0[2]; /**<  */
} ;

/**
 * @brief xcb_input_get_selected_extension_events_cookie_t
 **/
struct xcb_input_get_selected_extension_events_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_get_selected_extension_events. */
const uint XCB_INPUT_GET_SELECTED_EXTENSION_EVENTS = 7;

/**
 * @brief xcb_input_get_selected_extension_events_request_t
 **/
struct xcb_input_get_selected_extension_events_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
} ;

/**
 * @brief xcb_input_get_selected_extension_events_reply_t
 **/
struct xcb_input_get_selected_extension_events_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort num_this_classes; /**<  */
    ushort num_all_classes; /**<  */
    ubyte  pad1[20]; /**<  */
} ;

enum :int{
    XCB_INPUT_PROPAGATE_MODE_ADD_TO_LIST = 0,
    XCB_INPUT_PROPAGATE_MODE_DELETE_FROM_LIST = 1
};

/** Opcode for xcb_input_change_device_dont_propagate_list. */
const uint XCB_INPUT_CHANGE_DEVICE_DONT_PROPAGATE_LIST = 8;

/**
 * @brief xcb_input_change_device_dont_propagate_list_request_t
 **/
struct xcb_input_change_device_dont_propagate_list_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
    ushort       num_classes; /**<  */
    ubyte        mode; /**<  */
    ubyte        pad0; /**<  */
} ;

/**
 * @brief xcb_input_get_device_dont_propagate_list_cookie_t
 **/
struct xcb_input_get_device_dont_propagate_list_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_get_device_dont_propagate_list. */
const uint XCB_INPUT_GET_DEVICE_DONT_PROPAGATE_LIST = 9;

/**
 * @brief xcb_input_get_device_dont_propagate_list_request_t
 **/
struct xcb_input_get_device_dont_propagate_list_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
} ;

/**
 * @brief xcb_input_get_device_dont_propagate_list_reply_t
 **/
struct xcb_input_get_device_dont_propagate_list_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort num_classes; /**<  */
    ubyte  pad1[22]; /**<  */
} ;

/**
 * @brief xcb_input_device_time_coord_t
 **/
struct xcb_input_device_time_coord_t {
    xcb_timestamp_t time; /**<  */
} ;

/**
 * @brief xcb_input_device_time_coord_iterator_t
 **/
struct xcb_input_device_time_coord_iterator_t {
    xcb_input_device_time_coord_t *data; /**<  */
    int                            rem; /**<  */
    int                            index; /**<  */
} ;

/**
 * @brief xcb_input_get_device_motion_events_cookie_t
 **/
struct xcb_input_get_device_motion_events_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_get_device_motion_events. */
const uint XCB_INPUT_GET_DEVICE_MOTION_EVENTS = 10;

/**
 * @brief xcb_input_get_device_motion_events_request_t
 **/
struct xcb_input_get_device_motion_events_request_t {
    ubyte           major_opcode; /**<  */
    ubyte           minor_opcode; /**<  */
    ushort          length; /**<  */
    xcb_timestamp_t start; /**<  */
    xcb_timestamp_t stop; /**<  */
    ubyte           device_id; /**<  */
} ;

/**
 * @brief xcb_input_get_device_motion_events_reply_t
 **/
struct xcb_input_get_device_motion_events_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   num_events; /**<  */
    ubyte  num_axes; /**<  */
    ubyte  device_mode; /**<  */
    ubyte  pad1[18]; /**<  */
} ;

/**
 * @brief xcb_input_change_keyboard_device_cookie_t
 **/
struct xcb_input_change_keyboard_device_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_change_keyboard_device. */
const uint XCB_INPUT_CHANGE_KEYBOARD_DEVICE = 11;

/**
 * @brief xcb_input_change_keyboard_device_request_t
 **/
struct xcb_input_change_keyboard_device_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  device_id; /**<  */
    ubyte  pad0[3]; /**<  */
} ;

/**
 * @brief xcb_input_change_keyboard_device_reply_t
 **/
struct xcb_input_change_keyboard_device_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  status; /**<  */
    ubyte  pad1[23]; /**<  */
} ;

/**
 * @brief xcb_input_change_pointer_device_cookie_t
 **/
struct xcb_input_change_pointer_device_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_change_pointer_device. */
const uint XCB_INPUT_CHANGE_POINTER_DEVICE = 12;

/**
 * @brief xcb_input_change_pointer_device_request_t
 **/
struct xcb_input_change_pointer_device_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  x_axis; /**<  */
    ubyte  y_axis; /**<  */
    ubyte  device_id; /**<  */
    ubyte  pad0; /**<  */
} ;

/**
 * @brief xcb_input_change_pointer_device_reply_t
 **/
struct xcb_input_change_pointer_device_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  status; /**<  */
    ubyte  pad1[23]; /**<  */
} ;

/**
 * @brief xcb_input_grab_device_cookie_t
 **/
struct xcb_input_grab_device_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_grab_device. */
const uint XCB_INPUT_GRAB_DEVICE = 13;

/**
 * @brief xcb_input_grab_device_request_t
 **/
struct xcb_input_grab_device_request_t {
    ubyte           major_opcode; /**<  */
    ubyte           minor_opcode; /**<  */
    ushort          length; /**<  */
    xcb_window_t    grab_window; /**<  */
    xcb_timestamp_t time; /**<  */
    ushort          num_classes; /**<  */
    ubyte           this_device_mode; /**<  */
    ubyte           other_device_mode; /**<  */
    bool            owner_events; /**<  */
    ubyte           device_id; /**<  */
    ubyte           pad0[2]; /**<  */
} ;

/**
 * @brief xcb_input_grab_device_reply_t
 **/
struct xcb_input_grab_device_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  status; /**<  */
    ubyte  pad1[23]; /**<  */
} ;

/** Opcode for xcb_input_ungrab_device. */
const uint XCB_INPUT_UNGRAB_DEVICE = 14;

/**
 * @brief xcb_input_ungrab_device_request_t
 **/
struct xcb_input_ungrab_device_request_t {
    ubyte           major_opcode; /**<  */
    ubyte           minor_opcode; /**<  */
    ushort          length; /**<  */
    xcb_timestamp_t time; /**<  */
    ubyte           device_id; /**<  */
} ;

/** Opcode for xcb_input_grab_device_key. */
const uint XCB_INPUT_GRAB_DEVICE_KEY = 15;

/**
 * @brief xcb_input_grab_device_key_request_t
 **/
struct xcb_input_grab_device_key_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t grab_window; /**<  */
    ushort       num_classes; /**<  */
    ushort       modifiers; /**<  */
    ubyte        modifier_device; /**<  */
    ubyte        grabbed_device; /**<  */
    ubyte        key; /**<  */
    ubyte        this_device_mode; /**<  */
    ubyte        other_device_mode; /**<  */
    bool         owner_events; /**<  */
    ubyte        pad0[2]; /**<  */
} ;

/** Opcode for xcb_input_ungrab_device_key. */
const uint XCB_INPUT_UNGRAB_DEVICE_KEY = 16;

/**
 * @brief xcb_input_ungrab_device_key_request_t
 **/
struct xcb_input_ungrab_device_key_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t grabWindow; /**<  */
    ushort       modifiers; /**<  */
    ubyte        modifier_device; /**<  */
    ubyte        key; /**<  */
    ubyte        grabbed_device; /**<  */
} ;

/** Opcode for xcb_input_grab_device_button. */
const uint XCB_INPUT_GRAB_DEVICE_BUTTON = 17;

/**
 * @brief xcb_input_grab_device_button_request_t
 **/
struct xcb_input_grab_device_button_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t grab_window; /**<  */
    ubyte        grabbed_device; /**<  */
    ubyte        modifier_device; /**<  */
    ushort       num_classes; /**<  */
    ushort       modifiers; /**<  */
    ubyte        this_device_mode; /**<  */
    ubyte        other_device_mode; /**<  */
    ubyte        button; /**<  */
    ubyte        owner_events; /**<  */
    ubyte        pad0[2]; /**<  */
} ;

/** Opcode for xcb_input_ungrab_device_button. */
const uint XCB_INPUT_UNGRAB_DEVICE_BUTTON = 18;

/**
 * @brief xcb_input_ungrab_device_button_request_t
 **/
struct xcb_input_ungrab_device_button_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t grab_window; /**<  */
    ushort       modifiers; /**<  */
    ubyte        modifier_device; /**<  */
    ubyte        button; /**<  */
    ubyte        grabbed_device; /**<  */
} ;

enum :int{
    XCB_INPUT_DEVICE_INPUT_MODE_ASYNC_THIS_DEVICE = 0,
    XCB_INPUT_DEVICE_INPUT_MODE_SYNC_THIS_DEVICE = 1,
    XCB_INPUT_DEVICE_INPUT_MODE_REPLAY_THIS_DEVICE = 2,
    XCB_INPUT_DEVICE_INPUT_MODE_ASYNC_OTHER_DEVICES = 3,
    XCB_INPUT_DEVICE_INPUT_MODE_ASYNC_ALL = 4,
    XCB_INPUT_DEVICE_INPUT_MODE_SYNC_ALL = 5
};

/** Opcode for xcb_input_allow_device_events. */
const uint XCB_INPUT_ALLOW_DEVICE_EVENTS = 19;

/**
 * @brief xcb_input_allow_device_events_request_t
 **/
struct xcb_input_allow_device_events_request_t {
    ubyte           major_opcode; /**<  */
    ubyte           minor_opcode; /**<  */
    ushort          length; /**<  */
    xcb_timestamp_t time; /**<  */
    ubyte           mode; /**<  */
    ubyte           device_id; /**<  */
} ;

/**
 * @brief xcb_input_get_device_focus_cookie_t
 **/
struct xcb_input_get_device_focus_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_get_device_focus. */
const uint XCB_INPUT_GET_DEVICE_FOCUS = 20;

/**
 * @brief xcb_input_get_device_focus_request_t
 **/
struct xcb_input_get_device_focus_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  device_id; /**<  */
    ubyte  pad0[3]; /**<  */
} ;

/**
 * @brief xcb_input_get_device_focus_reply_t
 **/
struct xcb_input_get_device_focus_reply_t {
    ubyte           response_type; /**<  */
    ubyte           pad0; /**<  */
    ushort          sequence; /**<  */
    uint            length; /**<  */
    xcb_window_t    focus; /**<  */
    xcb_timestamp_t time; /**<  */
    ubyte           revert_to; /**<  */
    ubyte           pad1[15]; /**<  */
} ;

/** Opcode for xcb_input_set_device_focus. */
const uint XCB_INPUT_SET_DEVICE_FOCUS = 21;

/**
 * @brief xcb_input_set_device_focus_request_t
 **/
struct xcb_input_set_device_focus_request_t {
    ubyte           major_opcode; /**<  */
    ubyte           minor_opcode; /**<  */
    ushort          length; /**<  */
    xcb_window_t    focus; /**<  */
    xcb_timestamp_t time; /**<  */
    ubyte           revert_to; /**<  */
    ubyte           device_id; /**<  */
} ;

enum :int{
    XCB_INPUT_FEEDBACK_CLASS_KEYBOARD = 0,
    XCB_INPUT_FEEDBACK_CLASS_POINTER = 1,
    XCB_INPUT_FEEDBACK_CLASS_STRING = 2,
    XCB_INPUT_FEEDBACK_CLASS_INTEGER = 3,
    XCB_INPUT_FEEDBACK_CLASS_LED = 4,
    XCB_INPUT_FEEDBACK_CLASS_BELL = 5
};

/**
 * @brief xcb_input_kbd_feedback_state_t
 **/
struct xcb_input_kbd_feedback_state_t {
    ubyte  class_id; /**<  */
    ubyte  feedback_id; /**<  */
    ushort len; /**<  */
    ushort pitch; /**<  */
    ushort duration; /**<  */
    uint   led_mask; /**<  */
    uint   led_values; /**<  */
    bool   global_auto_repeat; /**<  */
    ubyte  click; /**<  */
    ubyte  percent; /**<  */
    ubyte  pad0; /**<  */
    ubyte  auto_repeats[32]; /**<  */
} ;

/**
 * @brief xcb_input_kbd_feedback_state_iterator_t
 **/
struct xcb_input_kbd_feedback_state_iterator_t {
    xcb_input_kbd_feedback_state_t *data; /**<  */
    int                             rem; /**<  */
    int                             index; /**<  */
} ;

/**
 * @brief xcb_input_ptr_feedback_state_t
 **/
struct xcb_input_ptr_feedback_state_t {
    ubyte  class_id; /**<  */
    ubyte  feedback_id; /**<  */
    ushort len; /**<  */
    ubyte  pad0[2]; /**<  */
    ushort accel_num; /**<  */
    ushort accel_denom; /**<  */
    ushort threshold; /**<  */
} ;

/**
 * @brief xcb_input_ptr_feedback_state_iterator_t
 **/
struct xcb_input_ptr_feedback_state_iterator_t {
    xcb_input_ptr_feedback_state_t *data; /**<  */
    int                             rem; /**<  */
    int                             index; /**<  */
} ;

/**
 * @brief xcb_input_integer_feedback_state_t
 **/
struct xcb_input_integer_feedback_state_t {
    ubyte  class_id; /**<  */
    ubyte  feedback_id; /**<  */
    ushort len; /**<  */
    uint   resolution; /**<  */
    int    min_value; /**<  */
    int    max_value; /**<  */
} ;

/**
 * @brief xcb_input_integer_feedback_state_iterator_t
 **/
struct xcb_input_integer_feedback_state_iterator_t {
    xcb_input_integer_feedback_state_t *data; /**<  */
    int                                 rem; /**<  */
    int                                 index; /**<  */
} ;

/**
 * @brief xcb_input_string_feedback_state_t
 **/
struct xcb_input_string_feedback_state_t {
    ubyte  class_id; /**<  */
    ubyte  feedback_id; /**<  */
    ushort len; /**<  */
    ushort max_symbols; /**<  */
    ushort num_keysyms; /**<  */
} ;

/**
 * @brief xcb_input_string_feedback_state_iterator_t
 **/
struct xcb_input_string_feedback_state_iterator_t {
    xcb_input_string_feedback_state_t *data; /**<  */
    int                                rem; /**<  */
    int                                index; /**<  */
} ;

/**
 * @brief xcb_input_bell_feedback_state_t
 **/
struct xcb_input_bell_feedback_state_t {
    ubyte  class_id; /**<  */
    ubyte  feedback_id; /**<  */
    ushort len; /**<  */
    ubyte  percent; /**<  */
    ubyte  pad0[3]; /**<  */
    ushort pitch; /**<  */
    ushort duration; /**<  */
} ;

/**
 * @brief xcb_input_bell_feedback_state_iterator_t
 **/
struct xcb_input_bell_feedback_state_iterator_t {
    xcb_input_bell_feedback_state_t *data; /**<  */
    int                              rem; /**<  */
    int                              index; /**<  */
} ;

/**
 * @brief xcb_input_led_feedback_state_t
 **/
struct xcb_input_led_feedback_state_t {
    ubyte  class_id; /**<  */
    ubyte  feedback_id; /**<  */
    ushort len; /**<  */
    uint   led_mask; /**<  */
    uint   led_values; /**<  */
} ;

/**
 * @brief xcb_input_led_feedback_state_iterator_t
 **/
struct xcb_input_led_feedback_state_iterator_t {
    xcb_input_led_feedback_state_t *data; /**<  */
    int                             rem; /**<  */
    int                             index; /**<  */
} ;

/**
 * @brief xcb_input_feedback_state_t
 **/
struct xcb_input_feedback_state_t {
    ubyte  class_id; /**<  */
    ubyte  feedback_id; /**<  */
    ushort len; /**<  */
} ;

/**
 * @brief xcb_input_feedback_state_iterator_t
 **/
struct xcb_input_feedback_state_iterator_t {
    xcb_input_feedback_state_t *data; /**<  */
    int                         rem; /**<  */
    int                         index; /**<  */
} ;

/**
 * @brief xcb_input_get_feedback_control_cookie_t
 **/
struct xcb_input_get_feedback_control_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_get_feedback_control. */
const uint XCB_INPUT_GET_FEEDBACK_CONTROL = 22;

/**
 * @brief xcb_input_get_feedback_control_request_t
 **/
struct xcb_input_get_feedback_control_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  device_id; /**<  */
    ubyte  pad0[3]; /**<  */
} ;

/**
 * @brief xcb_input_get_feedback_control_reply_t
 **/
struct xcb_input_get_feedback_control_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort num_feedbacks; /**<  */
    ubyte  pad1[22]; /**<  */
} ;

/**
 * @brief xcb_input_kbd_feedback_ctl_t
 **/
struct xcb_input_kbd_feedback_ctl_t {
    ubyte                class_id; /**<  */
    ubyte                feedback_id; /**<  */
    ushort               len; /**<  */
    xcb_input_key_code_t key; /**<  */
    ubyte                auto_repeat_mode; /**<  */
    byte                 key_click_percent; /**<  */
    byte                 bell_percent; /**<  */
    short                bell_pitch; /**<  */
    short                bell_duration; /**<  */
    uint                 led_mask; /**<  */
    uint                 led_values; /**<  */
} ;

/**
 * @brief xcb_input_kbd_feedback_ctl_iterator_t
 **/
struct xcb_input_kbd_feedback_ctl_iterator_t {
    xcb_input_kbd_feedback_ctl_t *data; /**<  */
    int                           rem; /**<  */
    int                           index; /**<  */
} ;

/**
 * @brief xcb_input_ptr_feedback_ctl_t
 **/
struct xcb_input_ptr_feedback_ctl_t {
    ubyte  class_id; /**<  */
    ubyte  feedback_id; /**<  */
    ushort len; /**<  */
    ubyte  pad0[2]; /**<  */
    short  num; /**<  */
    short  denom; /**<  */
    short  threshold; /**<  */
} ;

/**
 * @brief xcb_input_ptr_feedback_ctl_iterator_t
 **/
struct xcb_input_ptr_feedback_ctl_iterator_t {
    xcb_input_ptr_feedback_ctl_t *data; /**<  */
    int                           rem; /**<  */
    int                           index; /**<  */
} ;

/**
 * @brief xcb_input_integer_feedback_ctl_t
 **/
struct xcb_input_integer_feedback_ctl_t {
    ubyte  class_id; /**<  */
    ubyte  feedback_id; /**<  */
    ushort len; /**<  */
    int    int_to_display; /**<  */
} ;

/**
 * @brief xcb_input_integer_feedback_ctl_iterator_t
 **/
struct xcb_input_integer_feedback_ctl_iterator_t {
    xcb_input_integer_feedback_ctl_t *data; /**<  */
    int                               rem; /**<  */
    int                               index; /**<  */
} ;

/**
 * @brief xcb_input_string_feedback_ctl_t
 **/
struct xcb_input_string_feedback_ctl_t {
    ubyte  class_id; /**<  */
    ubyte  feedback_id; /**<  */
    ushort len; /**<  */
    ubyte  pad0[2]; /**<  */
    ushort num_keysyms; /**<  */
} ;

/**
 * @brief xcb_input_string_feedback_ctl_iterator_t
 **/
struct xcb_input_string_feedback_ctl_iterator_t {
    xcb_input_string_feedback_ctl_t *data; /**<  */
    int                              rem; /**<  */
    int                              index; /**<  */
} ;

/**
 * @brief xcb_input_bell_feedback_ctl_t
 **/
struct xcb_input_bell_feedback_ctl_t {
    ubyte  class_id; /**<  */
    ubyte  feedback_id; /**<  */
    ushort len; /**<  */
    byte   percent; /**<  */
    ubyte  pad0[3]; /**<  */
    short  pitch; /**<  */
    short  duration; /**<  */
} ;

/**
 * @brief xcb_input_bell_feedback_ctl_iterator_t
 **/
struct xcb_input_bell_feedback_ctl_iterator_t {
    xcb_input_bell_feedback_ctl_t *data; /**<  */
    int                            rem; /**<  */
    int                            index; /**<  */
} ;

/**
 * @brief xcb_input_led_feedback_ctl_t
 **/
struct xcb_input_led_feedback_ctl_t {
    ubyte  class_id; /**<  */
    ubyte  feedback_id; /**<  */
    ushort len; /**<  */
    uint   led_mask; /**<  */
    uint   led_values; /**<  */
} ;

/**
 * @brief xcb_input_led_feedback_ctl_iterator_t
 **/
struct xcb_input_led_feedback_ctl_iterator_t {
    xcb_input_led_feedback_ctl_t *data; /**<  */
    int                           rem; /**<  */
    int                           index; /**<  */
} ;

/**
 * @brief xcb_input_feedback_ctl_t
 **/
struct xcb_input_feedback_ctl_t {
    ubyte  class_id; /**<  */
    ubyte  feedback_id; /**<  */
    ushort len; /**<  */
} ;

/**
 * @brief xcb_input_feedback_ctl_iterator_t
 **/
struct xcb_input_feedback_ctl_iterator_t {
    xcb_input_feedback_ctl_t *data; /**<  */
    int                       rem; /**<  */
    int                       index; /**<  */
} ;

/** Opcode for xcb_input_change_feedback_control. */
const uint XCB_INPUT_CHANGE_FEEDBACK_CONTROL = 23;

/**
 * @brief xcb_input_change_feedback_control_request_t
 **/
struct xcb_input_change_feedback_control_request_t {
    ubyte                    major_opcode; /**<  */
    ubyte                    minor_opcode; /**<  */
    ushort                   length; /**<  */
    uint                     mask; /**<  */
    ubyte                    device_id; /**<  */
    ubyte                    feedback_id; /**<  */
    xcb_input_feedback_ctl_t feedback; /**<  */
} ;

/**
 * @brief xcb_input_get_device_key_mapping_cookie_t
 **/
struct xcb_input_get_device_key_mapping_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_get_device_key_mapping. */
const uint XCB_INPUT_GET_DEVICE_KEY_MAPPING = 24;

/**
 * @brief xcb_input_get_device_key_mapping_request_t
 **/
struct xcb_input_get_device_key_mapping_request_t {
    ubyte                major_opcode; /**<  */
    ubyte                minor_opcode; /**<  */
    ushort               length; /**<  */
    ubyte                device_id; /**<  */
    xcb_input_key_code_t first_keycode; /**<  */
    ubyte                count; /**<  */
} ;

/**
 * @brief xcb_input_get_device_key_mapping_reply_t
 **/
struct xcb_input_get_device_key_mapping_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  keysyms_per_keycode; /**<  */
    ubyte  pad1[23]; /**<  */
} ;

/** Opcode for xcb_input_change_device_key_mapping. */
const uint XCB_INPUT_CHANGE_DEVICE_KEY_MAPPING = 25;

/**
 * @brief xcb_input_change_device_key_mapping_request_t
 **/
struct xcb_input_change_device_key_mapping_request_t {
    ubyte                major_opcode; /**<  */
    ubyte                minor_opcode; /**<  */
    ushort               length; /**<  */
    ubyte                device_id; /**<  */
    xcb_input_key_code_t first_keycode; /**<  */
    ubyte                keysyms_per_keycode; /**<  */
    ubyte                keycode_count; /**<  */
} ;

/**
 * @brief xcb_input_get_device_modifier_mapping_cookie_t
 **/
struct xcb_input_get_device_modifier_mapping_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_get_device_modifier_mapping. */
const uint XCB_INPUT_GET_DEVICE_MODIFIER_MAPPING = 26;

/**
 * @brief xcb_input_get_device_modifier_mapping_request_t
 **/
struct xcb_input_get_device_modifier_mapping_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  device_id; /**<  */
    ubyte  pad0[3]; /**<  */
} ;

/**
 * @brief xcb_input_get_device_modifier_mapping_reply_t
 **/
struct xcb_input_get_device_modifier_mapping_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  keycodes_per_modifier; /**<  */
    ubyte  pad1[23]; /**<  */
} ;

/**
 * @brief xcb_input_set_device_modifier_mapping_cookie_t
 **/
struct xcb_input_set_device_modifier_mapping_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_set_device_modifier_mapping. */
const uint XCB_INPUT_SET_DEVICE_MODIFIER_MAPPING = 27;

/**
 * @brief xcb_input_set_device_modifier_mapping_request_t
 **/
struct xcb_input_set_device_modifier_mapping_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  device_id; /**<  */
    ubyte  keycodes_per_modifier; /**<  */
    ubyte  pad0; /**<  */
} ;

/**
 * @brief xcb_input_set_device_modifier_mapping_reply_t
 **/
struct xcb_input_set_device_modifier_mapping_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  status; /**<  */
    ubyte  pad1[23]; /**<  */
} ;

/**
 * @brief xcb_input_get_device_button_mapping_cookie_t
 **/
struct xcb_input_get_device_button_mapping_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_get_device_button_mapping. */
const uint XCB_INPUT_GET_DEVICE_BUTTON_MAPPING = 28;

/**
 * @brief xcb_input_get_device_button_mapping_request_t
 **/
struct xcb_input_get_device_button_mapping_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  device_id; /**<  */
    ubyte  pad0[3]; /**<  */
} ;

/**
 * @brief xcb_input_get_device_button_mapping_reply_t
 **/
struct xcb_input_get_device_button_mapping_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  map_size; /**<  */
    ubyte  pad1[23]; /**<  */
} ;

/**
 * @brief xcb_input_set_device_button_mapping_cookie_t
 **/
struct xcb_input_set_device_button_mapping_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_set_device_button_mapping. */
const uint XCB_INPUT_SET_DEVICE_BUTTON_MAPPING = 29;

/**
 * @brief xcb_input_set_device_button_mapping_request_t
 **/
struct xcb_input_set_device_button_mapping_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  device_id; /**<  */
    ubyte  map_size; /**<  */
    ubyte  pad0[2]; /**<  */
} ;

/**
 * @brief xcb_input_set_device_button_mapping_reply_t
 **/
struct xcb_input_set_device_button_mapping_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  status; /**<  */
    ubyte  pad1[23]; /**<  */
} ;

/**
 * @brief xcb_input_key_state_t
 **/
struct xcb_input_key_state_t {
    ubyte class_id; /**<  */
    ubyte len; /**<  */
    ubyte num_keys; /**<  */
    ubyte pad0; /**<  */
    ubyte keys[32]; /**<  */
} ;

/**
 * @brief xcb_input_key_state_iterator_t
 **/
struct xcb_input_key_state_iterator_t {
    xcb_input_key_state_t *data; /**<  */
    int                    rem; /**<  */
    int                    index; /**<  */
} ;

/**
 * @brief xcb_input_button_state_t
 **/
struct xcb_input_button_state_t {
    ubyte class_id; /**<  */
    ubyte len; /**<  */
    ubyte num_buttons; /**<  */
    ubyte pad0; /**<  */
    ubyte buttons[32]; /**<  */
} ;

/**
 * @brief xcb_input_button_state_iterator_t
 **/
struct xcb_input_button_state_iterator_t {
    xcb_input_button_state_t *data; /**<  */
    int                       rem; /**<  */
    int                       index; /**<  */
} ;

/**
 * @brief xcb_input_valuator_state_t
 **/
struct xcb_input_valuator_state_t {
    ubyte class_id; /**<  */
    ubyte len; /**<  */
    ubyte num_valuators; /**<  */
    ubyte mode; /**<  */
} ;

/**
 * @brief xcb_input_valuator_state_iterator_t
 **/
struct xcb_input_valuator_state_iterator_t {
    xcb_input_valuator_state_t *data; /**<  */
    int                         rem; /**<  */
    int                         index; /**<  */
} ;

/**
 * @brief xcb_input_input_state_t
 **/
struct xcb_input_input_state_t {
    ubyte class_id; /**<  */
    ubyte len; /**<  */
    ubyte num_items; /**<  */
    ubyte pad0; /**<  */
} ;

/**
 * @brief xcb_input_input_state_iterator_t
 **/
struct xcb_input_input_state_iterator_t {
    xcb_input_input_state_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
} ;

/**
 * @brief xcb_input_query_device_state_cookie_t
 **/
struct xcb_input_query_device_state_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_query_device_state. */
const uint XCB_INPUT_QUERY_DEVICE_STATE = 30;

/**
 * @brief xcb_input_query_device_state_request_t
 **/
struct xcb_input_query_device_state_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  device_id; /**<  */
    ubyte  pad0[3]; /**<  */
} ;

/**
 * @brief xcb_input_query_device_state_reply_t
 **/
struct xcb_input_query_device_state_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  num_classes; /**<  */
    ubyte  pad1[23]; /**<  */
} ;

/** Opcode for xcb_input_send_extension_event. */
const uint XCB_INPUT_SEND_EXTENSION_EVENT = 31;

/**
 * @brief xcb_input_send_extension_event_request_t
 **/
struct xcb_input_send_extension_event_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t destination; /**<  */
    ubyte        device_id; /**<  */
    bool         propagate; /**<  */
    ushort       num_classes; /**<  */
    ubyte        num_events; /**<  */
    ubyte        pad0[3]; /**<  */
} ;

/** Opcode for xcb_input_device_bell. */
const uint XCB_INPUT_DEVICE_BELL = 32;

/**
 * @brief xcb_input_device_bell_request_t
 **/
struct xcb_input_device_bell_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  device_id; /**<  */
    ubyte  feedback_id; /**<  */
    ubyte  feedback_class; /**<  */
    byte   percent; /**<  */
} ;

/**
 * @brief xcb_input_set_device_valuators_cookie_t
 **/
struct xcb_input_set_device_valuators_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_set_device_valuators. */
const uint XCB_INPUT_SET_DEVICE_VALUATORS = 33;

/**
 * @brief xcb_input_set_device_valuators_request_t
 **/
struct xcb_input_set_device_valuators_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  device_id; /**<  */
    ubyte  first_valuator; /**<  */
    ubyte  num_valuators; /**<  */
    ubyte  pad0; /**<  */
} ;

/**
 * @brief xcb_input_set_device_valuators_reply_t
 **/
struct xcb_input_set_device_valuators_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  status; /**<  */
    ubyte  pad1[23]; /**<  */
} ;

enum :int{
    XCB_INPUT_DEVICE_CONTROL_RESOLUTION = 1,
    XCB_INPUT_DEVICE_CONTROL_ABS_CALIB = 2,
    XCB_INPUT_DEVICE_CONTROL_CORE = 3,
    XCB_INPUT_DEVICE_CONTROL_ENABLE = 4,
    XCB_INPUT_DEVICE_CONTROL_ABS_AREA = 5
};

/**
 * @brief xcb_input_device_resolution_state_t
 **/
struct xcb_input_device_resolution_state_t {
    ushort control_id; /**<  */
    ushort len; /**<  */
    uint   num_valuators; /**<  */
} ;

/**
 * @brief xcb_input_device_resolution_state_iterator_t
 **/
struct xcb_input_device_resolution_state_iterator_t {
    xcb_input_device_resolution_state_t *data; /**<  */
    int                                  rem; /**<  */
    int                                  index; /**<  */
} ;

/**
 * @brief xcb_input_device_abs_calib_state_t
 **/
struct xcb_input_device_abs_calib_state_t {
    ushort control_id; /**<  */
    ushort len; /**<  */
    int    min_x; /**<  */
    int    max_x; /**<  */
    int    min_y; /**<  */
    int    max_y; /**<  */
    uint   flip_x; /**<  */
    uint   flip_y; /**<  */
    uint   rotation; /**<  */
    uint   button_threshold; /**<  */
} ;

/**
 * @brief xcb_input_device_abs_calib_state_iterator_t
 **/
struct xcb_input_device_abs_calib_state_iterator_t {
    xcb_input_device_abs_calib_state_t *data; /**<  */
    int                                 rem; /**<  */
    int                                 index; /**<  */
} ;

/**
 * @brief xcb_input_device_abs_area_state_t
 **/
struct xcb_input_device_abs_area_state_t {
    ushort control_id; /**<  */
    ushort len; /**<  */
    uint   offset_x; /**<  */
    uint   offset_y; /**<  */
    uint   width; /**<  */
    uint   height; /**<  */
    uint   screen; /**<  */
    uint   following; /**<  */
} ;

/**
 * @brief xcb_input_device_abs_area_state_iterator_t
 **/
struct xcb_input_device_abs_area_state_iterator_t {
    xcb_input_device_abs_area_state_t *data; /**<  */
    int                                rem; /**<  */
    int                                index; /**<  */
} ;

/**
 * @brief xcb_input_device_core_state_t
 **/
struct xcb_input_device_core_state_t {
    ushort control_id; /**<  */
    ushort len; /**<  */
    ubyte  status; /**<  */
    ubyte  iscore; /**<  */
    ubyte  pad0[2]; /**<  */
} ;

/**
 * @brief xcb_input_device_core_state_iterator_t
 **/
struct xcb_input_device_core_state_iterator_t {
    xcb_input_device_core_state_t *data; /**<  */
    int                            rem; /**<  */
    int                            index; /**<  */
} ;

/**
 * @brief xcb_input_device_enable_state_t
 **/
struct xcb_input_device_enable_state_t {
    ushort control_id; /**<  */
    ushort len; /**<  */
    ubyte  enable; /**<  */
    ubyte  pad0[3]; /**<  */
} ;

/**
 * @brief xcb_input_device_enable_state_iterator_t
 **/
struct xcb_input_device_enable_state_iterator_t {
    xcb_input_device_enable_state_t *data; /**<  */
    int                              rem; /**<  */
    int                              index; /**<  */
} ;

/**
 * @brief xcb_input_device_state_t
 **/
struct xcb_input_device_state_t {
    ushort control_id; /**<  */
    ushort len; /**<  */
} ;

/**
 * @brief xcb_input_device_state_iterator_t
 **/
struct xcb_input_device_state_iterator_t {
    xcb_input_device_state_t *data; /**<  */
    int                       rem; /**<  */
    int                       index; /**<  */
} ;

/**
 * @brief xcb_input_get_device_control_cookie_t
 **/
struct xcb_input_get_device_control_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_get_device_control. */
const uint XCB_INPUT_GET_DEVICE_CONTROL = 34;

/**
 * @brief xcb_input_get_device_control_request_t
 **/
struct xcb_input_get_device_control_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort control_id; /**<  */
    ubyte  device_id; /**<  */
    ubyte  pad0; /**<  */
} ;

/**
 * @brief xcb_input_get_device_control_reply_t
 **/
struct xcb_input_get_device_control_reply_t {
    ubyte                    response_type; /**<  */
    ubyte                    pad0; /**<  */
    ushort                   sequence; /**<  */
    uint                     length; /**<  */
    ubyte                    status; /**<  */
    ubyte                    pad1[23]; /**<  */
    xcb_input_device_state_t control; /**<  */
} ;

/**
 * @brief xcb_input_device_resolution_ctl_t
 **/
struct xcb_input_device_resolution_ctl_t {
    ushort control_id; /**<  */
    ushort len; /**<  */
    ubyte  first_valuator; /**<  */
    ubyte  num_valuators; /**<  */
} ;

/**
 * @brief xcb_input_device_resolution_ctl_iterator_t
 **/
struct xcb_input_device_resolution_ctl_iterator_t {
    xcb_input_device_resolution_ctl_t *data; /**<  */
    int                                rem; /**<  */
    int                                index; /**<  */
} ;

/**
 * @brief xcb_input_device_abs_calib_ctl_t
 **/
struct xcb_input_device_abs_calib_ctl_t {
    ushort control_id; /**<  */
    ushort len; /**<  */
    int    min_x; /**<  */
    int    max_x; /**<  */
    int    min_y; /**<  */
    int    max_y; /**<  */
    uint   flip_x; /**<  */
    uint   flip_y; /**<  */
    uint   rotation; /**<  */
    uint   button_threshold; /**<  */
} ;

/**
 * @brief xcb_input_device_abs_calib_ctl_iterator_t
 **/
struct xcb_input_device_abs_calib_ctl_iterator_t {
    xcb_input_device_abs_calib_ctl_t *data; /**<  */
    int                               rem; /**<  */
    int                               index; /**<  */
} ;

/**
 * @brief xcb_input_device_abs_area_ctrl_t
 **/
struct xcb_input_device_abs_area_ctrl_t {
    ushort control_id; /**<  */
    ushort len; /**<  */
    uint   offset_x; /**<  */
    uint   offset_y; /**<  */
    int    width; /**<  */
    int    height; /**<  */
    int    screen; /**<  */
    uint   following; /**<  */
} ;

/**
 * @brief xcb_input_device_abs_area_ctrl_iterator_t
 **/
struct xcb_input_device_abs_area_ctrl_iterator_t {
    xcb_input_device_abs_area_ctrl_t *data; /**<  */
    int                               rem; /**<  */
    int                               index; /**<  */
} ;

/**
 * @brief xcb_input_device_core_ctrl_t
 **/
struct xcb_input_device_core_ctrl_t {
    ushort control_id; /**<  */
    ushort len; /**<  */
    ubyte  status; /**<  */
    ubyte  pad0[3]; /**<  */
} ;

/**
 * @brief xcb_input_device_core_ctrl_iterator_t
 **/
struct xcb_input_device_core_ctrl_iterator_t {
    xcb_input_device_core_ctrl_t *data; /**<  */
    int                           rem; /**<  */
    int                           index; /**<  */
} ;

/**
 * @brief xcb_input_device_enable_ctrl_t
 **/
struct xcb_input_device_enable_ctrl_t {
    ushort control_id; /**<  */
    ushort len; /**<  */
    ubyte  enable; /**<  */
    ubyte  pad0[3]; /**<  */
} ;

/**
 * @brief xcb_input_device_enable_ctrl_iterator_t
 **/
struct xcb_input_device_enable_ctrl_iterator_t {
    xcb_input_device_enable_ctrl_t *data; /**<  */
    int                             rem; /**<  */
    int                             index; /**<  */
} ;

/**
 * @brief xcb_input_device_ctl_t
 **/
struct xcb_input_device_ctl_t {
    ushort control_id; /**<  */
    ushort len; /**<  */
} ;

/**
 * @brief xcb_input_device_ctl_iterator_t
 **/
struct xcb_input_device_ctl_iterator_t {
    xcb_input_device_ctl_t *data; /**<  */
    int                     rem; /**<  */
    int                     index; /**<  */
} ;

/**
 * @brief xcb_input_change_device_control_cookie_t
 **/
struct xcb_input_change_device_control_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_change_device_control. */
const uint XCB_INPUT_CHANGE_DEVICE_CONTROL = 35;

/**
 * @brief xcb_input_change_device_control_request_t
 **/
struct xcb_input_change_device_control_request_t {
    ubyte                  major_opcode; /**<  */
    ubyte                  minor_opcode; /**<  */
    ushort                 length; /**<  */
    ushort                 control_id; /**<  */
    ubyte                  device_id; /**<  */
    ubyte                  pad0; /**<  */
    xcb_input_device_ctl_t control; /**<  */
} ;

/**
 * @brief xcb_input_change_device_control_reply_t
 **/
struct xcb_input_change_device_control_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  status; /**<  */
    ubyte  pad1[23]; /**<  */
} ;

/**
 * @brief xcb_input_list_device_properties_cookie_t
 **/
struct xcb_input_list_device_properties_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_list_device_properties. */
const uint XCB_INPUT_LIST_DEVICE_PROPERTIES = 36;

/**
 * @brief xcb_input_list_device_properties_request_t
 **/
struct xcb_input_list_device_properties_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  device_id; /**<  */
    ubyte  pad0[3]; /**<  */
} ;

/**
 * @brief xcb_input_list_device_properties_reply_t
 **/
struct xcb_input_list_device_properties_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort num_atoms; /**<  */
    ubyte  pad1[22]; /**<  */
} ;

enum :int{
    XCB_INPUT_PROPERTY_FORMAT_8_BITS =  8,
    XCB_INPUT_PROPERTY_FORMAT_16_BITS = 16,
    XCB_INPUT_PROPERTY_FORMAT_32_BITS = 32
};

/** Opcode for xcb_input_change_device_property. */
const uint XCB_INPUT_CHANGE_DEVICE_PROPERTY = 37;

/**
 * @brief xcb_input_change_device_property_request_t
 **/
struct xcb_input_change_device_property_request_t {
    ubyte      major_opcode; /**<  */
    ubyte      minor_opcode; /**<  */
    ushort     length; /**<  */
    xcb_atom_t property; /**<  */
    xcb_atom_t type; /**<  */
    ubyte      device_id; /**<  */
    ubyte      format; /**<  */
    ubyte      mode; /**<  */
    ubyte      pad0; /**<  */
    uint       num_items; /**<  */
} ;

/** Opcode for xcb_input_delete_device_property. */
const uint XCB_INPUT_DELETE_DEVICE_PROPERTY = 38;

/**
 * @brief xcb_input_delete_device_property_request_t
 **/
struct xcb_input_delete_device_property_request_t {
    ubyte      major_opcode; /**<  */
    ubyte      minor_opcode; /**<  */
    ushort     length; /**<  */
    xcb_atom_t property; /**<  */
    ubyte      device_id; /**<  */
    ubyte      pad0[3]; /**<  */
} ;

/**
 * @brief xcb_input_get_device_property_cookie_t
 **/
struct xcb_input_get_device_property_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_get_device_property. */
const uint XCB_INPUT_GET_DEVICE_PROPERTY = 39;

/**
 * @brief xcb_input_get_device_property_request_t
 **/
struct xcb_input_get_device_property_request_t {
    ubyte      major_opcode; /**<  */
    ubyte      minor_opcode; /**<  */
    ushort     length; /**<  */
    xcb_atom_t property; /**<  */
    xcb_atom_t type; /**<  */
    uint       offset; /**<  */
    uint       len; /**<  */
    ubyte      device_id; /**<  */
    bool       _delete; /**<  */
    ubyte      pad0[2]; /**<  */
} ;

/**
 * @brief xcb_input_get_device_property_reply_t
 **/
struct xcb_input_get_device_property_reply_t {
    ubyte      response_type; /**<  */
    ubyte      pad0; /**<  */
    ushort     sequence; /**<  */
    uint       length; /**<  */
    xcb_atom_t type; /**<  */
    uint       bytes_after; /**<  */
    uint       num_items; /**<  */
    ubyte      format; /**<  */
    ubyte      device_id; /**<  */
    ubyte      pad1[10]; /**<  */
} ;

enum :int{
    XCB_INPUT_DEVICE_ALL = 0,
    XCB_INPUT_DEVICE_ALL_MASTER = 1
};

/**
 * @brief xcb_input_group_info_t
 **/
struct xcb_input_group_info_t {
    ubyte base; /**<  */
    ubyte latched; /**<  */
    ubyte locked; /**<  */
    ubyte effective; /**<  */
} ;

/**
 * @brief xcb_input_group_info_iterator_t
 **/
struct xcb_input_group_info_iterator_t {
    xcb_input_group_info_t *data; /**<  */
    int                     rem; /**<  */
    int                     index; /**<  */
} ;

/**
 * @brief xcb_input_modifier_info_t
 **/
struct xcb_input_modifier_info_t {
    uint base; /**<  */
    uint latched; /**<  */
    uint locked; /**<  */
    uint effective; /**<  */
} ;

/**
 * @brief xcb_input_modifier_info_iterator_t
 **/
struct xcb_input_modifier_info_iterator_t {
    xcb_input_modifier_info_t *data; /**<  */
    int                        rem; /**<  */
    int                        index; /**<  */
} ;

/**
 * @brief xcb_input_xi_query_pointer_cookie_t
 **/
struct xcb_input_xi_query_pointer_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_xi_query_pointer. */
const uint XCB_INPUT_XI_QUERY_POINTER = 40;

/**
 * @brief xcb_input_xi_query_pointer_request_t
 **/
struct xcb_input_xi_query_pointer_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_window_t          window; /**<  */
    xcb_input_device_id_t deviceid; /**<  */
    ubyte                 pad0[2]; /**<  */
} ;

/**
 * @brief xcb_input_xi_query_pointer_reply_t
 **/
struct xcb_input_xi_query_pointer_reply_t {
    ubyte                     response_type; /**<  */
    ubyte                     pad0; /**<  */
    ushort                    sequence; /**<  */
    uint                      length; /**<  */
    xcb_window_t              root; /**<  */
    xcb_window_t              child; /**<  */
    xcb_input_fp_1616_t       root_x; /**<  */
    xcb_input_fp_1616_t       root_y; /**<  */
    xcb_input_fp_1616_t       win_x; /**<  */
    xcb_input_fp_1616_t       win_y; /**<  */
    ubyte                     same_screen; /**<  */
    ubyte                     pad1; /**<  */
    ushort                    buttons_len; /**<  */
    xcb_input_modifier_info_t mods; /**<  */
    xcb_input_group_info_t    group; /**<  */
} ;

/** Opcode for xcb_input_xi_warp_pointer. */
const uint XCB_INPUT_XI_WARP_POINTER = 41;

/**
 * @brief xcb_input_xi_warp_pointer_request_t
 **/
struct xcb_input_xi_warp_pointer_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_window_t          src_win; /**<  */
    xcb_window_t          dst_win; /**<  */
    xcb_input_fp_1616_t   src_x; /**<  */
    xcb_input_fp_1616_t   src_y; /**<  */
    ushort                src_width; /**<  */
    ushort                src_height; /**<  */
    xcb_input_fp_1616_t   dst_x; /**<  */
    xcb_input_fp_1616_t   dst_y; /**<  */
    xcb_input_device_id_t deviceid; /**<  */
    ubyte                 pad0[2]; /**<  */
} ;

/** Opcode for xcb_input_xi_change_cursor. */
const uint XCB_INPUT_XI_CHANGE_CURSOR = 42;

/**
 * @brief xcb_input_xi_change_cursor_request_t
 **/
struct xcb_input_xi_change_cursor_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_window_t          window; /**<  */
    xcb_cursor_t          cursor; /**<  */
    xcb_input_device_id_t deviceid; /**<  */
    ubyte                 pad0[2]; /**<  */
} ;

enum :int{
    XCB_INPUT_HIERARCHY_CHANGE_TYPE_ADD_MASTER = 1,
    XCB_INPUT_HIERARCHY_CHANGE_TYPE_REMOVE_MASTER = 2,
    XCB_INPUT_HIERARCHY_CHANGE_TYPE_ATTACH_SLAVE = 3,
    XCB_INPUT_HIERARCHY_CHANGE_TYPE_DETACH_SLAVE = 4
};

enum :int{
    XCB_INPUT_CHANGE_MODE_ATTACH = 1,
    XCB_INPUT_CHANGE_MODE_FLOAT = 2
};

/**
 * @brief xcb_input_add_master_t
 **/
struct xcb_input_add_master_t {
    ushort type; /**<  */
    ushort len; /**<  */
    ushort name_len; /**<  */
    ubyte  send_core; /**<  */
    ubyte  enable; /**<  */
} ;

/**
 * @brief xcb_input_add_master_iterator_t
 **/
struct xcb_input_add_master_iterator_t {
    xcb_input_add_master_t *data; /**<  */
    int                     rem; /**<  */
    int                     index; /**<  */
} ;

/**
 * @brief xcb_input_remove_master_t
 **/
struct xcb_input_remove_master_t {
    ushort                type; /**<  */
    ushort                len; /**<  */
    xcb_input_device_id_t deviceid; /**<  */
    ubyte                 return_mode; /**<  */
    ubyte                 pad0; /**<  */
    xcb_input_device_id_t return_pointer; /**<  */
    xcb_input_device_id_t return_keyboard; /**<  */
} ;

/**
 * @brief xcb_input_remove_master_iterator_t
 **/
struct xcb_input_remove_master_iterator_t {
    xcb_input_remove_master_t *data; /**<  */
    int                        rem; /**<  */
    int                        index; /**<  */
} ;

/**
 * @brief xcb_input_attach_slave_t
 **/
struct xcb_input_attach_slave_t {
    ushort                type; /**<  */
    ushort                len; /**<  */
    xcb_input_device_id_t deviceid; /**<  */
    xcb_input_device_id_t master; /**<  */
} ;

/**
 * @brief xcb_input_attach_slave_iterator_t
 **/
struct xcb_input_attach_slave_iterator_t {
    xcb_input_attach_slave_t *data; /**<  */
    int                       rem; /**<  */
    int                       index; /**<  */
} ;

/**
 * @brief xcb_input_detach_slave_t
 **/
struct xcb_input_detach_slave_t {
    ushort                type; /**<  */
    ushort                len; /**<  */
    xcb_input_device_id_t deviceid; /**<  */
    ubyte                 pad0[2]; /**<  */
} ;

/**
 * @brief xcb_input_detach_slave_iterator_t
 **/
struct xcb_input_detach_slave_iterator_t {
    xcb_input_detach_slave_t *data; /**<  */
    int                       rem; /**<  */
    int                       index; /**<  */
} ;

/**
 * @brief xcb_input_hierarchy_change_t
 **/
struct xcb_input_hierarchy_change_t {
    ushort type; /**<  */
    ushort len; /**<  */
} ;

/**
 * @brief xcb_input_hierarchy_change_iterator_t
 **/
struct xcb_input_hierarchy_change_iterator_t {
    xcb_input_hierarchy_change_t *data; /**<  */
    int                           rem; /**<  */
    int                           index; /**<  */
} ;

/** Opcode for xcb_input_xi_change_hierarchy. */
const uint XCB_INPUT_XI_CHANGE_HIERARCHY = 43;

/**
 * @brief xcb_input_xi_change_hierarchy_request_t
 **/
struct xcb_input_xi_change_hierarchy_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  num_changes; /**<  */
} ;

/** Opcode for xcb_input_xi_set_client_pointer. */
const uint XCB_INPUT_XI_SET_CLIENT_POINTER = 44;

/**
 * @brief xcb_input_xi_set_client_pointer_request_t
 **/
struct xcb_input_xi_set_client_pointer_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_window_t          window; /**<  */
    xcb_input_device_id_t deviceid; /**<  */
    ubyte                 pad0[2]; /**<  */
} ;

/**
 * @brief xcb_input_xi_get_client_pointer_cookie_t
 **/
struct xcb_input_xi_get_client_pointer_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_xi_get_client_pointer. */
const uint XCB_INPUT_XI_GET_CLIENT_POINTER = 45;

/**
 * @brief xcb_input_xi_get_client_pointer_request_t
 **/
struct xcb_input_xi_get_client_pointer_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
} ;

/**
 * @brief xcb_input_xi_get_client_pointer_reply_t
 **/
struct xcb_input_xi_get_client_pointer_reply_t {
    ubyte                 response_type; /**<  */
    ubyte                 pad0; /**<  */
    ushort                sequence; /**<  */
    uint                  length; /**<  */
    bool                  set; /**<  */
    ubyte                 pad1; /**<  */
    xcb_input_device_id_t deviceid; /**<  */
    ubyte                 pad2[20]; /**<  */
} ;

enum :int{
    XCB_INPUT_XI_EVENT_MASK_DEVICE_CHANGED = (1 << 1),
    XCB_INPUT_XI_EVENT_MASK_KEY_PRESS = (1 << 2),
    XCB_INPUT_XI_EVENT_MASK_KEY_RELEASE = (1 << 3),
    XCB_INPUT_XI_EVENT_MASK_BUTTON_PRESS = (1 << 4),
    XCB_INPUT_XI_EVENT_MASK_BUTTON_RELEASE = (1 << 5),
    XCB_INPUT_XI_EVENT_MASK_MOTION = (1 << 6),
    XCB_INPUT_XI_EVENT_MASK_ENTER = (1 << 7),
    XCB_INPUT_XI_EVENT_MASK_LEAVE = (1 << 8),
    XCB_INPUT_XI_EVENT_MASK_FOCUS_IN = (1 << 9),
    XCB_INPUT_XI_EVENT_MASK_FOCUS_OUT = (1 << 10),
    XCB_INPUT_XI_EVENT_MASK_HIERARCHY = (1 << 11),
    XCB_INPUT_XI_EVENT_MASK_PROPERTY = (1 << 12),
    XCB_INPUT_XI_EVENT_MASK_RAW_KEY_PRESS = (1 << 13),
    XCB_INPUT_XI_EVENT_MASK_RAW_KEY_RELEASE = (1 << 14),
    XCB_INPUT_XI_EVENT_MASK_RAW_BUTTON_PRESS = (1 << 15),
    XCB_INPUT_XI_EVENT_MASK_RAW_BUTTON_RELEASE = (1 << 16),
    XCB_INPUT_XI_EVENT_MASK_RAW_MOTION = (1 << 17),
    XCB_INPUT_XI_EVENT_MASK_TOUCH_BEGIN = (1 << 18),
    XCB_INPUT_XI_EVENT_MASK_TOUCH_UPDATE = (1 << 19),
    XCB_INPUT_XI_EVENT_MASK_TOUCH_END = (1 << 20),
    XCB_INPUT_XI_EVENT_MASK_TOUCH_OWNERSHIP = (1 << 21),
    XCB_INPUT_XI_EVENT_MASK_RAW_TOUCH_BEGIN = (1 << 22),
    XCB_INPUT_XI_EVENT_MASK_RAW_TOUCH_UPDATE = (1 << 23),
    XCB_INPUT_XI_EVENT_MASK_RAW_TOUCH_END = (1 << 24),
    XCB_INPUT_XI_EVENT_MASK_BARRIER_HIT = (1 << 25),
    XCB_INPUT_XI_EVENT_MASK_BARRIER_LEAVE = (1 << 26)
};

/**
 * @brief xcb_input_event_mask_t
 **/
struct xcb_input_event_mask_t {
    xcb_input_device_id_t deviceid; /**<  */
    ushort                mask_len; /**<  */
} ;

/**
 * @brief xcb_input_event_mask_iterator_t
 **/
struct xcb_input_event_mask_iterator_t {
    xcb_input_event_mask_t *data; /**<  */
    int                     rem; /**<  */
    int                     index; /**<  */
} ;

/** Opcode for xcb_input_xi_select_events. */
const uint XCB_INPUT_XI_SELECT_EVENTS = 46;

/**
 * @brief xcb_input_xi_select_events_request_t
 **/
struct xcb_input_xi_select_events_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
    ushort       num_mask; /**<  */
    ubyte        pad0[2]; /**<  */
} ;

/**
 * @brief xcb_input_xi_query_version_cookie_t
 **/
struct xcb_input_xi_query_version_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_xi_query_version. */
const uint XCB_INPUT_XI_QUERY_VERSION = 47;

/**
 * @brief xcb_input_xi_query_version_request_t
 **/
struct xcb_input_xi_query_version_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort major_version; /**<  */
    ushort minor_version; /**<  */
} ;

/**
 * @brief xcb_input_xi_query_version_reply_t
 **/
struct xcb_input_xi_query_version_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort major_version; /**<  */
    ushort minor_version; /**<  */
    ubyte  pad1[20]; /**<  */
} ;

enum :int{
    XCB_INPUT_DEVICE_CLASS_TYPE_KEY = 0,
    XCB_INPUT_DEVICE_CLASS_TYPE_BUTTON = 1,
    XCB_INPUT_DEVICE_CLASS_TYPE_VALUATOR = 2,
    XCB_INPUT_DEVICE_CLASS_TYPE_SCROLL = 3,
    XCB_INPUT_DEVICE_CLASS_TYPE_TOUCH = 8
};

enum :int{
    XCB_INPUT_DEVICE_TYPE_MASTER_POINTER = 1,
    XCB_INPUT_DEVICE_TYPE_MASTER_KEYBOARD = 2,
    XCB_INPUT_DEVICE_TYPE_SLAVE_POINTER = 3,
    XCB_INPUT_DEVICE_TYPE_SLAVE_KEYBOARD = 4,
    XCB_INPUT_DEVICE_TYPE_FLOATING_SLAVE = 5
};

enum :int{
    XCB_INPUT_SCROLL_FLAGS_NO_EMULATION = (1 << 0),
    XCB_INPUT_SCROLL_FLAGS_PREFERRED = (1 << 1)
};

enum :int{
    XCB_INPUT_SCROLL_TYPE_VERTICAL = 1,
    XCB_INPUT_SCROLL_TYPE_HORIZONTAL = 2
};

enum :int{
    XCB_INPUT_TOUCH_MODE_DIRECT = 1,
    XCB_INPUT_TOUCH_MODE_DEPENDENT = 2
};

/**
 * @brief xcb_input_button_class_t
 **/
struct xcb_input_button_class_t {
    ushort                type; /**<  */
    ushort                len; /**<  */
    xcb_input_device_id_t sourceid; /**<  */
    ushort                num_buttons; /**<  */
} ;

/**
 * @brief xcb_input_button_class_iterator_t
 **/
struct xcb_input_button_class_iterator_t {
    xcb_input_button_class_t *data; /**<  */
    int                       rem; /**<  */
    int                       index; /**<  */
} ;

/**
 * @brief xcb_input_key_class_t
 **/
struct xcb_input_key_class_t {
    ushort                type; /**<  */
    ushort                len; /**<  */
    xcb_input_device_id_t sourceid; /**<  */
    ushort                num_keys; /**<  */
} ;

/**
 * @brief xcb_input_key_class_iterator_t
 **/
struct xcb_input_key_class_iterator_t {
    xcb_input_key_class_t *data; /**<  */
    int                    rem; /**<  */
    int                    index; /**<  */
} ;

/**
 * @brief xcb_input_scroll_class_t
 **/
struct xcb_input_scroll_class_t {
    ushort                type; /**<  */
    ushort                len; /**<  */
    xcb_input_device_id_t sourceid; /**<  */
    ushort                number; /**<  */
    ushort                scroll_type; /**<  */
    ubyte                 pad0[2]; /**<  */
    uint                  flags; /**<  */
    xcb_input_fp_3232_t   increment; /**<  */
} ;

/**
 * @brief xcb_input_scroll_class_iterator_t
 **/
struct xcb_input_scroll_class_iterator_t {
    xcb_input_scroll_class_t *data; /**<  */
    int                       rem; /**<  */
    int                       index; /**<  */
} ;

/**
 * @brief xcb_input_touch_class_t
 **/
struct xcb_input_touch_class_t {
    ushort                type; /**<  */
    ushort                len; /**<  */
    xcb_input_device_id_t sourceid; /**<  */
    ubyte                 mode; /**<  */
    ubyte                 num_touches; /**<  */
} ;

/**
 * @brief xcb_input_touch_class_iterator_t
 **/
struct xcb_input_touch_class_iterator_t {
    xcb_input_touch_class_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
} ;

/**
 * @brief xcb_input_valuator_class_t
 **/
struct xcb_input_valuator_class_t {
    ushort                type; /**<  */
    ushort                len; /**<  */
    xcb_input_device_id_t sourceid; /**<  */
    ushort                number; /**<  */
    xcb_atom_t            label; /**<  */
    xcb_input_fp_3232_t   min; /**<  */
    xcb_input_fp_3232_t   max; /**<  */
    xcb_input_fp_3232_t   value; /**<  */
    uint                  resolution; /**<  */
    ubyte                 mode; /**<  */
    ubyte                 pad0[3]; /**<  */
} ;

/**
 * @brief xcb_input_valuator_class_iterator_t
 **/
struct xcb_input_valuator_class_iterator_t {
    xcb_input_valuator_class_t *data; /**<  */
    int                         rem; /**<  */
    int                         index; /**<  */
} ;

/**
 * @brief xcb_input_device_class_t
 **/
struct xcb_input_device_class_t {
    ushort                type; /**<  */
    ushort                len; /**<  */
    xcb_input_device_id_t sourceid; /**<  */
    ubyte                 pad0[2]; /**<  */
} ;

/**
 * @brief xcb_input_device_class_iterator_t
 **/
struct xcb_input_device_class_iterator_t {
    xcb_input_device_class_t *data; /**<  */
    int                       rem; /**<  */
    int                       index; /**<  */
} ;

/**
 * @brief xcb_input_xi_device_info_t
 **/
struct xcb_input_xi_device_info_t {
    xcb_input_device_id_t deviceid; /**<  */
    ushort                type; /**<  */
    xcb_input_device_id_t attachment; /**<  */
    ushort                num_classes; /**<  */
    ushort                name_len; /**<  */
    bool                  enabled; /**<  */
    ubyte                 pad0; /**<  */
} ;

/**
 * @brief xcb_input_xi_device_info_iterator_t
 **/
struct xcb_input_xi_device_info_iterator_t {
    xcb_input_xi_device_info_t *data; /**<  */
    int                         rem; /**<  */
    int                         index; /**<  */
} ;

/**
 * @brief xcb_input_xi_query_device_cookie_t
 **/
struct xcb_input_xi_query_device_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_xi_query_device. */
const uint XCB_INPUT_XI_QUERY_DEVICE = 48;

/**
 * @brief xcb_input_xi_query_device_request_t
 **/
struct xcb_input_xi_query_device_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_input_device_id_t deviceid; /**<  */
    ubyte                 pad0[2]; /**<  */
} ;

/**
 * @brief xcb_input_xi_query_device_reply_t
 **/
struct xcb_input_xi_query_device_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort num_infos; /**<  */
    ubyte  pad1[22]; /**<  */
} ;

/** Opcode for xcb_input_xi_set_focus. */
const uint XCB_INPUT_XI_SET_FOCUS = 49;

/**
 * @brief xcb_input_xi_set_focus_request_t
 **/
struct xcb_input_xi_set_focus_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_window_t          window; /**<  */
    xcb_timestamp_t       time; /**<  */
    xcb_input_device_id_t deviceid; /**<  */
    ubyte                 pad0[2]; /**<  */
} ;

/**
 * @brief xcb_input_xi_get_focus_cookie_t
 **/
struct xcb_input_xi_get_focus_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_xi_get_focus. */
const uint XCB_INPUT_XI_GET_FOCUS = 50;

/**
 * @brief xcb_input_xi_get_focus_request_t
 **/
struct xcb_input_xi_get_focus_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_input_device_id_t deviceid; /**<  */
    ubyte                 pad0[2]; /**<  */
} ;

/**
 * @brief xcb_input_xi_get_focus_reply_t
 **/
struct xcb_input_xi_get_focus_reply_t {
    ubyte        response_type; /**<  */
    ubyte        pad0; /**<  */
    ushort       sequence; /**<  */
    uint         length; /**<  */
    xcb_window_t focus; /**<  */
    ubyte        pad1[20]; /**<  */
} ;

enum :int{
    XCB_INPUT_GRAB_OWNER_NO_OWNER = 0,
    XCB_INPUT_GRAB_OWNER_OWNER = 1
};

/**
 * @brief xcb_input_xi_grab_device_cookie_t
 **/
struct xcb_input_xi_grab_device_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_xi_grab_device. */
const uint XCB_INPUT_XI_GRAB_DEVICE = 51;

/**
 * @brief xcb_input_xi_grab_device_request_t
 **/
struct xcb_input_xi_grab_device_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_window_t          window; /**<  */
    xcb_timestamp_t       time; /**<  */
    xcb_cursor_t          cursor; /**<  */
    xcb_input_device_id_t deviceid; /**<  */
    ubyte                 mode; /**<  */
    ubyte                 paired_device_mode; /**<  */
    bool                  owner_events; /**<  */
    ubyte                 pad0; /**<  */
    ushort                mask_len; /**<  */
} ;

/**
 * @brief xcb_input_xi_grab_device_reply_t
 **/
struct xcb_input_xi_grab_device_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  status; /**<  */
    ubyte  pad1[23]; /**<  */
} ;

/** Opcode for xcb_input_xi_ungrab_device. */
const uint XCB_INPUT_XI_UNGRAB_DEVICE = 52;

/**
 * @brief xcb_input_xi_ungrab_device_request_t
 **/
struct xcb_input_xi_ungrab_device_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_timestamp_t       time; /**<  */
    xcb_input_device_id_t deviceid; /**<  */
    ubyte                 pad0[2]; /**<  */
} ;

enum :int{
    XCB_INPUT_EVENT_MODE_ASYNC_DEVICE = 0,
    XCB_INPUT_EVENT_MODE_SYNC_DEVICE = 1,
    XCB_INPUT_EVENT_MODE_REPLAY_DEVICE = 2,
    XCB_INPUT_EVENT_MODE_ASYNC_PAIRED_DEVICE = 3,
    XCB_INPUT_EVENT_MODE_ASYNC_PAIR = 4,
    XCB_INPUT_EVENT_MODE_SYNC_PAIR = 5,
    XCB_INPUT_EVENT_MODE_ACCEPT_TOUCH = 6,
    XCB_INPUT_EVENT_MODE_REJECT_TOUCH = 7
};

/** Opcode for xcb_input_xi_allow_events. */
const uint XCB_INPUT_XI_ALLOW_EVENTS = 53;

/**
 * @brief xcb_input_xi_allow_events_request_t
 **/
struct xcb_input_xi_allow_events_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_timestamp_t       time; /**<  */
    xcb_input_device_id_t deviceid; /**<  */
    ubyte                 event_mode; /**<  */
    ubyte                 pad0; /**<  */
    uint                  touchid; /**<  */
    xcb_window_t          grab_window; /**<  */
} ;

enum :int{
    XCB_INPUT_GRAB_MODE_22_SYNC = 0,
    XCB_INPUT_GRAB_MODE_22_ASYNC = 1,
    XCB_INPUT_GRAB_MODE_22_TOUCH = 2
};

enum :int{
    XCB_INPUT_GRAB_TYPE_BUTTON = 0,
    XCB_INPUT_GRAB_TYPE_KEYCODE = 1,
    XCB_INPUT_GRAB_TYPE_ENTER = 2,
    XCB_INPUT_GRAB_TYPE_FOCUS_IN = 3,
    XCB_INPUT_GRAB_TYPE_TOUCH_BEGIN = 4
};

enum :int{
    XCB_INPUT_MODIFIER_MASK_ANY = (1 << 31)
};

/**
 * @brief xcb_input_grab_modifier_info_t
 **/
struct xcb_input_grab_modifier_info_t {
    uint  modifiers; /**<  */
    ubyte status; /**<  */
    ubyte pad0[3]; /**<  */
} ;

/**
 * @brief xcb_input_grab_modifier_info_iterator_t
 **/
struct xcb_input_grab_modifier_info_iterator_t {
    xcb_input_grab_modifier_info_t *data; /**<  */
    int                             rem; /**<  */
    int                             index; /**<  */
} ;

/**
 * @brief xcb_input_xi_passive_grab_device_cookie_t
 **/
struct xcb_input_xi_passive_grab_device_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_xi_passive_grab_device. */
const uint XCB_INPUT_XI_PASSIVE_GRAB_DEVICE = 54;

/**
 * @brief xcb_input_xi_passive_grab_device_request_t
 **/
struct xcb_input_xi_passive_grab_device_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_timestamp_t       time; /**<  */
    xcb_window_t          grab_window; /**<  */
    xcb_cursor_t          cursor; /**<  */
    uint                  detail; /**<  */
    xcb_input_device_id_t deviceid; /**<  */
    ushort                num_modifiers; /**<  */
    ushort                mask_len; /**<  */
    ubyte                 grab_type; /**<  */
    ubyte                 grab_mode; /**<  */
    ubyte                 paired_device_mode; /**<  */
    bool                  owner_events; /**<  */
    ubyte                 pad0[2]; /**<  */
} ;

/**
 * @brief xcb_input_xi_passive_grab_device_reply_t
 **/
struct xcb_input_xi_passive_grab_device_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort num_modifiers; /**<  */
    ubyte  pad1[22]; /**<  */
} ;

/** Opcode for xcb_input_xi_passive_ungrab_device. */
const uint XCB_INPUT_XI_PASSIVE_UNGRAB_DEVICE = 55;

/**
 * @brief xcb_input_xi_passive_ungrab_device_request_t
 **/
struct xcb_input_xi_passive_ungrab_device_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_window_t          grab_window; /**<  */
    uint                  detail; /**<  */
    xcb_input_device_id_t deviceid; /**<  */
    ushort                num_modifiers; /**<  */
    ubyte                 grab_type; /**<  */
    ubyte                 pad0[3]; /**<  */
} ;

/**
 * @brief xcb_input_xi_list_properties_cookie_t
 **/
struct xcb_input_xi_list_properties_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_xi_list_properties. */
const uint XCB_INPUT_XI_LIST_PROPERTIES = 56;

/**
 * @brief xcb_input_xi_list_properties_request_t
 **/
struct xcb_input_xi_list_properties_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_input_device_id_t deviceid; /**<  */
    ubyte                 pad0[2]; /**<  */
} ;

/**
 * @brief xcb_input_xi_list_properties_reply_t
 **/
struct xcb_input_xi_list_properties_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort num_properties; /**<  */
    ubyte  pad1[22]; /**<  */
} ;

/** Opcode for xcb_input_xi_change_property. */
const uint XCB_INPUT_XI_CHANGE_PROPERTY = 57;

/**
 * @brief xcb_input_xi_change_property_request_t
 **/
struct xcb_input_xi_change_property_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_input_device_id_t deviceid; /**<  */
    ubyte                 mode; /**<  */
    ubyte                 format; /**<  */
    xcb_atom_t            property; /**<  */
    xcb_atom_t            type; /**<  */
    uint                  num_items; /**<  */
} ;

/** Opcode for xcb_input_xi_delete_property. */
const uint XCB_INPUT_XI_DELETE_PROPERTY = 58;

/**
 * @brief xcb_input_xi_delete_property_request_t
 **/
struct xcb_input_xi_delete_property_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_input_device_id_t deviceid; /**<  */
    ubyte                 pad0[2]; /**<  */
    xcb_atom_t            property; /**<  */
} ;

/**
 * @brief xcb_input_xi_get_property_cookie_t
 **/
struct xcb_input_xi_get_property_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_xi_get_property. */
const uint XCB_INPUT_XI_GET_PROPERTY = 59;

/**
 * @brief xcb_input_xi_get_property_request_t
 **/
struct xcb_input_xi_get_property_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_input_device_id_t deviceid; /**<  */
    bool                  _delete; /**<  */
    ubyte                 pad0; /**<  */
    xcb_atom_t            property; /**<  */
    xcb_atom_t            type; /**<  */
    uint                  offset; /**<  */
    uint                  len; /**<  */
} ;

/**
 * @brief xcb_input_xi_get_property_reply_t
 **/
struct xcb_input_xi_get_property_reply_t {
    ubyte      response_type; /**<  */
    ubyte      pad0; /**<  */
    ushort     sequence; /**<  */
    uint       length; /**<  */
    xcb_atom_t type; /**<  */
    uint       bytes_after; /**<  */
    uint       num_items; /**<  */
    ubyte      format; /**<  */
    ubyte      pad1[11]; /**<  */
} ;

/**
 * @brief xcb_input_xi_get_selected_events_cookie_t
 **/
struct xcb_input_xi_get_selected_events_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_input_xi_get_selected_events. */
const uint XCB_INPUT_XI_GET_SELECTED_EVENTS = 60;

/**
 * @brief xcb_input_xi_get_selected_events_request_t
 **/
struct xcb_input_xi_get_selected_events_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
} ;

/**
 * @brief xcb_input_xi_get_selected_events_reply_t
 **/
struct xcb_input_xi_get_selected_events_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort num_masks; /**<  */
    ubyte  pad1[22]; /**<  */
} ;

/**
 * @brief xcb_input_barrier_release_pointer_info_t
 **/
struct xcb_input_barrier_release_pointer_info_t {
    xcb_input_device_id_t deviceid; /**<  */
    ubyte                 pad0[2]; /**<  */
    xcb_xfixes_barrier_t  barrier; /**<  */
    uint                  eventid; /**<  */
} ;

/**
 * @brief xcb_input_barrier_release_pointer_info_iterator_t
 **/
struct xcb_input_barrier_release_pointer_info_iterator_t {
    xcb_input_barrier_release_pointer_info_t *data; /**<  */
    int                                       rem; /**<  */
    int                                       index; /**<  */
} ;

/** Opcode for xcb_input_xi_barrier_release_pointer. */
const uint XCB_INPUT_XI_BARRIER_RELEASE_POINTER = 61;

/**
 * @brief xcb_input_xi_barrier_release_pointer_request_t
 **/
struct xcb_input_xi_barrier_release_pointer_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    uint   num_barriers; /**<  */
} ;

/** Opcode for xcb_input_device_valuator. */
const uint XCB_INPUT_DEVICE_VALUATOR = 0;

/**
 * @brief xcb_input_device_valuator_event_t
 **/
struct xcb_input_device_valuator_event_t {
    ubyte  response_type; /**<  */
    ubyte  device_id; /**<  */
    ushort sequence; /**<  */
    ushort device_state; /**<  */
    ubyte  num_valuators; /**<  */
    ubyte  first_valuator; /**<  */
    int    valuators[6]; /**<  */
} ;

/** Opcode for xcb_input_device_key_press. */
const uint XCB_INPUT_DEVICE_KEY_PRESS = 1;

/**
 * @brief xcb_input_device_key_press_event_t
 **/
struct xcb_input_device_key_press_event_t {
    ubyte           response_type; /**<  */
    ubyte           detail; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    xcb_window_t    root; /**<  */
    xcb_window_t    event; /**<  */
    xcb_window_t    child; /**<  */
    short           root_x; /**<  */
    short           root_y; /**<  */
    short           event_x; /**<  */
    short           event_y; /**<  */
    ushort          state; /**<  */
    bool            same_screen; /**<  */
    ubyte           device_id; /**<  */
} ;

/** Opcode for xcb_input_device_key_release. */
const uint XCB_INPUT_DEVICE_KEY_RELEASE = 2;

alias xcb_input_device_key_press_event_t xcb_input_device_key_release_event_t;

/** Opcode for xcb_input_device_button_press. */
const uint XCB_INPUT_DEVICE_BUTTON_PRESS = 3;

alias xcb_input_device_key_press_event_t xcb_input_device_button_press_event_t;

/** Opcode for xcb_input_device_button_release. */
const uint XCB_INPUT_DEVICE_BUTTON_RELEASE = 4;

alias xcb_input_device_key_press_event_t xcb_input_device_button_release_event_t;

/** Opcode for xcb_input_device_motion_notify. */
const uint XCB_INPUT_DEVICE_MOTION_NOTIFY = 5;

alias xcb_input_device_key_press_event_t xcb_input_device_motion_notify_event_t;

/** Opcode for xcb_input_device_focus_in. */
const uint XCB_INPUT_DEVICE_FOCUS_IN = 6;

/**
 * @brief xcb_input_device_focus_in_event_t
 **/
struct xcb_input_device_focus_in_event_t {
    ubyte           response_type; /**<  */
    ubyte           detail; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    xcb_window_t    window; /**<  */
    ubyte           mode; /**<  */
    ubyte           device_id; /**<  */
    ubyte           pad0[18]; /**<  */
} ;

/** Opcode for xcb_input_device_focus_out. */
const uint XCB_INPUT_DEVICE_FOCUS_OUT = 7;

alias xcb_input_device_focus_in_event_t xcb_input_device_focus_out_event_t;

/** Opcode for xcb_input_proximity_in. */
const uint XCB_INPUT_PROXIMITY_IN = 8;

alias xcb_input_device_key_press_event_t xcb_input_proximity_in_event_t;

/** Opcode for xcb_input_proximity_out. */
const uint XCB_INPUT_PROXIMITY_OUT = 9;

alias xcb_input_device_key_press_event_t xcb_input_proximity_out_event_t;

/** Opcode for xcb_input_device_state_notify. */
const uint XCB_INPUT_DEVICE_STATE_NOTIFY = 10;

/**
 * @brief xcb_input_device_state_notify_event_t
 **/
struct xcb_input_device_state_notify_event_t {
    ubyte           response_type; /**<  */
    ubyte           device_id; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    ubyte           num_keys; /**<  */
    ubyte           num_buttons; /**<  */
    ubyte           num_valuators; /**<  */
    ubyte           classes_reported; /**<  */
    ubyte           buttons[4]; /**<  */
    ubyte           keys[4]; /**<  */
    uint            valuators[3]; /**<  */
} ;

/** Opcode for xcb_input_device_mapping_notify. */
const uint XCB_INPUT_DEVICE_MAPPING_NOTIFY = 11;

/**
 * @brief xcb_input_device_mapping_notify_event_t
 **/
struct xcb_input_device_mapping_notify_event_t {
    ubyte                response_type; /**<  */
    ubyte                device_id; /**<  */
    ushort               sequence; /**<  */
    ubyte                request; /**<  */
    xcb_input_key_code_t first_keycode; /**<  */
    ubyte                count; /**<  */
    ubyte                pad0; /**<  */
    xcb_timestamp_t      time; /**<  */
    ubyte                pad1[20]; /**<  */
} ;

/** Opcode for xcb_input_change_device_notify. */
const uint XCB_INPUT_CHANGE_DEVICE_NOTIFY = 12;

/**
 * @brief xcb_input_change_device_notify_event_t
 **/
struct xcb_input_change_device_notify_event_t {
    ubyte           response_type; /**<  */
    ubyte           device_id; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    ubyte           request; /**<  */
    ubyte           pad0[23]; /**<  */
} ;

/** Opcode for xcb_input_device_key_state_notify. */
const uint XCB_INPUT_DEVICE_KEY_STATE_NOTIFY = 13;

/**
 * @brief xcb_input_device_key_state_notify_event_t
 **/
struct xcb_input_device_key_state_notify_event_t {
    ubyte  response_type; /**<  */
    ubyte  device_id; /**<  */
    ushort sequence; /**<  */
    ubyte  keys[28]; /**<  */
} ;

/** Opcode for xcb_input_device_button_state_notify. */
const uint XCB_INPUT_DEVICE_BUTTON_STATE_NOTIFY = 14;

/**
 * @brief xcb_input_device_button_state_notify_event_t
 **/
struct xcb_input_device_button_state_notify_event_t {
    ubyte  response_type; /**<  */
    ubyte  device_id; /**<  */
    ushort sequence; /**<  */
    ubyte  buttons[28]; /**<  */
} ;

enum :int{
    XCB_INPUT_DEVICE_CHANGE_ADDED = 0,
    XCB_INPUT_DEVICE_CHANGE_REMOVED = 1,
    XCB_INPUT_DEVICE_CHANGE_ENABLED = 2,
    XCB_INPUT_DEVICE_CHANGE_DISABLED = 3,
    XCB_INPUT_DEVICE_CHANGE_UNRECOVERABLE = 4,
    XCB_INPUT_DEVICE_CHANGE_CONTROL_CHANGED = 5
};

/** Opcode for xcb_input_device_presence_notify. */
const uint XCB_INPUT_DEVICE_PRESENCE_NOTIFY = 15;

/**
 * @brief xcb_input_device_presence_notify_event_t
 **/
struct xcb_input_device_presence_notify_event_t {
    ubyte           response_type; /**<  */
    ubyte           pad0; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    ubyte           devchange; /**<  */
    ubyte           device_id; /**<  */
    ushort          control; /**<  */
    ubyte           pad1[20]; /**<  */
} ;

/** Opcode for xcb_input_device_property_notify. */
const uint XCB_INPUT_DEVICE_PROPERTY_NOTIFY = 16;

/**
 * @brief xcb_input_device_property_notify_event_t
 **/
struct xcb_input_device_property_notify_event_t {
    ubyte           response_type; /**<  */
    ubyte           state; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    xcb_atom_t      property; /**<  */
    ubyte           pad0[19]; /**<  */
    ubyte           device_id; /**<  */
} ;

enum :int{
    XCB_INPUT_CHANGE_REASON_SLAVE_SWITCH = 1,
    XCB_INPUT_CHANGE_REASON_DEVICE_CHANGE = 2
};

/** Opcode for xcb_input_device_changed. */
const uint XCB_INPUT_DEVICE_CHANGED = 1;

/**
 * @brief xcb_input_device_changed_event_t
 **/
struct xcb_input_device_changed_event_t {
    ubyte                 response_type; /**<  */
    xcb_input_device_id_t deviceid; /**<  */
    ushort                sequence; /**<  */
    xcb_timestamp_t       time; /**<  */
    ushort                num_classes; /**<  */
    xcb_input_device_id_t sourceid; /**<  */
    ubyte                 reason; /**<  */
    ubyte                 pad0[11]; /**<  */
} ;

enum :int{
    XCB_INPUT_KEY_EVENT_FLAGS_KEY_REPEAT = (1 << 16)
};

/** Opcode for xcb_input_key_press. */
const uint XCB_INPUT_KEY_PRESS = 2;

/**
 * @brief xcb_input_key_press_event_t
 **/
struct xcb_input_key_press_event_t {
    ubyte                     response_type; /**<  */
    xcb_input_device_id_t     deviceid; /**<  */
    ushort                    sequence; /**<  */
    xcb_timestamp_t           time; /**<  */
    uint                      detail; /**<  */
    xcb_window_t              root; /**<  */
    xcb_window_t              event; /**<  */
    xcb_window_t              child; /**<  */
    xcb_input_fp_1616_t       root_x; /**<  */
    xcb_input_fp_1616_t       root_y; /**<  */
    xcb_input_fp_1616_t       event_x; /**<  */
    xcb_input_fp_1616_t       event_y; /**<  */
    ushort                    buttons_len; /**<  */
    ushort                    valuators_len; /**<  */
    xcb_input_device_id_t     sourceid; /**<  */
    ubyte                     pad0[2]; /**<  */
    uint                      flags; /**<  */
    xcb_input_modifier_info_t mods; /**<  */
    xcb_input_group_info_t    group; /**<  */
} ;

/** Opcode for xcb_input_key_release. */
const uint XCB_INPUT_KEY_RELEASE = 3;

alias xcb_input_key_press_event_t xcb_input_key_release_event_t;

enum :int{
    XCB_INPUT_POINTER_EVENT_FLAGS_POINTER_EMULATED = (1 << 16)
};

/** Opcode for xcb_input_button_press. */
const uint XCB_INPUT_BUTTON_PRESS = 4;

/**
 * @brief xcb_input_button_press_event_t
 **/
struct xcb_input_button_press_event_t {
    ubyte                     response_type; /**<  */
    xcb_input_device_id_t     deviceid; /**<  */
    ushort                    sequence; /**<  */
    xcb_timestamp_t           time; /**<  */
    uint                      detail; /**<  */
    xcb_window_t              root; /**<  */
    xcb_window_t              event; /**<  */
    xcb_window_t              child; /**<  */
    xcb_input_fp_1616_t       root_x; /**<  */
    xcb_input_fp_1616_t       root_y; /**<  */
    xcb_input_fp_1616_t       event_x; /**<  */
    xcb_input_fp_1616_t       event_y; /**<  */
    ushort                    buttons_len; /**<  */
    ushort                    valuators_len; /**<  */
    xcb_input_device_id_t     sourceid; /**<  */
    ubyte                     pad0[2]; /**<  */
    uint                      flags; /**<  */
    xcb_input_modifier_info_t mods; /**<  */
    xcb_input_group_info_t    group; /**<  */
} ;

/** Opcode for xcb_input_button_release. */
const uint XCB_INPUT_BUTTON_RELEASE = 5;

alias xcb_input_button_press_event_t xcb_input_button_release_event_t;

/** Opcode for xcb_input_motion. */
const uint XCB_INPUT_MOTION = 6;

alias xcb_input_button_press_event_t xcb_input_motion_event_t;

enum :int{
    XCB_INPUT_NOTIFY_MODE_NORMAL = 0,
    XCB_INPUT_NOTIFY_MODE_GRAB = 1,
    XCB_INPUT_NOTIFY_MODE_UNGRAB = 2,
    XCB_INPUT_NOTIFY_MODE_WHILE_GRABBED = 3,
    XCB_INPUT_NOTIFY_MODE_PASSIVE_GRAB = 4,
    XCB_INPUT_NOTIFY_MODE_PASSIVE_UNGRAB = 5
};

enum :int{
    XCB_INPUT_NOTIFY_DETAIL_ANCESTOR = 0,
    XCB_INPUT_NOTIFY_DETAIL_VIRTUAL = 1,
    XCB_INPUT_NOTIFY_DETAIL_INFERIOR = 2,
    XCB_INPUT_NOTIFY_DETAIL_NONLINEAR = 3,
    XCB_INPUT_NOTIFY_DETAIL_NONLINEAR_VIRTUAL = 4,
    XCB_INPUT_NOTIFY_DETAIL_POINTER = 5,
    XCB_INPUT_NOTIFY_DETAIL_POINTER_ROOT = 6,
    XCB_INPUT_NOTIFY_DETAIL_NONE = 7
};

/** Opcode for xcb_input_enter. */
const uint XCB_INPUT_ENTER = 7;

/**
 * @brief xcb_input_enter_event_t
 **/
struct xcb_input_enter_event_t {
    ubyte                     response_type; /**<  */
    xcb_input_device_id_t     deviceid; /**<  */
    ushort                    sequence; /**<  */
    xcb_timestamp_t           time; /**<  */
    xcb_input_device_id_t     sourceid; /**<  */
    ubyte                     mode; /**<  */
    ubyte                     detail; /**<  */
    xcb_window_t              root; /**<  */
    xcb_window_t              event; /**<  */
    xcb_window_t              child; /**<  */
    xcb_input_fp_1616_t       root_x; /**<  */
    xcb_input_fp_1616_t       root_y; /**<  */
    xcb_input_fp_1616_t       event_x; /**<  */
    xcb_input_fp_1616_t       event_y; /**<  */
    ubyte                     same_screen; /**<  */
    ubyte                     focus; /**<  */
    ushort                    buttons_len; /**<  */
    xcb_input_modifier_info_t mods; /**<  */
    xcb_input_group_info_t    group; /**<  */
} ;

/** Opcode for xcb_input_leave. */
const uint XCB_INPUT_LEAVE = 8;

alias xcb_input_enter_event_t xcb_input_leave_event_t;

/** Opcode for xcb_input_focus_in. */
const uint XCB_INPUT_FOCUS_IN = 9;

alias xcb_input_enter_event_t xcb_input_focus_in_event_t;

/** Opcode for xcb_input_focus_out. */
const uint XCB_INPUT_FOCUS_OUT = 10;

alias xcb_input_enter_event_t xcb_input_focus_out_event_t;

enum :int{
    XCB_INPUT_HIERARCHY_MASK_MASTER_ADDED = (1 << 0),
    XCB_INPUT_HIERARCHY_MASK_MASTER_REMOVED = (1 << 1),
    XCB_INPUT_HIERARCHY_MASK_SLAVE_ADDED = (1 << 2),
    XCB_INPUT_HIERARCHY_MASK_SLAVE_REMOVED = (1 << 3),
    XCB_INPUT_HIERARCHY_MASK_SLAVE_ATTACHED = (1 << 4),
    XCB_INPUT_HIERARCHY_MASK_SLAVE_DETACHED = (1 << 5),
    XCB_INPUT_HIERARCHY_MASK_DEVICE_ENABLED = (1 << 6),
    XCB_INPUT_HIERARCHY_MASK_DEVICE_DISABLED = (1 << 7)
};

/**
 * @brief xcb_input_hierarchy_info_t
 **/
struct xcb_input_hierarchy_info_t {
    xcb_input_device_id_t deviceid; /**<  */
    xcb_input_device_id_t attachment; /**<  */
    ubyte                 type; /**<  */
    bool                  enabled; /**<  */
    ubyte                 pad0[2]; /**<  */
    uint                  flags; /**<  */
} ;

/**
 * @brief xcb_input_hierarchy_info_iterator_t
 **/
struct xcb_input_hierarchy_info_iterator_t {
    xcb_input_hierarchy_info_t *data; /**<  */
    int                         rem; /**<  */
    int                         index; /**<  */
} ;

/** Opcode for xcb_input_hierarchy. */
const uint XCB_INPUT_HIERARCHY = 11;

/**
 * @brief xcb_input_hierarchy_event_t
 **/
struct xcb_input_hierarchy_event_t {
    ubyte                 response_type; /**<  */
    xcb_input_device_id_t deviceid; /**<  */
    ushort                sequence; /**<  */
    xcb_timestamp_t       time; /**<  */
    uint                  flags; /**<  */
    ushort                num_infos; /**<  */
    ubyte                 pad0[10]; /**<  */
} ;

enum :int{
    XCB_INPUT_PROPERTY_FLAG_DELETED = 0,
    XCB_INPUT_PROPERTY_FLAG_CREATED = 1,
    XCB_INPUT_PROPERTY_FLAG_MODIFIED = 2
};

/** Opcode for xcb_input_property. */
const uint XCB_INPUT_PROPERTY = 12;

/**
 * @brief xcb_input_property_event_t
 **/
struct xcb_input_property_event_t {
    ubyte                 response_type; /**<  */
    xcb_input_device_id_t deviceid; /**<  */
    ushort                sequence; /**<  */
    xcb_timestamp_t       time; /**<  */
    xcb_atom_t            property; /**<  */
    ubyte                 what; /**<  */
    ubyte                 pad0[11]; /**<  */
} ;

/** Opcode for xcb_input_raw_key_press. */
const uint XCB_INPUT_RAW_KEY_PRESS = 13;

/**
 * @brief xcb_input_raw_key_press_event_t
 **/
struct xcb_input_raw_key_press_event_t {
    ubyte                 response_type; /**<  */
    xcb_input_device_id_t deviceid; /**<  */
    ushort                sequence; /**<  */
    xcb_timestamp_t       time; /**<  */
    uint                  detail; /**<  */
    xcb_input_device_id_t sourceid; /**<  */
    ushort                valuators_len; /**<  */
    uint                  flags; /**<  */
    ubyte                 pad0[4]; /**<  */
} ;

/** Opcode for xcb_input_raw_key_release. */
const uint XCB_INPUT_RAW_KEY_RELEASE = 14;

alias xcb_input_raw_key_press_event_t xcb_input_raw_key_release_event_t;

/** Opcode for xcb_input_raw_button_press. */
const uint XCB_INPUT_RAW_BUTTON_PRESS = 15;

/**
 * @brief xcb_input_raw_button_press_event_t
 **/
struct xcb_input_raw_button_press_event_t {
    ubyte                 response_type; /**<  */
    xcb_input_device_id_t deviceid; /**<  */
    ushort                sequence; /**<  */
    xcb_timestamp_t       time; /**<  */
    uint                  detail; /**<  */
    xcb_input_device_id_t sourceid; /**<  */
    ushort                valuators_len; /**<  */
    uint                  flags; /**<  */
    ubyte                 pad0[4]; /**<  */
} ;

/** Opcode for xcb_input_raw_button_release. */
const uint XCB_INPUT_RAW_BUTTON_RELEASE = 16;

alias xcb_input_raw_button_press_event_t xcb_input_raw_button_release_event_t;

/** Opcode for xcb_input_raw_motion. */
const uint XCB_INPUT_RAW_MOTION = 17;

alias xcb_input_raw_button_press_event_t xcb_input_raw_motion_event_t;

enum :int{
    XCB_INPUT_TOUCH_EVENT_FLAGS_TOUCH_PENDING_END = (1 << 16),
    XCB_INPUT_TOUCH_EVENT_FLAGS_TOUCH_EMULATING_POINTER = (1 << 17)
};

/** Opcode for xcb_input_touch_begin. */
const uint XCB_INPUT_TOUCH_BEGIN = 18;

/**
 * @brief xcb_input_touch_begin_event_t
 **/
struct xcb_input_touch_begin_event_t {
    ubyte                     response_type; /**<  */
    xcb_input_device_id_t     deviceid; /**<  */
    ushort                    sequence; /**<  */
    xcb_timestamp_t           time; /**<  */
    uint                      detail; /**<  */
    xcb_window_t              root; /**<  */
    xcb_window_t              event; /**<  */
    xcb_window_t              child; /**<  */
    xcb_input_fp_1616_t       root_x; /**<  */
    xcb_input_fp_1616_t       root_y; /**<  */
    xcb_input_fp_1616_t       event_x; /**<  */
    xcb_input_fp_1616_t       event_y; /**<  */
    ushort                    buttons_len; /**<  */
    ushort                    valuators_len; /**<  */
    xcb_input_device_id_t     sourceid; /**<  */
    ubyte                     pad0[2]; /**<  */
    uint                      flags; /**<  */
    xcb_input_modifier_info_t mods; /**<  */
    xcb_input_group_info_t    group; /**<  */
} ;

/** Opcode for xcb_input_touch_update. */
const uint XCB_INPUT_TOUCH_UPDATE = 19;

alias xcb_input_touch_begin_event_t xcb_input_touch_update_event_t;

/** Opcode for xcb_input_touch_end. */
const uint XCB_INPUT_TOUCH_END = 20;

alias xcb_input_touch_begin_event_t xcb_input_touch_end_event_t;

enum :int{
    XCB_INPUT_TOUCH_OWNERSHIP_FLAGS_NONE = 0
};

/** Opcode for xcb_input_touch_ownership. */
const uint XCB_INPUT_TOUCH_OWNERSHIP = 21;

/**
 * @brief xcb_input_touch_ownership_event_t
 **/
struct xcb_input_touch_ownership_event_t {
    ubyte                 response_type; /**<  */
    xcb_input_device_id_t deviceid; /**<  */
    ushort                sequence; /**<  */
    xcb_timestamp_t       time; /**<  */
    uint                  touchid; /**<  */
    xcb_window_t          root; /**<  */
    xcb_window_t          event; /**<  */
    xcb_window_t          child; /**<  */
    xcb_input_device_id_t sourceid; /**<  */
    ubyte                 pad0[2]; /**<  */
    uint                  flags; /**<  */
    ubyte                 pad1[8]; /**<  */
} ;

/** Opcode for xcb_input_raw_touch_begin. */
const uint XCB_INPUT_RAW_TOUCH_BEGIN = 22;

/**
 * @brief xcb_input_raw_touch_begin_event_t
 **/
struct xcb_input_raw_touch_begin_event_t {
    ubyte                 response_type; /**<  */
    xcb_input_device_id_t deviceid; /**<  */
    ushort                sequence; /**<  */
    xcb_timestamp_t       time; /**<  */
    uint                  detail; /**<  */
    xcb_input_device_id_t sourceid; /**<  */
    ushort                valuators_len; /**<  */
    uint                  flags; /**<  */
    ubyte                 pad0[4]; /**<  */
} ;

/** Opcode for xcb_input_raw_touch_update. */
const uint XCB_INPUT_RAW_TOUCH_UPDATE = 23;

alias xcb_input_raw_touch_begin_event_t xcb_input_raw_touch_update_event_t;

/** Opcode for xcb_input_raw_touch_end. */
const uint XCB_INPUT_RAW_TOUCH_END = 24;

alias xcb_input_raw_touch_begin_event_t xcb_input_raw_touch_end_event_t;

/** Opcode for xcb_input_barrier_hit. */
const uint XCB_INPUT_BARRIER_HIT = 25;

/**
 * @brief xcb_input_barrier_hit_event_t
 **/
struct xcb_input_barrier_hit_event_t {
    ubyte                 response_type; /**<  */
    xcb_input_device_id_t deviceid; /**<  */
    ushort                sequence; /**<  */
    xcb_timestamp_t       time; /**<  */
    uint                  eventid; /**<  */
    xcb_window_t          root; /**<  */
    xcb_window_t          event; /**<  */
    xcb_xfixes_barrier_t  barrier; /**<  */
    uint                  dtime; /**<  */
    uint                  flags; /**<  */
    xcb_input_device_id_t sourceid; /**<  */
    ubyte                 pad0[2]; /**<  */
    xcb_input_fp_1616_t   root_x; /**<  */
    xcb_input_fp_1616_t   root_y; /**<  */
    xcb_input_fp_3232_t   dx; /**<  */
    xcb_input_fp_3232_t   dy; /**<  */
} ;

/** Opcode for xcb_input_barrier_leave. */
const uint XCB_INPUT_BARRIER_LEAVE = 26;

alias xcb_input_barrier_hit_event_t xcb_input_barrier_leave_event_t;

/** Opcode for xcb_input_device. */
const uint XCB_INPUT_DEVICE = 0;

/**
 * @brief xcb_input_device_error_t
 **/
struct xcb_input_device_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
} ;

/** Opcode for xcb_input_event. */
const uint XCB_INPUT_EVENT = 1;

/**
 * @brief xcb_input_event_error_t
 **/
struct xcb_input_event_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
} ;

/** Opcode for xcb_input_mode. */
const uint XCB_INPUT_MODE = 2;

/**
 * @brief xcb_input_mode_error_t
 **/
struct xcb_input_mode_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
} ;

/** Opcode for xcb_input_device_busy. */
const uint XCB_INPUT_DEVICE_BUSY = 3;

/**
 * @brief xcb_input_device_busy_error_t
 **/
struct xcb_input_device_busy_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
} ;

/** Opcode for xcb_input_class. */
const uint XCB_INPUT_CLASS = 4;

/**
 * @brief xcb_input_class_error_t
 **/
struct xcb_input_class_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
} ;


/*****************************************************************************
 **
 ** void xcb_input_event_class_next
 ** 
 ** @param xcb_input_event_class_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_event_class_next (xcb_input_event_class_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_event_class_end
 ** 
 ** @param xcb_input_event_class_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_event_class_end (xcb_input_event_class_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_key_code_next
 ** 
 ** @param xcb_input_key_code_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_key_code_next (xcb_input_key_code_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_key_code_end
 ** 
 ** @param xcb_input_key_code_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_key_code_end (xcb_input_key_code_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_device_id_next
 ** 
 ** @param xcb_input_device_id_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_id_next (xcb_input_device_id_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_id_end
 ** 
 ** @param xcb_input_device_id_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_device_id_end (xcb_input_device_id_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_fp_1616_next
 ** 
 ** @param xcb_input_fp_1616_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_fp_1616_next (xcb_input_fp_1616_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_fp_1616_end
 ** 
 ** @param xcb_input_fp_1616_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_fp_1616_end (xcb_input_fp_1616_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_fp_3232_next
 ** 
 ** @param xcb_input_fp_3232_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_fp_3232_next (xcb_input_fp_3232_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_fp_3232_end
 ** 
 ** @param xcb_input_fp_3232_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_fp_3232_end (xcb_input_fp_3232_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_extension_version_cookie_t xcb_input_get_extension_version
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            name_len
 ** @param /+const+/ char   *name
 ** @returns xcb_input_get_extension_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_extension_version_cookie_t
xcb_input_get_extension_version (xcb_connection_t *c  /**< */,
                                 ushort            name_len  /**< */,
                                 /+const+/ char   *name  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_extension_version_cookie_t xcb_input_get_extension_version_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            name_len
 ** @param /+const+/ char   *name
 ** @returns xcb_input_get_extension_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_extension_version_cookie_t
xcb_input_get_extension_version_unchecked (xcb_connection_t *c  /**< */,
                                           ushort            name_len  /**< */,
                                           /+const+/ char   *name  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_extension_version_reply_t * xcb_input_get_extension_version_reply
 ** 
 ** @param xcb_connection_t                          *c
 ** @param xcb_input_get_extension_version_cookie_t   cookie
 ** @param xcb_generic_error_t                      **e
 ** @returns xcb_input_get_extension_version_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_extension_version_reply_t *
xcb_input_get_extension_version_reply (xcb_connection_t                          *c  /**< */,
                                       xcb_input_get_extension_version_cookie_t   cookie  /**< */,
                                       xcb_generic_error_t                      **e  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_device_info_next
 ** 
 ** @param xcb_input_device_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_info_next (xcb_input_device_info_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_info_end
 ** 
 ** @param xcb_input_device_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_device_info_end (xcb_input_device_info_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_key_info_next
 ** 
 ** @param xcb_input_key_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_key_info_next (xcb_input_key_info_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_key_info_end
 ** 
 ** @param xcb_input_key_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_key_info_end (xcb_input_key_info_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_button_info_next
 ** 
 ** @param xcb_input_button_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_button_info_next (xcb_input_button_info_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_button_info_end
 ** 
 ** @param xcb_input_button_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_button_info_end (xcb_input_button_info_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_axis_info_next
 ** 
 ** @param xcb_input_axis_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_axis_info_next (xcb_input_axis_info_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_axis_info_end
 ** 
 ** @param xcb_input_axis_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_axis_info_end (xcb_input_axis_info_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_input_axis_info_t * xcb_input_valuator_info_axes
 ** 
 ** @param /+const+/ xcb_input_valuator_info_t *R
 ** @returns xcb_input_axis_info_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_axis_info_t *
xcb_input_valuator_info_axes (/+const+/ xcb_input_valuator_info_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_valuator_info_axes_length
 ** 
 ** @param /+const+/ xcb_input_valuator_info_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_valuator_info_axes_length (/+const+/ xcb_input_valuator_info_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_axis_info_iterator_t xcb_input_valuator_info_axes_iterator
 ** 
 ** @param /+const+/ xcb_input_valuator_info_t *R
 ** @returns xcb_input_axis_info_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_axis_info_iterator_t
xcb_input_valuator_info_axes_iterator (/+const+/ xcb_input_valuator_info_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_valuator_info_next
 ** 
 ** @param xcb_input_valuator_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_valuator_info_next (xcb_input_valuator_info_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_valuator_info_end
 ** 
 ** @param xcb_input_valuator_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_valuator_info_end (xcb_input_valuator_info_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_input_info_next
 ** 
 ** @param xcb_input_input_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_input_info_next (xcb_input_input_info_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_input_info_end
 ** 
 ** @param xcb_input_input_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_input_info_end (xcb_input_input_info_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** char * xcb_input_device_name_string
 ** 
 ** @param /+const+/ xcb_input_device_name_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
extern(C) char *
xcb_input_device_name_string (/+const+/ xcb_input_device_name_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_device_name_string_length
 ** 
 ** @param /+const+/ xcb_input_device_name_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_device_name_string_length (/+const+/ xcb_input_device_name_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_name_string_end
 ** 
 ** @param /+const+/ xcb_input_device_name_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_device_name_string_end (/+const+/ xcb_input_device_name_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_device_name_next
 ** 
 ** @param xcb_input_device_name_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_name_next (xcb_input_device_name_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_name_end
 ** 
 ** @param xcb_input_device_name_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_device_name_end (xcb_input_device_name_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_input_list_input_devices_cookie_t xcb_input_list_input_devices
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_input_list_input_devices_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_list_input_devices_cookie_t
xcb_input_list_input_devices (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** xcb_input_list_input_devices_cookie_t xcb_input_list_input_devices_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_input_list_input_devices_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_list_input_devices_cookie_t
xcb_input_list_input_devices_unchecked (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** xcb_input_device_info_t * xcb_input_list_input_devices_devices
 ** 
 ** @param /+const+/ xcb_input_list_input_devices_reply_t *R
 ** @returns xcb_input_device_info_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_device_info_t *
xcb_input_list_input_devices_devices (/+const+/ xcb_input_list_input_devices_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_list_input_devices_devices_length
 ** 
 ** @param /+const+/ xcb_input_list_input_devices_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_list_input_devices_devices_length (/+const+/ xcb_input_list_input_devices_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_device_info_iterator_t xcb_input_list_input_devices_devices_iterator
 ** 
 ** @param /+const+/ xcb_input_list_input_devices_reply_t *R
 ** @returns xcb_input_device_info_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_device_info_iterator_t
xcb_input_list_input_devices_devices_iterator (/+const+/ xcb_input_list_input_devices_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_list_input_devices_reply_t * xcb_input_list_input_devices_reply
 ** 
 ** @param xcb_connection_t                       *c
 ** @param xcb_input_list_input_devices_cookie_t   cookie
 ** @param xcb_generic_error_t                   **e
 ** @returns xcb_input_list_input_devices_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_list_input_devices_reply_t *
xcb_input_list_input_devices_reply (xcb_connection_t                       *c  /**< */,
                                    xcb_input_list_input_devices_cookie_t   cookie  /**< */,
                                    xcb_generic_error_t                   **e  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_input_class_info_next
 ** 
 ** @param xcb_input_input_class_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_input_class_info_next (xcb_input_input_class_info_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_input_class_info_end
 ** 
 ** @param xcb_input_input_class_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_input_class_info_end (xcb_input_input_class_info_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_input_open_device_cookie_t xcb_input_open_device
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_open_device_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_open_device_cookie_t
xcb_input_open_device (xcb_connection_t *c  /**< */,
                       ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** xcb_input_open_device_cookie_t xcb_input_open_device_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_open_device_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_open_device_cookie_t
xcb_input_open_device_unchecked (xcb_connection_t *c  /**< */,
                                 ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** xcb_input_input_class_info_t * xcb_input_open_device_class_info
 ** 
 ** @param /+const+/ xcb_input_open_device_reply_t *R
 ** @returns xcb_input_input_class_info_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_input_class_info_t *
xcb_input_open_device_class_info (/+const+/ xcb_input_open_device_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_open_device_class_info_length
 ** 
 ** @param /+const+/ xcb_input_open_device_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_open_device_class_info_length (/+const+/ xcb_input_open_device_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_input_class_info_iterator_t xcb_input_open_device_class_info_iterator
 ** 
 ** @param /+const+/ xcb_input_open_device_reply_t *R
 ** @returns xcb_input_input_class_info_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_input_class_info_iterator_t
xcb_input_open_device_class_info_iterator (/+const+/ xcb_input_open_device_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_open_device_reply_t * xcb_input_open_device_reply
 ** 
 ** @param xcb_connection_t                *c
 ** @param xcb_input_open_device_cookie_t   cookie
 ** @param xcb_generic_error_t            **e
 ** @returns xcb_input_open_device_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_open_device_reply_t *
xcb_input_open_device_reply (xcb_connection_t                *c  /**< */,
                             xcb_input_open_device_cookie_t   cookie  /**< */,
                             xcb_generic_error_t            **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_close_device_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_close_device_checked (xcb_connection_t *c  /**< */,
                                ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_close_device
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_close_device (xcb_connection_t *c  /**< */,
                        ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** xcb_input_set_device_mode_cookie_t xcb_input_set_device_mode
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @param ubyte             mode
 ** @returns xcb_input_set_device_mode_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_set_device_mode_cookie_t
xcb_input_set_device_mode (xcb_connection_t *c  /**< */,
                           ubyte             device_id  /**< */,
                           ubyte             mode  /**< */);


/*****************************************************************************
 **
 ** xcb_input_set_device_mode_cookie_t xcb_input_set_device_mode_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @param ubyte             mode
 ** @returns xcb_input_set_device_mode_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_set_device_mode_cookie_t
xcb_input_set_device_mode_unchecked (xcb_connection_t *c  /**< */,
                                     ubyte             device_id  /**< */,
                                     ubyte             mode  /**< */);


/*****************************************************************************
 **
 ** xcb_input_set_device_mode_reply_t * xcb_input_set_device_mode_reply
 ** 
 ** @param xcb_connection_t                    *c
 ** @param xcb_input_set_device_mode_cookie_t   cookie
 ** @param xcb_generic_error_t                **e
 ** @returns xcb_input_set_device_mode_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_set_device_mode_reply_t *
xcb_input_set_device_mode_reply (xcb_connection_t                    *c  /**< */,
                                 xcb_input_set_device_mode_cookie_t   cookie  /**< */,
                                 xcb_generic_error_t                **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_select_extension_event_checked
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_window_t                       window
 ** @param ushort                             num_classes
 ** @param /+const+/ xcb_input_event_class_t *classes
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_select_extension_event_checked (xcb_connection_t                  *c  /**< */,
                                          xcb_window_t                       window  /**< */,
                                          ushort                             num_classes  /**< */,
                                          /+const+/ xcb_input_event_class_t *classes  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_select_extension_event
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_window_t                       window
 ** @param ushort                             num_classes
 ** @param /+const+/ xcb_input_event_class_t *classes
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_select_extension_event (xcb_connection_t                  *c  /**< */,
                                  xcb_window_t                       window  /**< */,
                                  ushort                             num_classes  /**< */,
                                  /+const+/ xcb_input_event_class_t *classes  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_selected_extension_events_cookie_t xcb_input_get_selected_extension_events
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_input_get_selected_extension_events_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_selected_extension_events_cookie_t
xcb_input_get_selected_extension_events (xcb_connection_t *c  /**< */,
                                         xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_selected_extension_events_cookie_t xcb_input_get_selected_extension_events_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_input_get_selected_extension_events_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_selected_extension_events_cookie_t
xcb_input_get_selected_extension_events_unchecked (xcb_connection_t *c  /**< */,
                                                   xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_input_event_class_t * xcb_input_get_selected_extension_events_this_classes
 ** 
 ** @param /+const+/ xcb_input_get_selected_extension_events_reply_t *R
 ** @returns xcb_input_event_class_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_event_class_t *
xcb_input_get_selected_extension_events_this_classes (/+const+/ xcb_input_get_selected_extension_events_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_get_selected_extension_events_this_classes_length
 ** 
 ** @param /+const+/ xcb_input_get_selected_extension_events_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_get_selected_extension_events_this_classes_length (/+const+/ xcb_input_get_selected_extension_events_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_event_class_iterator_t xcb_input_get_selected_extension_events_this_classes_iterator
 ** 
 ** @param /+const+/ xcb_input_get_selected_extension_events_reply_t *R
 ** @returns xcb_input_event_class_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_event_class_iterator_t
xcb_input_get_selected_extension_events_this_classes_iterator (/+const+/ xcb_input_get_selected_extension_events_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_event_class_t * xcb_input_get_selected_extension_events_all_classes
 ** 
 ** @param /+const+/ xcb_input_get_selected_extension_events_reply_t *R
 ** @returns xcb_input_event_class_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_event_class_t *
xcb_input_get_selected_extension_events_all_classes (/+const+/ xcb_input_get_selected_extension_events_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_get_selected_extension_events_all_classes_length
 ** 
 ** @param /+const+/ xcb_input_get_selected_extension_events_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_get_selected_extension_events_all_classes_length (/+const+/ xcb_input_get_selected_extension_events_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_event_class_iterator_t xcb_input_get_selected_extension_events_all_classes_iterator
 ** 
 ** @param /+const+/ xcb_input_get_selected_extension_events_reply_t *R
 ** @returns xcb_input_event_class_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_event_class_iterator_t
xcb_input_get_selected_extension_events_all_classes_iterator (/+const+/ xcb_input_get_selected_extension_events_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_selected_extension_events_reply_t * xcb_input_get_selected_extension_events_reply
 ** 
 ** @param xcb_connection_t                                  *c
 ** @param xcb_input_get_selected_extension_events_cookie_t   cookie
 ** @param xcb_generic_error_t                              **e
 ** @returns xcb_input_get_selected_extension_events_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_selected_extension_events_reply_t *
xcb_input_get_selected_extension_events_reply (xcb_connection_t                                  *c  /**< */,
                                               xcb_input_get_selected_extension_events_cookie_t   cookie  /**< */,
                                               xcb_generic_error_t                              **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_change_device_dont_propagate_list_checked
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_window_t                       window
 ** @param ushort                             num_classes
 ** @param ubyte                              mode
 ** @param /+const+/ xcb_input_event_class_t *classes
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_change_device_dont_propagate_list_checked (xcb_connection_t                  *c  /**< */,
                                                     xcb_window_t                       window  /**< */,
                                                     ushort                             num_classes  /**< */,
                                                     ubyte                              mode  /**< */,
                                                     /+const+/ xcb_input_event_class_t *classes  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_change_device_dont_propagate_list
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_window_t                       window
 ** @param ushort                             num_classes
 ** @param ubyte                              mode
 ** @param /+const+/ xcb_input_event_class_t *classes
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_change_device_dont_propagate_list (xcb_connection_t                  *c  /**< */,
                                             xcb_window_t                       window  /**< */,
                                             ushort                             num_classes  /**< */,
                                             ubyte                              mode  /**< */,
                                             /+const+/ xcb_input_event_class_t *classes  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_device_dont_propagate_list_cookie_t xcb_input_get_device_dont_propagate_list
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_input_get_device_dont_propagate_list_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_dont_propagate_list_cookie_t
xcb_input_get_device_dont_propagate_list (xcb_connection_t *c  /**< */,
                                          xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_device_dont_propagate_list_cookie_t xcb_input_get_device_dont_propagate_list_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_input_get_device_dont_propagate_list_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_dont_propagate_list_cookie_t
xcb_input_get_device_dont_propagate_list_unchecked (xcb_connection_t *c  /**< */,
                                                    xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_input_event_class_t * xcb_input_get_device_dont_propagate_list_classes
 ** 
 ** @param /+const+/ xcb_input_get_device_dont_propagate_list_reply_t *R
 ** @returns xcb_input_event_class_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_event_class_t *
xcb_input_get_device_dont_propagate_list_classes (/+const+/ xcb_input_get_device_dont_propagate_list_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_get_device_dont_propagate_list_classes_length
 ** 
 ** @param /+const+/ xcb_input_get_device_dont_propagate_list_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_get_device_dont_propagate_list_classes_length (/+const+/ xcb_input_get_device_dont_propagate_list_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_event_class_iterator_t xcb_input_get_device_dont_propagate_list_classes_iterator
 ** 
 ** @param /+const+/ xcb_input_get_device_dont_propagate_list_reply_t *R
 ** @returns xcb_input_event_class_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_event_class_iterator_t
xcb_input_get_device_dont_propagate_list_classes_iterator (/+const+/ xcb_input_get_device_dont_propagate_list_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_device_dont_propagate_list_reply_t * xcb_input_get_device_dont_propagate_list_reply
 ** 
 ** @param xcb_connection_t                                   *c
 ** @param xcb_input_get_device_dont_propagate_list_cookie_t   cookie
 ** @param xcb_generic_error_t                               **e
 ** @returns xcb_input_get_device_dont_propagate_list_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_dont_propagate_list_reply_t *
xcb_input_get_device_dont_propagate_list_reply (xcb_connection_t                                   *c  /**< */,
                                                xcb_input_get_device_dont_propagate_list_cookie_t   cookie  /**< */,
                                                xcb_generic_error_t                               **e  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_device_time_coord_next
 ** 
 ** @param xcb_input_device_time_coord_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_time_coord_next (xcb_input_device_time_coord_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_time_coord_end
 ** 
 ** @param xcb_input_device_time_coord_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_device_time_coord_end (xcb_input_device_time_coord_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_device_motion_events_cookie_t xcb_input_get_device_motion_events
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_timestamp_t   start
 ** @param xcb_timestamp_t   stop
 ** @param ubyte             device_id
 ** @returns xcb_input_get_device_motion_events_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_motion_events_cookie_t
xcb_input_get_device_motion_events (xcb_connection_t *c  /**< */,
                                    xcb_timestamp_t   start  /**< */,
                                    xcb_timestamp_t   stop  /**< */,
                                    ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_device_motion_events_cookie_t xcb_input_get_device_motion_events_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_timestamp_t   start
 ** @param xcb_timestamp_t   stop
 ** @param ubyte             device_id
 ** @returns xcb_input_get_device_motion_events_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_motion_events_cookie_t
xcb_input_get_device_motion_events_unchecked (xcb_connection_t *c  /**< */,
                                              xcb_timestamp_t   start  /**< */,
                                              xcb_timestamp_t   stop  /**< */,
                                              ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_device_motion_events_reply_t * xcb_input_get_device_motion_events_reply
 ** 
 ** @param xcb_connection_t                             *c
 ** @param xcb_input_get_device_motion_events_cookie_t   cookie
 ** @param xcb_generic_error_t                         **e
 ** @returns xcb_input_get_device_motion_events_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_motion_events_reply_t *
xcb_input_get_device_motion_events_reply (xcb_connection_t                             *c  /**< */,
                                          xcb_input_get_device_motion_events_cookie_t   cookie  /**< */,
                                          xcb_generic_error_t                         **e  /**< */);


/*****************************************************************************
 **
 ** xcb_input_change_keyboard_device_cookie_t xcb_input_change_keyboard_device
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_change_keyboard_device_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_change_keyboard_device_cookie_t
xcb_input_change_keyboard_device (xcb_connection_t *c  /**< */,
                                  ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** xcb_input_change_keyboard_device_cookie_t xcb_input_change_keyboard_device_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_change_keyboard_device_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_change_keyboard_device_cookie_t
xcb_input_change_keyboard_device_unchecked (xcb_connection_t *c  /**< */,
                                            ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** xcb_input_change_keyboard_device_reply_t * xcb_input_change_keyboard_device_reply
 ** 
 ** @param xcb_connection_t                           *c
 ** @param xcb_input_change_keyboard_device_cookie_t   cookie
 ** @param xcb_generic_error_t                       **e
 ** @returns xcb_input_change_keyboard_device_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_change_keyboard_device_reply_t *
xcb_input_change_keyboard_device_reply (xcb_connection_t                           *c  /**< */,
                                        xcb_input_change_keyboard_device_cookie_t   cookie  /**< */,
                                        xcb_generic_error_t                       **e  /**< */);


/*****************************************************************************
 **
 ** xcb_input_change_pointer_device_cookie_t xcb_input_change_pointer_device
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             x_axis
 ** @param ubyte             y_axis
 ** @param ubyte             device_id
 ** @returns xcb_input_change_pointer_device_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_change_pointer_device_cookie_t
xcb_input_change_pointer_device (xcb_connection_t *c  /**< */,
                                 ubyte             x_axis  /**< */,
                                 ubyte             y_axis  /**< */,
                                 ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** xcb_input_change_pointer_device_cookie_t xcb_input_change_pointer_device_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             x_axis
 ** @param ubyte             y_axis
 ** @param ubyte             device_id
 ** @returns xcb_input_change_pointer_device_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_change_pointer_device_cookie_t
xcb_input_change_pointer_device_unchecked (xcb_connection_t *c  /**< */,
                                           ubyte             x_axis  /**< */,
                                           ubyte             y_axis  /**< */,
                                           ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** xcb_input_change_pointer_device_reply_t * xcb_input_change_pointer_device_reply
 ** 
 ** @param xcb_connection_t                          *c
 ** @param xcb_input_change_pointer_device_cookie_t   cookie
 ** @param xcb_generic_error_t                      **e
 ** @returns xcb_input_change_pointer_device_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_change_pointer_device_reply_t *
xcb_input_change_pointer_device_reply (xcb_connection_t                          *c  /**< */,
                                       xcb_input_change_pointer_device_cookie_t   cookie  /**< */,
                                       xcb_generic_error_t                      **e  /**< */);


/*****************************************************************************
 **
 ** xcb_input_grab_device_cookie_t xcb_input_grab_device
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_window_t                       grab_window
 ** @param xcb_timestamp_t                    time
 ** @param ushort                             num_classes
 ** @param ubyte                              this_device_mode
 ** @param ubyte                              other_device_mode
 ** @param bool                               owner_events
 ** @param ubyte                              device_id
 ** @param /+const+/ xcb_input_event_class_t *classes
 ** @returns xcb_input_grab_device_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_grab_device_cookie_t
xcb_input_grab_device (xcb_connection_t                  *c  /**< */,
                       xcb_window_t                       grab_window  /**< */,
                       xcb_timestamp_t                    time  /**< */,
                       ushort                             num_classes  /**< */,
                       ubyte                              this_device_mode  /**< */,
                       ubyte                              other_device_mode  /**< */,
                       bool                               owner_events  /**< */,
                       ubyte                              device_id  /**< */,
                       /+const+/ xcb_input_event_class_t *classes  /**< */);


/*****************************************************************************
 **
 ** xcb_input_grab_device_cookie_t xcb_input_grab_device_unchecked
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_window_t                       grab_window
 ** @param xcb_timestamp_t                    time
 ** @param ushort                             num_classes
 ** @param ubyte                              this_device_mode
 ** @param ubyte                              other_device_mode
 ** @param bool                               owner_events
 ** @param ubyte                              device_id
 ** @param /+const+/ xcb_input_event_class_t *classes
 ** @returns xcb_input_grab_device_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_grab_device_cookie_t
xcb_input_grab_device_unchecked (xcb_connection_t                  *c  /**< */,
                                 xcb_window_t                       grab_window  /**< */,
                                 xcb_timestamp_t                    time  /**< */,
                                 ushort                             num_classes  /**< */,
                                 ubyte                              this_device_mode  /**< */,
                                 ubyte                              other_device_mode  /**< */,
                                 bool                               owner_events  /**< */,
                                 ubyte                              device_id  /**< */,
                                 /+const+/ xcb_input_event_class_t *classes  /**< */);


/*****************************************************************************
 **
 ** xcb_input_grab_device_reply_t * xcb_input_grab_device_reply
 ** 
 ** @param xcb_connection_t                *c
 ** @param xcb_input_grab_device_cookie_t   cookie
 ** @param xcb_generic_error_t            **e
 ** @returns xcb_input_grab_device_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_grab_device_reply_t *
xcb_input_grab_device_reply (xcb_connection_t                *c  /**< */,
                             xcb_input_grab_device_cookie_t   cookie  /**< */,
                             xcb_generic_error_t            **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_ungrab_device_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_timestamp_t   time
 ** @param ubyte             device_id
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_ungrab_device_checked (xcb_connection_t *c  /**< */,
                                 xcb_timestamp_t   time  /**< */,
                                 ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_ungrab_device
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_timestamp_t   time
 ** @param ubyte             device_id
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_ungrab_device (xcb_connection_t *c  /**< */,
                         xcb_timestamp_t   time  /**< */,
                         ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_grab_device_key_checked
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_window_t                       grab_window
 ** @param ushort                             num_classes
 ** @param ushort                             modifiers
 ** @param ubyte                              modifier_device
 ** @param ubyte                              grabbed_device
 ** @param ubyte                              key
 ** @param ubyte                              this_device_mode
 ** @param ubyte                              other_device_mode
 ** @param bool                               owner_events
 ** @param /+const+/ xcb_input_event_class_t *classes
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_grab_device_key_checked (xcb_connection_t                  *c  /**< */,
                                   xcb_window_t                       grab_window  /**< */,
                                   ushort                             num_classes  /**< */,
                                   ushort                             modifiers  /**< */,
                                   ubyte                              modifier_device  /**< */,
                                   ubyte                              grabbed_device  /**< */,
                                   ubyte                              key  /**< */,
                                   ubyte                              this_device_mode  /**< */,
                                   ubyte                              other_device_mode  /**< */,
                                   bool                               owner_events  /**< */,
                                   /+const+/ xcb_input_event_class_t *classes  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_grab_device_key
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_window_t                       grab_window
 ** @param ushort                             num_classes
 ** @param ushort                             modifiers
 ** @param ubyte                              modifier_device
 ** @param ubyte                              grabbed_device
 ** @param ubyte                              key
 ** @param ubyte                              this_device_mode
 ** @param ubyte                              other_device_mode
 ** @param bool                               owner_events
 ** @param /+const+/ xcb_input_event_class_t *classes
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_grab_device_key (xcb_connection_t                  *c  /**< */,
                           xcb_window_t                       grab_window  /**< */,
                           ushort                             num_classes  /**< */,
                           ushort                             modifiers  /**< */,
                           ubyte                              modifier_device  /**< */,
                           ubyte                              grabbed_device  /**< */,
                           ubyte                              key  /**< */,
                           ubyte                              this_device_mode  /**< */,
                           ubyte                              other_device_mode  /**< */,
                           bool                               owner_events  /**< */,
                           /+const+/ xcb_input_event_class_t *classes  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_ungrab_device_key_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      grabWindow
 ** @param ushort            modifiers
 ** @param ubyte             modifier_device
 ** @param ubyte             key
 ** @param ubyte             grabbed_device
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_ungrab_device_key_checked (xcb_connection_t *c  /**< */,
                                     xcb_window_t      grabWindow  /**< */,
                                     ushort            modifiers  /**< */,
                                     ubyte             modifier_device  /**< */,
                                     ubyte             key  /**< */,
                                     ubyte             grabbed_device  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_ungrab_device_key
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      grabWindow
 ** @param ushort            modifiers
 ** @param ubyte             modifier_device
 ** @param ubyte             key
 ** @param ubyte             grabbed_device
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_ungrab_device_key (xcb_connection_t *c  /**< */,
                             xcb_window_t      grabWindow  /**< */,
                             ushort            modifiers  /**< */,
                             ubyte             modifier_device  /**< */,
                             ubyte             key  /**< */,
                             ubyte             grabbed_device  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_grab_device_button_checked
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_window_t                       grab_window
 ** @param ubyte                              grabbed_device
 ** @param ubyte                              modifier_device
 ** @param ushort                             num_classes
 ** @param ushort                             modifiers
 ** @param ubyte                              this_device_mode
 ** @param ubyte                              other_device_mode
 ** @param ubyte                              button
 ** @param ubyte                              owner_events
 ** @param /+const+/ xcb_input_event_class_t *classes
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_grab_device_button_checked (xcb_connection_t                  *c  /**< */,
                                      xcb_window_t                       grab_window  /**< */,
                                      ubyte                              grabbed_device  /**< */,
                                      ubyte                              modifier_device  /**< */,
                                      ushort                             num_classes  /**< */,
                                      ushort                             modifiers  /**< */,
                                      ubyte                              this_device_mode  /**< */,
                                      ubyte                              other_device_mode  /**< */,
                                      ubyte                              button  /**< */,
                                      ubyte                              owner_events  /**< */,
                                      /+const+/ xcb_input_event_class_t *classes  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_grab_device_button
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_window_t                       grab_window
 ** @param ubyte                              grabbed_device
 ** @param ubyte                              modifier_device
 ** @param ushort                             num_classes
 ** @param ushort                             modifiers
 ** @param ubyte                              this_device_mode
 ** @param ubyte                              other_device_mode
 ** @param ubyte                              button
 ** @param ubyte                              owner_events
 ** @param /+const+/ xcb_input_event_class_t *classes
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_grab_device_button (xcb_connection_t                  *c  /**< */,
                              xcb_window_t                       grab_window  /**< */,
                              ubyte                              grabbed_device  /**< */,
                              ubyte                              modifier_device  /**< */,
                              ushort                             num_classes  /**< */,
                              ushort                             modifiers  /**< */,
                              ubyte                              this_device_mode  /**< */,
                              ubyte                              other_device_mode  /**< */,
                              ubyte                              button  /**< */,
                              ubyte                              owner_events  /**< */,
                              /+const+/ xcb_input_event_class_t *classes  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_ungrab_device_button_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      grab_window
 ** @param ushort            modifiers
 ** @param ubyte             modifier_device
 ** @param ubyte             button
 ** @param ubyte             grabbed_device
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_ungrab_device_button_checked (xcb_connection_t *c  /**< */,
                                        xcb_window_t      grab_window  /**< */,
                                        ushort            modifiers  /**< */,
                                        ubyte             modifier_device  /**< */,
                                        ubyte             button  /**< */,
                                        ubyte             grabbed_device  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_ungrab_device_button
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      grab_window
 ** @param ushort            modifiers
 ** @param ubyte             modifier_device
 ** @param ubyte             button
 ** @param ubyte             grabbed_device
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_ungrab_device_button (xcb_connection_t *c  /**< */,
                                xcb_window_t      grab_window  /**< */,
                                ushort            modifiers  /**< */,
                                ubyte             modifier_device  /**< */,
                                ubyte             button  /**< */,
                                ubyte             grabbed_device  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_allow_device_events_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_timestamp_t   time
 ** @param ubyte             mode
 ** @param ubyte             device_id
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_allow_device_events_checked (xcb_connection_t *c  /**< */,
                                       xcb_timestamp_t   time  /**< */,
                                       ubyte             mode  /**< */,
                                       ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_allow_device_events
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_timestamp_t   time
 ** @param ubyte             mode
 ** @param ubyte             device_id
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_allow_device_events (xcb_connection_t *c  /**< */,
                               xcb_timestamp_t   time  /**< */,
                               ubyte             mode  /**< */,
                               ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_device_focus_cookie_t xcb_input_get_device_focus
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_get_device_focus_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_focus_cookie_t
xcb_input_get_device_focus (xcb_connection_t *c  /**< */,
                            ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_device_focus_cookie_t xcb_input_get_device_focus_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_get_device_focus_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_focus_cookie_t
xcb_input_get_device_focus_unchecked (xcb_connection_t *c  /**< */,
                                      ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_device_focus_reply_t * xcb_input_get_device_focus_reply
 ** 
 ** @param xcb_connection_t                     *c
 ** @param xcb_input_get_device_focus_cookie_t   cookie
 ** @param xcb_generic_error_t                 **e
 ** @returns xcb_input_get_device_focus_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_focus_reply_t *
xcb_input_get_device_focus_reply (xcb_connection_t                     *c  /**< */,
                                  xcb_input_get_device_focus_cookie_t   cookie  /**< */,
                                  xcb_generic_error_t                 **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_set_device_focus_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      focus
 ** @param xcb_timestamp_t   time
 ** @param ubyte             revert_to
 ** @param ubyte             device_id
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_set_device_focus_checked (xcb_connection_t *c  /**< */,
                                    xcb_window_t      focus  /**< */,
                                    xcb_timestamp_t   time  /**< */,
                                    ubyte             revert_to  /**< */,
                                    ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_set_device_focus
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      focus
 ** @param xcb_timestamp_t   time
 ** @param ubyte             revert_to
 ** @param ubyte             device_id
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_set_device_focus (xcb_connection_t *c  /**< */,
                            xcb_window_t      focus  /**< */,
                            xcb_timestamp_t   time  /**< */,
                            ubyte             revert_to  /**< */,
                            ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_kbd_feedback_state_next
 ** 
 ** @param xcb_input_kbd_feedback_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_kbd_feedback_state_next (xcb_input_kbd_feedback_state_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_kbd_feedback_state_end
 ** 
 ** @param xcb_input_kbd_feedback_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_kbd_feedback_state_end (xcb_input_kbd_feedback_state_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_ptr_feedback_state_next
 ** 
 ** @param xcb_input_ptr_feedback_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_ptr_feedback_state_next (xcb_input_ptr_feedback_state_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_ptr_feedback_state_end
 ** 
 ** @param xcb_input_ptr_feedback_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_ptr_feedback_state_end (xcb_input_ptr_feedback_state_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_integer_feedback_state_next
 ** 
 ** @param xcb_input_integer_feedback_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_integer_feedback_state_next (xcb_input_integer_feedback_state_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_integer_feedback_state_end
 ** 
 ** @param xcb_input_integer_feedback_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_integer_feedback_state_end (xcb_input_integer_feedback_state_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_keysym_t * xcb_input_string_feedback_state_keysyms
 ** 
 ** @param /+const+/ xcb_input_string_feedback_state_t *R
 ** @returns xcb_keysym_t *
 **
 *****************************************************************************/
 
extern(C) xcb_keysym_t *
xcb_input_string_feedback_state_keysyms (/+const+/ xcb_input_string_feedback_state_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_string_feedback_state_keysyms_length
 ** 
 ** @param /+const+/ xcb_input_string_feedback_state_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_string_feedback_state_keysyms_length (/+const+/ xcb_input_string_feedback_state_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_keysym_iterator_t xcb_input_string_feedback_state_keysyms_iterator
 ** 
 ** @param /+const+/ xcb_input_string_feedback_state_t *R
 ** @returns xcb_keysym_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_keysym_iterator_t
xcb_input_string_feedback_state_keysyms_iterator (/+const+/ xcb_input_string_feedback_state_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_string_feedback_state_next
 ** 
 ** @param xcb_input_string_feedback_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_string_feedback_state_next (xcb_input_string_feedback_state_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_string_feedback_state_end
 ** 
 ** @param xcb_input_string_feedback_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_string_feedback_state_end (xcb_input_string_feedback_state_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_bell_feedback_state_next
 ** 
 ** @param xcb_input_bell_feedback_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_bell_feedback_state_next (xcb_input_bell_feedback_state_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_bell_feedback_state_end
 ** 
 ** @param xcb_input_bell_feedback_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_bell_feedback_state_end (xcb_input_bell_feedback_state_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_led_feedback_state_next
 ** 
 ** @param xcb_input_led_feedback_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_led_feedback_state_next (xcb_input_led_feedback_state_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_led_feedback_state_end
 ** 
 ** @param xcb_input_led_feedback_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_led_feedback_state_end (xcb_input_led_feedback_state_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_input_feedback_state_uninterpreted_data
 ** 
 ** @param /+const+/ xcb_input_feedback_state_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
extern(C) ubyte *
xcb_input_feedback_state_uninterpreted_data (/+const+/ xcb_input_feedback_state_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_feedback_state_uninterpreted_data_length
 ** 
 ** @param /+const+/ xcb_input_feedback_state_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_feedback_state_uninterpreted_data_length (/+const+/ xcb_input_feedback_state_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_feedback_state_uninterpreted_data_end
 ** 
 ** @param /+const+/ xcb_input_feedback_state_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_feedback_state_uninterpreted_data_end (/+const+/ xcb_input_feedback_state_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_feedback_state_next
 ** 
 ** @param xcb_input_feedback_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_feedback_state_next (xcb_input_feedback_state_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_feedback_state_end
 ** 
 ** @param xcb_input_feedback_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_feedback_state_end (xcb_input_feedback_state_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_feedback_control_cookie_t xcb_input_get_feedback_control
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_get_feedback_control_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_feedback_control_cookie_t
xcb_input_get_feedback_control (xcb_connection_t *c  /**< */,
                                ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_feedback_control_cookie_t xcb_input_get_feedback_control_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_get_feedback_control_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_feedback_control_cookie_t
xcb_input_get_feedback_control_unchecked (xcb_connection_t *c  /**< */,
                                          ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_get_feedback_control_feedbacks_length
 ** 
 ** @param /+const+/ xcb_input_get_feedback_control_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_get_feedback_control_feedbacks_length (/+const+/ xcb_input_get_feedback_control_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_feedback_state_iterator_t xcb_input_get_feedback_control_feedbacks_iterator
 ** 
 ** @param /+const+/ xcb_input_get_feedback_control_reply_t *R
 ** @returns xcb_input_feedback_state_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_feedback_state_iterator_t
xcb_input_get_feedback_control_feedbacks_iterator (/+const+/ xcb_input_get_feedback_control_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_feedback_control_reply_t * xcb_input_get_feedback_control_reply
 ** 
 ** @param xcb_connection_t                         *c
 ** @param xcb_input_get_feedback_control_cookie_t   cookie
 ** @param xcb_generic_error_t                     **e
 ** @returns xcb_input_get_feedback_control_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_feedback_control_reply_t *
xcb_input_get_feedback_control_reply (xcb_connection_t                         *c  /**< */,
                                      xcb_input_get_feedback_control_cookie_t   cookie  /**< */,
                                      xcb_generic_error_t                     **e  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_kbd_feedback_ctl_next
 ** 
 ** @param xcb_input_kbd_feedback_ctl_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_kbd_feedback_ctl_next (xcb_input_kbd_feedback_ctl_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_kbd_feedback_ctl_end
 ** 
 ** @param xcb_input_kbd_feedback_ctl_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_kbd_feedback_ctl_end (xcb_input_kbd_feedback_ctl_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_ptr_feedback_ctl_next
 ** 
 ** @param xcb_input_ptr_feedback_ctl_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_ptr_feedback_ctl_next (xcb_input_ptr_feedback_ctl_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_ptr_feedback_ctl_end
 ** 
 ** @param xcb_input_ptr_feedback_ctl_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_ptr_feedback_ctl_end (xcb_input_ptr_feedback_ctl_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_integer_feedback_ctl_next
 ** 
 ** @param xcb_input_integer_feedback_ctl_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_integer_feedback_ctl_next (xcb_input_integer_feedback_ctl_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_integer_feedback_ctl_end
 ** 
 ** @param xcb_input_integer_feedback_ctl_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_integer_feedback_ctl_end (xcb_input_integer_feedback_ctl_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_keysym_t * xcb_input_string_feedback_ctl_keysyms
 ** 
 ** @param /+const+/ xcb_input_string_feedback_ctl_t *R
 ** @returns xcb_keysym_t *
 **
 *****************************************************************************/
 
extern(C) xcb_keysym_t *
xcb_input_string_feedback_ctl_keysyms (/+const+/ xcb_input_string_feedback_ctl_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_string_feedback_ctl_keysyms_length
 ** 
 ** @param /+const+/ xcb_input_string_feedback_ctl_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_string_feedback_ctl_keysyms_length (/+const+/ xcb_input_string_feedback_ctl_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_keysym_iterator_t xcb_input_string_feedback_ctl_keysyms_iterator
 ** 
 ** @param /+const+/ xcb_input_string_feedback_ctl_t *R
 ** @returns xcb_keysym_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_keysym_iterator_t
xcb_input_string_feedback_ctl_keysyms_iterator (/+const+/ xcb_input_string_feedback_ctl_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_string_feedback_ctl_next
 ** 
 ** @param xcb_input_string_feedback_ctl_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_string_feedback_ctl_next (xcb_input_string_feedback_ctl_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_string_feedback_ctl_end
 ** 
 ** @param xcb_input_string_feedback_ctl_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_string_feedback_ctl_end (xcb_input_string_feedback_ctl_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_bell_feedback_ctl_next
 ** 
 ** @param xcb_input_bell_feedback_ctl_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_bell_feedback_ctl_next (xcb_input_bell_feedback_ctl_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_bell_feedback_ctl_end
 ** 
 ** @param xcb_input_bell_feedback_ctl_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_bell_feedback_ctl_end (xcb_input_bell_feedback_ctl_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_led_feedback_ctl_next
 ** 
 ** @param xcb_input_led_feedback_ctl_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_led_feedback_ctl_next (xcb_input_led_feedback_ctl_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_led_feedback_ctl_end
 ** 
 ** @param xcb_input_led_feedback_ctl_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_led_feedback_ctl_end (xcb_input_led_feedback_ctl_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_input_feedback_ctl_uninterpreted_data
 ** 
 ** @param /+const+/ xcb_input_feedback_ctl_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
extern(C) ubyte *
xcb_input_feedback_ctl_uninterpreted_data (/+const+/ xcb_input_feedback_ctl_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_feedback_ctl_uninterpreted_data_length
 ** 
 ** @param /+const+/ xcb_input_feedback_ctl_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_feedback_ctl_uninterpreted_data_length (/+const+/ xcb_input_feedback_ctl_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_feedback_ctl_uninterpreted_data_end
 ** 
 ** @param /+const+/ xcb_input_feedback_ctl_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_feedback_ctl_uninterpreted_data_end (/+const+/ xcb_input_feedback_ctl_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_feedback_ctl_next
 ** 
 ** @param xcb_input_feedback_ctl_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_feedback_ctl_next (xcb_input_feedback_ctl_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_feedback_ctl_end
 ** 
 ** @param xcb_input_feedback_ctl_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_feedback_ctl_end (xcb_input_feedback_ctl_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_change_feedback_control_checked
 ** 
 ** @param xcb_connection_t         *c
 ** @param uint                      mask
 ** @param ubyte                     device_id
 ** @param ubyte                     feedback_id
 ** @param xcb_input_feedback_ctl_t  feedback
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_change_feedback_control_checked (xcb_connection_t         *c  /**< */,
                                           uint                      mask  /**< */,
                                           ubyte                     device_id  /**< */,
                                           ubyte                     feedback_id  /**< */,
                                           xcb_input_feedback_ctl_t  feedback  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_change_feedback_control
 ** 
 ** @param xcb_connection_t         *c
 ** @param uint                      mask
 ** @param ubyte                     device_id
 ** @param ubyte                     feedback_id
 ** @param xcb_input_feedback_ctl_t  feedback
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_change_feedback_control (xcb_connection_t         *c  /**< */,
                                   uint                      mask  /**< */,
                                   ubyte                     device_id  /**< */,
                                   ubyte                     feedback_id  /**< */,
                                   xcb_input_feedback_ctl_t  feedback  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_device_key_mapping_cookie_t xcb_input_get_device_key_mapping
 ** 
 ** @param xcb_connection_t     *c
 ** @param ubyte                 device_id
 ** @param xcb_input_key_code_t  first_keycode
 ** @param ubyte                 count
 ** @returns xcb_input_get_device_key_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_key_mapping_cookie_t
xcb_input_get_device_key_mapping (xcb_connection_t     *c  /**< */,
                                  ubyte                 device_id  /**< */,
                                  xcb_input_key_code_t  first_keycode  /**< */,
                                  ubyte                 count  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_device_key_mapping_cookie_t xcb_input_get_device_key_mapping_unchecked
 ** 
 ** @param xcb_connection_t     *c
 ** @param ubyte                 device_id
 ** @param xcb_input_key_code_t  first_keycode
 ** @param ubyte                 count
 ** @returns xcb_input_get_device_key_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_key_mapping_cookie_t
xcb_input_get_device_key_mapping_unchecked (xcb_connection_t     *c  /**< */,
                                            ubyte                 device_id  /**< */,
                                            xcb_input_key_code_t  first_keycode  /**< */,
                                            ubyte                 count  /**< */);


/*****************************************************************************
 **
 ** xcb_keysym_t * xcb_input_get_device_key_mapping_keysyms
 ** 
 ** @param /+const+/ xcb_input_get_device_key_mapping_reply_t *R
 ** @returns xcb_keysym_t *
 **
 *****************************************************************************/
 
extern(C) xcb_keysym_t *
xcb_input_get_device_key_mapping_keysyms (/+const+/ xcb_input_get_device_key_mapping_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_get_device_key_mapping_keysyms_length
 ** 
 ** @param /+const+/ xcb_input_get_device_key_mapping_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_get_device_key_mapping_keysyms_length (/+const+/ xcb_input_get_device_key_mapping_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_keysym_iterator_t xcb_input_get_device_key_mapping_keysyms_iterator
 ** 
 ** @param /+const+/ xcb_input_get_device_key_mapping_reply_t *R
 ** @returns xcb_keysym_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_keysym_iterator_t
xcb_input_get_device_key_mapping_keysyms_iterator (/+const+/ xcb_input_get_device_key_mapping_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_device_key_mapping_reply_t * xcb_input_get_device_key_mapping_reply
 ** 
 ** @param xcb_connection_t                           *c
 ** @param xcb_input_get_device_key_mapping_cookie_t   cookie
 ** @param xcb_generic_error_t                       **e
 ** @returns xcb_input_get_device_key_mapping_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_key_mapping_reply_t *
xcb_input_get_device_key_mapping_reply (xcb_connection_t                           *c  /**< */,
                                        xcb_input_get_device_key_mapping_cookie_t   cookie  /**< */,
                                        xcb_generic_error_t                       **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_change_device_key_mapping_checked
 ** 
 ** @param xcb_connection_t       *c
 ** @param ubyte                   device_id
 ** @param xcb_input_key_code_t    first_keycode
 ** @param ubyte                   keysyms_per_keycode
 ** @param ubyte                   keycode_count
 ** @param /+const+/ xcb_keysym_t *keysyms
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_change_device_key_mapping_checked (xcb_connection_t       *c  /**< */,
                                             ubyte                   device_id  /**< */,
                                             xcb_input_key_code_t    first_keycode  /**< */,
                                             ubyte                   keysyms_per_keycode  /**< */,
                                             ubyte                   keycode_count  /**< */,
                                             /+const+/ xcb_keysym_t *keysyms  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_change_device_key_mapping
 ** 
 ** @param xcb_connection_t       *c
 ** @param ubyte                   device_id
 ** @param xcb_input_key_code_t    first_keycode
 ** @param ubyte                   keysyms_per_keycode
 ** @param ubyte                   keycode_count
 ** @param /+const+/ xcb_keysym_t *keysyms
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_change_device_key_mapping (xcb_connection_t       *c  /**< */,
                                     ubyte                   device_id  /**< */,
                                     xcb_input_key_code_t    first_keycode  /**< */,
                                     ubyte                   keysyms_per_keycode  /**< */,
                                     ubyte                   keycode_count  /**< */,
                                     /+const+/ xcb_keysym_t *keysyms  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_device_modifier_mapping_cookie_t xcb_input_get_device_modifier_mapping
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_get_device_modifier_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_modifier_mapping_cookie_t
xcb_input_get_device_modifier_mapping (xcb_connection_t *c  /**< */,
                                       ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_device_modifier_mapping_cookie_t xcb_input_get_device_modifier_mapping_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_get_device_modifier_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_modifier_mapping_cookie_t
xcb_input_get_device_modifier_mapping_unchecked (xcb_connection_t *c  /**< */,
                                                 ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_input_get_device_modifier_mapping_keymaps
 ** 
 ** @param /+const+/ xcb_input_get_device_modifier_mapping_reply_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
extern(C) ubyte *
xcb_input_get_device_modifier_mapping_keymaps (/+const+/ xcb_input_get_device_modifier_mapping_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_get_device_modifier_mapping_keymaps_length
 ** 
 ** @param /+const+/ xcb_input_get_device_modifier_mapping_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_get_device_modifier_mapping_keymaps_length (/+const+/ xcb_input_get_device_modifier_mapping_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_get_device_modifier_mapping_keymaps_end
 ** 
 ** @param /+const+/ xcb_input_get_device_modifier_mapping_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_get_device_modifier_mapping_keymaps_end (/+const+/ xcb_input_get_device_modifier_mapping_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_device_modifier_mapping_reply_t * xcb_input_get_device_modifier_mapping_reply
 ** 
 ** @param xcb_connection_t                                *c
 ** @param xcb_input_get_device_modifier_mapping_cookie_t   cookie
 ** @param xcb_generic_error_t                            **e
 ** @returns xcb_input_get_device_modifier_mapping_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_modifier_mapping_reply_t *
xcb_input_get_device_modifier_mapping_reply (xcb_connection_t                                *c  /**< */,
                                             xcb_input_get_device_modifier_mapping_cookie_t   cookie  /**< */,
                                             xcb_generic_error_t                            **e  /**< */);


/*****************************************************************************
 **
 ** xcb_input_set_device_modifier_mapping_cookie_t xcb_input_set_device_modifier_mapping
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @param ubyte             keycodes_per_modifier
 ** @param /+const+/ ubyte  *keymaps
 ** @returns xcb_input_set_device_modifier_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_set_device_modifier_mapping_cookie_t
xcb_input_set_device_modifier_mapping (xcb_connection_t *c  /**< */,
                                       ubyte             device_id  /**< */,
                                       ubyte             keycodes_per_modifier  /**< */,
                                       /+const+/ ubyte  *keymaps  /**< */);


/*****************************************************************************
 **
 ** xcb_input_set_device_modifier_mapping_cookie_t xcb_input_set_device_modifier_mapping_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @param ubyte             keycodes_per_modifier
 ** @param /+const+/ ubyte  *keymaps
 ** @returns xcb_input_set_device_modifier_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_set_device_modifier_mapping_cookie_t
xcb_input_set_device_modifier_mapping_unchecked (xcb_connection_t *c  /**< */,
                                                 ubyte             device_id  /**< */,
                                                 ubyte             keycodes_per_modifier  /**< */,
                                                 /+const+/ ubyte  *keymaps  /**< */);


/*****************************************************************************
 **
 ** xcb_input_set_device_modifier_mapping_reply_t * xcb_input_set_device_modifier_mapping_reply
 ** 
 ** @param xcb_connection_t                                *c
 ** @param xcb_input_set_device_modifier_mapping_cookie_t   cookie
 ** @param xcb_generic_error_t                            **e
 ** @returns xcb_input_set_device_modifier_mapping_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_set_device_modifier_mapping_reply_t *
xcb_input_set_device_modifier_mapping_reply (xcb_connection_t                                *c  /**< */,
                                             xcb_input_set_device_modifier_mapping_cookie_t   cookie  /**< */,
                                             xcb_generic_error_t                            **e  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_device_button_mapping_cookie_t xcb_input_get_device_button_mapping
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_get_device_button_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_button_mapping_cookie_t
xcb_input_get_device_button_mapping (xcb_connection_t *c  /**< */,
                                     ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_device_button_mapping_cookie_t xcb_input_get_device_button_mapping_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_get_device_button_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_button_mapping_cookie_t
xcb_input_get_device_button_mapping_unchecked (xcb_connection_t *c  /**< */,
                                               ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_input_get_device_button_mapping_map
 ** 
 ** @param /+const+/ xcb_input_get_device_button_mapping_reply_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
extern(C) ubyte *
xcb_input_get_device_button_mapping_map (/+const+/ xcb_input_get_device_button_mapping_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_get_device_button_mapping_map_length
 ** 
 ** @param /+const+/ xcb_input_get_device_button_mapping_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_get_device_button_mapping_map_length (/+const+/ xcb_input_get_device_button_mapping_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_get_device_button_mapping_map_end
 ** 
 ** @param /+const+/ xcb_input_get_device_button_mapping_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_get_device_button_mapping_map_end (/+const+/ xcb_input_get_device_button_mapping_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_device_button_mapping_reply_t * xcb_input_get_device_button_mapping_reply
 ** 
 ** @param xcb_connection_t                              *c
 ** @param xcb_input_get_device_button_mapping_cookie_t   cookie
 ** @param xcb_generic_error_t                          **e
 ** @returns xcb_input_get_device_button_mapping_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_button_mapping_reply_t *
xcb_input_get_device_button_mapping_reply (xcb_connection_t                              *c  /**< */,
                                           xcb_input_get_device_button_mapping_cookie_t   cookie  /**< */,
                                           xcb_generic_error_t                          **e  /**< */);


/*****************************************************************************
 **
 ** xcb_input_set_device_button_mapping_cookie_t xcb_input_set_device_button_mapping
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @param ubyte             map_size
 ** @param /+const+/ ubyte  *map
 ** @returns xcb_input_set_device_button_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_set_device_button_mapping_cookie_t
xcb_input_set_device_button_mapping (xcb_connection_t *c  /**< */,
                                     ubyte             device_id  /**< */,
                                     ubyte             map_size  /**< */,
                                     /+const+/ ubyte  *map  /**< */);


/*****************************************************************************
 **
 ** xcb_input_set_device_button_mapping_cookie_t xcb_input_set_device_button_mapping_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @param ubyte             map_size
 ** @param /+const+/ ubyte  *map
 ** @returns xcb_input_set_device_button_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_set_device_button_mapping_cookie_t
xcb_input_set_device_button_mapping_unchecked (xcb_connection_t *c  /**< */,
                                               ubyte             device_id  /**< */,
                                               ubyte             map_size  /**< */,
                                               /+const+/ ubyte  *map  /**< */);


/*****************************************************************************
 **
 ** xcb_input_set_device_button_mapping_reply_t * xcb_input_set_device_button_mapping_reply
 ** 
 ** @param xcb_connection_t                              *c
 ** @param xcb_input_set_device_button_mapping_cookie_t   cookie
 ** @param xcb_generic_error_t                          **e
 ** @returns xcb_input_set_device_button_mapping_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_set_device_button_mapping_reply_t *
xcb_input_set_device_button_mapping_reply (xcb_connection_t                              *c  /**< */,
                                           xcb_input_set_device_button_mapping_cookie_t   cookie  /**< */,
                                           xcb_generic_error_t                          **e  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_key_state_next
 ** 
 ** @param xcb_input_key_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_key_state_next (xcb_input_key_state_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_key_state_end
 ** 
 ** @param xcb_input_key_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_key_state_end (xcb_input_key_state_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_button_state_next
 ** 
 ** @param xcb_input_button_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_button_state_next (xcb_input_button_state_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_button_state_end
 ** 
 ** @param xcb_input_button_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_button_state_end (xcb_input_button_state_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_input_valuator_state_valuators
 ** 
 ** @param /+const+/ xcb_input_valuator_state_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
extern(C) uint *
xcb_input_valuator_state_valuators (/+const+/ xcb_input_valuator_state_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_valuator_state_valuators_length
 ** 
 ** @param /+const+/ xcb_input_valuator_state_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_valuator_state_valuators_length (/+const+/ xcb_input_valuator_state_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_valuator_state_valuators_end
 ** 
 ** @param /+const+/ xcb_input_valuator_state_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_valuator_state_valuators_end (/+const+/ xcb_input_valuator_state_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_valuator_state_next
 ** 
 ** @param xcb_input_valuator_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_valuator_state_next (xcb_input_valuator_state_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_valuator_state_end
 ** 
 ** @param xcb_input_valuator_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_valuator_state_end (xcb_input_valuator_state_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_input_input_state_uninterpreted_data
 ** 
 ** @param /+const+/ xcb_input_input_state_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
extern(C) ubyte *
xcb_input_input_state_uninterpreted_data (/+const+/ xcb_input_input_state_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_input_state_uninterpreted_data_length
 ** 
 ** @param /+const+/ xcb_input_input_state_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_input_state_uninterpreted_data_length (/+const+/ xcb_input_input_state_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_input_state_uninterpreted_data_end
 ** 
 ** @param /+const+/ xcb_input_input_state_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_input_state_uninterpreted_data_end (/+const+/ xcb_input_input_state_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_input_state_next
 ** 
 ** @param xcb_input_input_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_input_state_next (xcb_input_input_state_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_input_state_end
 ** 
 ** @param xcb_input_input_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_input_state_end (xcb_input_input_state_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_input_query_device_state_cookie_t xcb_input_query_device_state
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_query_device_state_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_query_device_state_cookie_t
xcb_input_query_device_state (xcb_connection_t *c  /**< */,
                              ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** xcb_input_query_device_state_cookie_t xcb_input_query_device_state_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_query_device_state_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_query_device_state_cookie_t
xcb_input_query_device_state_unchecked (xcb_connection_t *c  /**< */,
                                        ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_query_device_state_classes_length
 ** 
 ** @param /+const+/ xcb_input_query_device_state_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_query_device_state_classes_length (/+const+/ xcb_input_query_device_state_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_input_state_iterator_t xcb_input_query_device_state_classes_iterator
 ** 
 ** @param /+const+/ xcb_input_query_device_state_reply_t *R
 ** @returns xcb_input_input_state_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_input_state_iterator_t
xcb_input_query_device_state_classes_iterator (/+const+/ xcb_input_query_device_state_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_query_device_state_reply_t * xcb_input_query_device_state_reply
 ** 
 ** @param xcb_connection_t                       *c
 ** @param xcb_input_query_device_state_cookie_t   cookie
 ** @param xcb_generic_error_t                   **e
 ** @returns xcb_input_query_device_state_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_query_device_state_reply_t *
xcb_input_query_device_state_reply (xcb_connection_t                       *c  /**< */,
                                    xcb_input_query_device_state_cookie_t   cookie  /**< */,
                                    xcb_generic_error_t                   **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_send_extension_event_checked
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_window_t                       destination
 ** @param ubyte                              device_id
 ** @param bool                               propagate
 ** @param ushort                             num_classes
 ** @param ubyte                              num_events
 ** @param /+const+/ ubyte                   *events
 ** @param /+const+/ xcb_input_event_class_t *classes
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_send_extension_event_checked (xcb_connection_t                  *c  /**< */,
                                        xcb_window_t                       destination  /**< */,
                                        ubyte                              device_id  /**< */,
                                        bool                               propagate  /**< */,
                                        ushort                             num_classes  /**< */,
                                        ubyte                              num_events  /**< */,
                                        /+const+/ ubyte                   *events  /**< */,
                                        /+const+/ xcb_input_event_class_t *classes  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_send_extension_event
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_window_t                       destination
 ** @param ubyte                              device_id
 ** @param bool                               propagate
 ** @param ushort                             num_classes
 ** @param ubyte                              num_events
 ** @param /+const+/ ubyte                   *events
 ** @param /+const+/ xcb_input_event_class_t *classes
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_send_extension_event (xcb_connection_t                  *c  /**< */,
                                xcb_window_t                       destination  /**< */,
                                ubyte                              device_id  /**< */,
                                bool                               propagate  /**< */,
                                ushort                             num_classes  /**< */,
                                ubyte                              num_events  /**< */,
                                /+const+/ ubyte                   *events  /**< */,
                                /+const+/ xcb_input_event_class_t *classes  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_device_bell_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @param ubyte             feedback_id
 ** @param ubyte             feedback_class
 ** @param byte              percent
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_device_bell_checked (xcb_connection_t *c  /**< */,
                               ubyte             device_id  /**< */,
                               ubyte             feedback_id  /**< */,
                               ubyte             feedback_class  /**< */,
                               byte              percent  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_device_bell
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @param ubyte             feedback_id
 ** @param ubyte             feedback_class
 ** @param byte              percent
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_device_bell (xcb_connection_t *c  /**< */,
                       ubyte             device_id  /**< */,
                       ubyte             feedback_id  /**< */,
                       ubyte             feedback_class  /**< */,
                       byte              percent  /**< */);


/*****************************************************************************
 **
 ** xcb_input_set_device_valuators_cookie_t xcb_input_set_device_valuators
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @param ubyte             first_valuator
 ** @param ubyte             num_valuators
 ** @param /+const+/ int    *valuators
 ** @returns xcb_input_set_device_valuators_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_set_device_valuators_cookie_t
xcb_input_set_device_valuators (xcb_connection_t *c  /**< */,
                                ubyte             device_id  /**< */,
                                ubyte             first_valuator  /**< */,
                                ubyte             num_valuators  /**< */,
                                /+const+/ int    *valuators  /**< */);


/*****************************************************************************
 **
 ** xcb_input_set_device_valuators_cookie_t xcb_input_set_device_valuators_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @param ubyte             first_valuator
 ** @param ubyte             num_valuators
 ** @param /+const+/ int    *valuators
 ** @returns xcb_input_set_device_valuators_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_set_device_valuators_cookie_t
xcb_input_set_device_valuators_unchecked (xcb_connection_t *c  /**< */,
                                          ubyte             device_id  /**< */,
                                          ubyte             first_valuator  /**< */,
                                          ubyte             num_valuators  /**< */,
                                          /+const+/ int    *valuators  /**< */);


/*****************************************************************************
 **
 ** xcb_input_set_device_valuators_reply_t * xcb_input_set_device_valuators_reply
 ** 
 ** @param xcb_connection_t                         *c
 ** @param xcb_input_set_device_valuators_cookie_t   cookie
 ** @param xcb_generic_error_t                     **e
 ** @returns xcb_input_set_device_valuators_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_set_device_valuators_reply_t *
xcb_input_set_device_valuators_reply (xcb_connection_t                         *c  /**< */,
                                      xcb_input_set_device_valuators_cookie_t   cookie  /**< */,
                                      xcb_generic_error_t                     **e  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_input_device_resolution_state_resolution_values
 ** 
 ** @param /+const+/ xcb_input_device_resolution_state_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
extern(C) uint *
xcb_input_device_resolution_state_resolution_values (/+const+/ xcb_input_device_resolution_state_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_device_resolution_state_resolution_values_length
 ** 
 ** @param /+const+/ xcb_input_device_resolution_state_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_device_resolution_state_resolution_values_length (/+const+/ xcb_input_device_resolution_state_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_resolution_state_resolution_values_end
 ** 
 ** @param /+const+/ xcb_input_device_resolution_state_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_device_resolution_state_resolution_values_end (/+const+/ xcb_input_device_resolution_state_t *R  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_input_device_resolution_state_resolution_min
 ** 
 ** @param /+const+/ xcb_input_device_resolution_state_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
extern(C) uint *
xcb_input_device_resolution_state_resolution_min (/+const+/ xcb_input_device_resolution_state_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_device_resolution_state_resolution_min_length
 ** 
 ** @param /+const+/ xcb_input_device_resolution_state_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_device_resolution_state_resolution_min_length (/+const+/ xcb_input_device_resolution_state_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_resolution_state_resolution_min_end
 ** 
 ** @param /+const+/ xcb_input_device_resolution_state_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_device_resolution_state_resolution_min_end (/+const+/ xcb_input_device_resolution_state_t *R  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_input_device_resolution_state_resolution_max
 ** 
 ** @param /+const+/ xcb_input_device_resolution_state_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
extern(C) uint *
xcb_input_device_resolution_state_resolution_max (/+const+/ xcb_input_device_resolution_state_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_device_resolution_state_resolution_max_length
 ** 
 ** @param /+const+/ xcb_input_device_resolution_state_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_device_resolution_state_resolution_max_length (/+const+/ xcb_input_device_resolution_state_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_resolution_state_resolution_max_end
 ** 
 ** @param /+const+/ xcb_input_device_resolution_state_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_device_resolution_state_resolution_max_end (/+const+/ xcb_input_device_resolution_state_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_device_resolution_state_next
 ** 
 ** @param xcb_input_device_resolution_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_resolution_state_next (xcb_input_device_resolution_state_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_resolution_state_end
 ** 
 ** @param xcb_input_device_resolution_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_device_resolution_state_end (xcb_input_device_resolution_state_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_device_abs_calib_state_next
 ** 
 ** @param xcb_input_device_abs_calib_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_abs_calib_state_next (xcb_input_device_abs_calib_state_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_abs_calib_state_end
 ** 
 ** @param xcb_input_device_abs_calib_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_device_abs_calib_state_end (xcb_input_device_abs_calib_state_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_device_abs_area_state_next
 ** 
 ** @param xcb_input_device_abs_area_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_abs_area_state_next (xcb_input_device_abs_area_state_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_abs_area_state_end
 ** 
 ** @param xcb_input_device_abs_area_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_device_abs_area_state_end (xcb_input_device_abs_area_state_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_device_core_state_next
 ** 
 ** @param xcb_input_device_core_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_core_state_next (xcb_input_device_core_state_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_core_state_end
 ** 
 ** @param xcb_input_device_core_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_device_core_state_end (xcb_input_device_core_state_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_device_enable_state_next
 ** 
 ** @param xcb_input_device_enable_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_enable_state_next (xcb_input_device_enable_state_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_enable_state_end
 ** 
 ** @param xcb_input_device_enable_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_device_enable_state_end (xcb_input_device_enable_state_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_input_device_state_uninterpreted_data
 ** 
 ** @param /+const+/ xcb_input_device_state_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
extern(C) ubyte *
xcb_input_device_state_uninterpreted_data (/+const+/ xcb_input_device_state_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_device_state_uninterpreted_data_length
 ** 
 ** @param /+const+/ xcb_input_device_state_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_device_state_uninterpreted_data_length (/+const+/ xcb_input_device_state_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_state_uninterpreted_data_end
 ** 
 ** @param /+const+/ xcb_input_device_state_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_device_state_uninterpreted_data_end (/+const+/ xcb_input_device_state_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_device_state_next
 ** 
 ** @param xcb_input_device_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_state_next (xcb_input_device_state_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_state_end
 ** 
 ** @param xcb_input_device_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_device_state_end (xcb_input_device_state_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_device_control_cookie_t xcb_input_get_device_control
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            control_id
 ** @param ubyte             device_id
 ** @returns xcb_input_get_device_control_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_control_cookie_t
xcb_input_get_device_control (xcb_connection_t *c  /**< */,
                              ushort            control_id  /**< */,
                              ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_device_control_cookie_t xcb_input_get_device_control_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            control_id
 ** @param ubyte             device_id
 ** @returns xcb_input_get_device_control_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_control_cookie_t
xcb_input_get_device_control_unchecked (xcb_connection_t *c  /**< */,
                                        ushort            control_id  /**< */,
                                        ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_device_control_reply_t * xcb_input_get_device_control_reply
 ** 
 ** @param xcb_connection_t                       *c
 ** @param xcb_input_get_device_control_cookie_t   cookie
 ** @param xcb_generic_error_t                   **e
 ** @returns xcb_input_get_device_control_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_control_reply_t *
xcb_input_get_device_control_reply (xcb_connection_t                       *c  /**< */,
                                    xcb_input_get_device_control_cookie_t   cookie  /**< */,
                                    xcb_generic_error_t                   **e  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_input_device_resolution_ctl_resolution_values
 ** 
 ** @param /+const+/ xcb_input_device_resolution_ctl_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
extern(C) uint *
xcb_input_device_resolution_ctl_resolution_values (/+const+/ xcb_input_device_resolution_ctl_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_device_resolution_ctl_resolution_values_length
 ** 
 ** @param /+const+/ xcb_input_device_resolution_ctl_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_device_resolution_ctl_resolution_values_length (/+const+/ xcb_input_device_resolution_ctl_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_resolution_ctl_resolution_values_end
 ** 
 ** @param /+const+/ xcb_input_device_resolution_ctl_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_device_resolution_ctl_resolution_values_end (/+const+/ xcb_input_device_resolution_ctl_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_device_resolution_ctl_next
 ** 
 ** @param xcb_input_device_resolution_ctl_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_resolution_ctl_next (xcb_input_device_resolution_ctl_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_resolution_ctl_end
 ** 
 ** @param xcb_input_device_resolution_ctl_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_device_resolution_ctl_end (xcb_input_device_resolution_ctl_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_device_abs_calib_ctl_next
 ** 
 ** @param xcb_input_device_abs_calib_ctl_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_abs_calib_ctl_next (xcb_input_device_abs_calib_ctl_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_abs_calib_ctl_end
 ** 
 ** @param xcb_input_device_abs_calib_ctl_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_device_abs_calib_ctl_end (xcb_input_device_abs_calib_ctl_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_device_abs_area_ctrl_next
 ** 
 ** @param xcb_input_device_abs_area_ctrl_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_abs_area_ctrl_next (xcb_input_device_abs_area_ctrl_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_abs_area_ctrl_end
 ** 
 ** @param xcb_input_device_abs_area_ctrl_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_device_abs_area_ctrl_end (xcb_input_device_abs_area_ctrl_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_device_core_ctrl_next
 ** 
 ** @param xcb_input_device_core_ctrl_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_core_ctrl_next (xcb_input_device_core_ctrl_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_core_ctrl_end
 ** 
 ** @param xcb_input_device_core_ctrl_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_device_core_ctrl_end (xcb_input_device_core_ctrl_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_device_enable_ctrl_next
 ** 
 ** @param xcb_input_device_enable_ctrl_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_enable_ctrl_next (xcb_input_device_enable_ctrl_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_enable_ctrl_end
 ** 
 ** @param xcb_input_device_enable_ctrl_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_device_enable_ctrl_end (xcb_input_device_enable_ctrl_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_input_device_ctl_uninterpreted_data
 ** 
 ** @param /+const+/ xcb_input_device_ctl_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
extern(C) ubyte *
xcb_input_device_ctl_uninterpreted_data (/+const+/ xcb_input_device_ctl_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_device_ctl_uninterpreted_data_length
 ** 
 ** @param /+const+/ xcb_input_device_ctl_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_device_ctl_uninterpreted_data_length (/+const+/ xcb_input_device_ctl_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_ctl_uninterpreted_data_end
 ** 
 ** @param /+const+/ xcb_input_device_ctl_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_device_ctl_uninterpreted_data_end (/+const+/ xcb_input_device_ctl_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_device_ctl_next
 ** 
 ** @param xcb_input_device_ctl_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_ctl_next (xcb_input_device_ctl_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_ctl_end
 ** 
 ** @param xcb_input_device_ctl_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_device_ctl_end (xcb_input_device_ctl_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_input_change_device_control_cookie_t xcb_input_change_device_control
 ** 
 ** @param xcb_connection_t       *c
 ** @param ushort                  control_id
 ** @param ubyte                   device_id
 ** @param xcb_input_device_ctl_t  control
 ** @returns xcb_input_change_device_control_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_change_device_control_cookie_t
xcb_input_change_device_control (xcb_connection_t       *c  /**< */,
                                 ushort                  control_id  /**< */,
                                 ubyte                   device_id  /**< */,
                                 xcb_input_device_ctl_t  control  /**< */);


/*****************************************************************************
 **
 ** xcb_input_change_device_control_cookie_t xcb_input_change_device_control_unchecked
 ** 
 ** @param xcb_connection_t       *c
 ** @param ushort                  control_id
 ** @param ubyte                   device_id
 ** @param xcb_input_device_ctl_t  control
 ** @returns xcb_input_change_device_control_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_change_device_control_cookie_t
xcb_input_change_device_control_unchecked (xcb_connection_t       *c  /**< */,
                                           ushort                  control_id  /**< */,
                                           ubyte                   device_id  /**< */,
                                           xcb_input_device_ctl_t  control  /**< */);


/*****************************************************************************
 **
 ** xcb_input_change_device_control_reply_t * xcb_input_change_device_control_reply
 ** 
 ** @param xcb_connection_t                          *c
 ** @param xcb_input_change_device_control_cookie_t   cookie
 ** @param xcb_generic_error_t                      **e
 ** @returns xcb_input_change_device_control_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_change_device_control_reply_t *
xcb_input_change_device_control_reply (xcb_connection_t                          *c  /**< */,
                                       xcb_input_change_device_control_cookie_t   cookie  /**< */,
                                       xcb_generic_error_t                      **e  /**< */);


/*****************************************************************************
 **
 ** xcb_input_list_device_properties_cookie_t xcb_input_list_device_properties
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_list_device_properties_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_list_device_properties_cookie_t
xcb_input_list_device_properties (xcb_connection_t *c  /**< */,
                                  ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** xcb_input_list_device_properties_cookie_t xcb_input_list_device_properties_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_list_device_properties_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_list_device_properties_cookie_t
xcb_input_list_device_properties_unchecked (xcb_connection_t *c  /**< */,
                                            ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_input_list_device_properties_atoms
 ** 
 ** @param /+const+/ xcb_input_list_device_properties_reply_t *R
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
extern(C) xcb_atom_t *
xcb_input_list_device_properties_atoms (/+const+/ xcb_input_list_device_properties_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_list_device_properties_atoms_length
 ** 
 ** @param /+const+/ xcb_input_list_device_properties_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_list_device_properties_atoms_length (/+const+/ xcb_input_list_device_properties_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_atom_iterator_t xcb_input_list_device_properties_atoms_iterator
 ** 
 ** @param /+const+/ xcb_input_list_device_properties_reply_t *R
 ** @returns xcb_atom_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_atom_iterator_t
xcb_input_list_device_properties_atoms_iterator (/+const+/ xcb_input_list_device_properties_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_list_device_properties_reply_t * xcb_input_list_device_properties_reply
 ** 
 ** @param xcb_connection_t                           *c
 ** @param xcb_input_list_device_properties_cookie_t   cookie
 ** @param xcb_generic_error_t                       **e
 ** @returns xcb_input_list_device_properties_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_list_device_properties_reply_t *
xcb_input_list_device_properties_reply (xcb_connection_t                           *c  /**< */,
                                        xcb_input_list_device_properties_cookie_t   cookie  /**< */,
                                        xcb_generic_error_t                       **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_change_device_property_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_atom_t        property
 ** @param xcb_atom_t        type
 ** @param ubyte             device_id
 ** @param ubyte             format
 ** @param ubyte             mode
 ** @param uint              num_items
 ** @param /+const+/ ubyte  *data8
 ** @param /+const+/ ushort *data16
 ** @param /+const+/ uint   *data32
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_change_device_property_checked (xcb_connection_t *c  /**< */,
                                          xcb_atom_t        property  /**< */,
                                          xcb_atom_t        type  /**< */,
                                          ubyte             device_id  /**< */,
                                          ubyte             format  /**< */,
                                          ubyte             mode  /**< */,
                                          uint              num_items  /**< */,
                                          /+const+/ ubyte  *data8  /**< */,
                                          /+const+/ ushort *data16  /**< */,
                                          /+const+/ uint   *data32  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_change_device_property
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_atom_t        property
 ** @param xcb_atom_t        type
 ** @param ubyte             device_id
 ** @param ubyte             format
 ** @param ubyte             mode
 ** @param uint              num_items
 ** @param /+const+/ ubyte  *data8
 ** @param /+const+/ ushort *data16
 ** @param /+const+/ uint   *data32
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_change_device_property (xcb_connection_t *c  /**< */,
                                  xcb_atom_t        property  /**< */,
                                  xcb_atom_t        type  /**< */,
                                  ubyte             device_id  /**< */,
                                  ubyte             format  /**< */,
                                  ubyte             mode  /**< */,
                                  uint              num_items  /**< */,
                                  /+const+/ ubyte  *data8  /**< */,
                                  /+const+/ ushort *data16  /**< */,
                                  /+const+/ uint   *data32  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_delete_device_property_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_atom_t        property
 ** @param ubyte             device_id
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_delete_device_property_checked (xcb_connection_t *c  /**< */,
                                          xcb_atom_t        property  /**< */,
                                          ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_delete_device_property
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_atom_t        property
 ** @param ubyte             device_id
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_delete_device_property (xcb_connection_t *c  /**< */,
                                  xcb_atom_t        property  /**< */,
                                  ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_device_property_cookie_t xcb_input_get_device_property
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_atom_t        property
 ** @param xcb_atom_t        type
 ** @param uint              offset
 ** @param uint              len
 ** @param ubyte             device_id
 ** @param bool              _delete
 ** @returns xcb_input_get_device_property_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_property_cookie_t
xcb_input_get_device_property (xcb_connection_t *c  /**< */,
                               xcb_atom_t        property  /**< */,
                               xcb_atom_t        type  /**< */,
                               uint              offset  /**< */,
                               uint              len  /**< */,
                               ubyte             device_id  /**< */,
                               bool              _delete  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_device_property_cookie_t xcb_input_get_device_property_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_atom_t        property
 ** @param xcb_atom_t        type
 ** @param uint              offset
 ** @param uint              len
 ** @param ubyte             device_id
 ** @param bool              _delete
 ** @returns xcb_input_get_device_property_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_property_cookie_t
xcb_input_get_device_property_unchecked (xcb_connection_t *c  /**< */,
                                         xcb_atom_t        property  /**< */,
                                         xcb_atom_t        type  /**< */,
                                         uint              offset  /**< */,
                                         uint              len  /**< */,
                                         ubyte             device_id  /**< */,
                                         bool              _delete  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_input_get_device_property_data_8
 ** 
 ** @param /+const+/ xcb_input_get_device_property_reply_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
extern(C) ubyte *
xcb_input_get_device_property_data_8 (/+const+/ xcb_input_get_device_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_get_device_property_data_8_length
 ** 
 ** @param /+const+/ xcb_input_get_device_property_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_get_device_property_data_8_length (/+const+/ xcb_input_get_device_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_get_device_property_data_8_end
 ** 
 ** @param /+const+/ xcb_input_get_device_property_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_get_device_property_data_8_end (/+const+/ xcb_input_get_device_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** ushort * xcb_input_get_device_property_data_16
 ** 
 ** @param /+const+/ xcb_input_get_device_property_reply_t *R
 ** @returns ushort *
 **
 *****************************************************************************/
 
extern(C) ushort *
xcb_input_get_device_property_data_16 (/+const+/ xcb_input_get_device_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_get_device_property_data_16_length
 ** 
 ** @param /+const+/ xcb_input_get_device_property_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_get_device_property_data_16_length (/+const+/ xcb_input_get_device_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_get_device_property_data_16_end
 ** 
 ** @param /+const+/ xcb_input_get_device_property_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_get_device_property_data_16_end (/+const+/ xcb_input_get_device_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_input_get_device_property_data_32
 ** 
 ** @param /+const+/ xcb_input_get_device_property_reply_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
extern(C) uint *
xcb_input_get_device_property_data_32 (/+const+/ xcb_input_get_device_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_get_device_property_data_32_length
 ** 
 ** @param /+const+/ xcb_input_get_device_property_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_get_device_property_data_32_length (/+const+/ xcb_input_get_device_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_get_device_property_data_32_end
 ** 
 ** @param /+const+/ xcb_input_get_device_property_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_get_device_property_data_32_end (/+const+/ xcb_input_get_device_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_get_device_property_reply_t * xcb_input_get_device_property_reply
 ** 
 ** @param xcb_connection_t                        *c
 ** @param xcb_input_get_device_property_cookie_t   cookie
 ** @param xcb_generic_error_t                    **e
 ** @returns xcb_input_get_device_property_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_property_reply_t *
xcb_input_get_device_property_reply (xcb_connection_t                        *c  /**< */,
                                     xcb_input_get_device_property_cookie_t   cookie  /**< */,
                                     xcb_generic_error_t                    **e  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_group_info_next
 ** 
 ** @param xcb_input_group_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_group_info_next (xcb_input_group_info_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_group_info_end
 ** 
 ** @param xcb_input_group_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_group_info_end (xcb_input_group_info_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_modifier_info_next
 ** 
 ** @param xcb_input_modifier_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_modifier_info_next (xcb_input_modifier_info_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_modifier_info_end
 ** 
 ** @param xcb_input_modifier_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_modifier_info_end (xcb_input_modifier_info_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_query_pointer_cookie_t xcb_input_xi_query_pointer
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_window_t           window
 ** @param xcb_input_device_id_t  deviceid
 ** @returns xcb_input_xi_query_pointer_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_query_pointer_cookie_t
xcb_input_xi_query_pointer (xcb_connection_t      *c  /**< */,
                            xcb_window_t           window  /**< */,
                            xcb_input_device_id_t  deviceid  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_query_pointer_cookie_t xcb_input_xi_query_pointer_unchecked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_window_t           window
 ** @param xcb_input_device_id_t  deviceid
 ** @returns xcb_input_xi_query_pointer_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_query_pointer_cookie_t
xcb_input_xi_query_pointer_unchecked (xcb_connection_t      *c  /**< */,
                                      xcb_window_t           window  /**< */,
                                      xcb_input_device_id_t  deviceid  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_input_xi_query_pointer_buttons
 ** 
 ** @param /+const+/ xcb_input_xi_query_pointer_reply_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
extern(C) uint *
xcb_input_xi_query_pointer_buttons (/+const+/ xcb_input_xi_query_pointer_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_xi_query_pointer_buttons_length
 ** 
 ** @param /+const+/ xcb_input_xi_query_pointer_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_xi_query_pointer_buttons_length (/+const+/ xcb_input_xi_query_pointer_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_xi_query_pointer_buttons_end
 ** 
 ** @param /+const+/ xcb_input_xi_query_pointer_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_xi_query_pointer_buttons_end (/+const+/ xcb_input_xi_query_pointer_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_query_pointer_reply_t * xcb_input_xi_query_pointer_reply
 ** 
 ** @param xcb_connection_t                     *c
 ** @param xcb_input_xi_query_pointer_cookie_t   cookie
 ** @param xcb_generic_error_t                 **e
 ** @returns xcb_input_xi_query_pointer_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_query_pointer_reply_t *
xcb_input_xi_query_pointer_reply (xcb_connection_t                     *c  /**< */,
                                  xcb_input_xi_query_pointer_cookie_t   cookie  /**< */,
                                  xcb_generic_error_t                 **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_xi_warp_pointer_checked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_window_t           src_win
 ** @param xcb_window_t           dst_win
 ** @param xcb_input_fp_1616_t    src_x
 ** @param xcb_input_fp_1616_t    src_y
 ** @param ushort                 src_width
 ** @param ushort                 src_height
 ** @param xcb_input_fp_1616_t    dst_x
 ** @param xcb_input_fp_1616_t    dst_y
 ** @param xcb_input_device_id_t  deviceid
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_xi_warp_pointer_checked (xcb_connection_t      *c  /**< */,
                                   xcb_window_t           src_win  /**< */,
                                   xcb_window_t           dst_win  /**< */,
                                   xcb_input_fp_1616_t    src_x  /**< */,
                                   xcb_input_fp_1616_t    src_y  /**< */,
                                   ushort                 src_width  /**< */,
                                   ushort                 src_height  /**< */,
                                   xcb_input_fp_1616_t    dst_x  /**< */,
                                   xcb_input_fp_1616_t    dst_y  /**< */,
                                   xcb_input_device_id_t  deviceid  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_xi_warp_pointer
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_window_t           src_win
 ** @param xcb_window_t           dst_win
 ** @param xcb_input_fp_1616_t    src_x
 ** @param xcb_input_fp_1616_t    src_y
 ** @param ushort                 src_width
 ** @param ushort                 src_height
 ** @param xcb_input_fp_1616_t    dst_x
 ** @param xcb_input_fp_1616_t    dst_y
 ** @param xcb_input_device_id_t  deviceid
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_xi_warp_pointer (xcb_connection_t      *c  /**< */,
                           xcb_window_t           src_win  /**< */,
                           xcb_window_t           dst_win  /**< */,
                           xcb_input_fp_1616_t    src_x  /**< */,
                           xcb_input_fp_1616_t    src_y  /**< */,
                           ushort                 src_width  /**< */,
                           ushort                 src_height  /**< */,
                           xcb_input_fp_1616_t    dst_x  /**< */,
                           xcb_input_fp_1616_t    dst_y  /**< */,
                           xcb_input_device_id_t  deviceid  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_xi_change_cursor_checked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_window_t           window
 ** @param xcb_cursor_t           cursor
 ** @param xcb_input_device_id_t  deviceid
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_xi_change_cursor_checked (xcb_connection_t      *c  /**< */,
                                    xcb_window_t           window  /**< */,
                                    xcb_cursor_t           cursor  /**< */,
                                    xcb_input_device_id_t  deviceid  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_xi_change_cursor
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_window_t           window
 ** @param xcb_cursor_t           cursor
 ** @param xcb_input_device_id_t  deviceid
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_xi_change_cursor (xcb_connection_t      *c  /**< */,
                            xcb_window_t           window  /**< */,
                            xcb_cursor_t           cursor  /**< */,
                            xcb_input_device_id_t  deviceid  /**< */);


/*****************************************************************************
 **
 ** char * xcb_input_add_master_name
 ** 
 ** @param /+const+/ xcb_input_add_master_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
extern(C) char *
xcb_input_add_master_name (/+const+/ xcb_input_add_master_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_add_master_name_length
 ** 
 ** @param /+const+/ xcb_input_add_master_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_add_master_name_length (/+const+/ xcb_input_add_master_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_add_master_name_end
 ** 
 ** @param /+const+/ xcb_input_add_master_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_add_master_name_end (/+const+/ xcb_input_add_master_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_add_master_next
 ** 
 ** @param xcb_input_add_master_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_add_master_next (xcb_input_add_master_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_add_master_end
 ** 
 ** @param xcb_input_add_master_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_add_master_end (xcb_input_add_master_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_remove_master_next
 ** 
 ** @param xcb_input_remove_master_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_remove_master_next (xcb_input_remove_master_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_remove_master_end
 ** 
 ** @param xcb_input_remove_master_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_remove_master_end (xcb_input_remove_master_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_attach_slave_next
 ** 
 ** @param xcb_input_attach_slave_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_attach_slave_next (xcb_input_attach_slave_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_attach_slave_end
 ** 
 ** @param xcb_input_attach_slave_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_attach_slave_end (xcb_input_attach_slave_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_detach_slave_next
 ** 
 ** @param xcb_input_detach_slave_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_detach_slave_next (xcb_input_detach_slave_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_detach_slave_end
 ** 
 ** @param xcb_input_detach_slave_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_detach_slave_end (xcb_input_detach_slave_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_input_hierarchy_change_uninterpreted_data
 ** 
 ** @param /+const+/ xcb_input_hierarchy_change_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
extern(C) ubyte *
xcb_input_hierarchy_change_uninterpreted_data (/+const+/ xcb_input_hierarchy_change_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_hierarchy_change_uninterpreted_data_length
 ** 
 ** @param /+const+/ xcb_input_hierarchy_change_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_hierarchy_change_uninterpreted_data_length (/+const+/ xcb_input_hierarchy_change_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_hierarchy_change_uninterpreted_data_end
 ** 
 ** @param /+const+/ xcb_input_hierarchy_change_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_hierarchy_change_uninterpreted_data_end (/+const+/ xcb_input_hierarchy_change_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_hierarchy_change_next
 ** 
 ** @param xcb_input_hierarchy_change_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_hierarchy_change_next (xcb_input_hierarchy_change_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_hierarchy_change_end
 ** 
 ** @param xcb_input_hierarchy_change_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_hierarchy_change_end (xcb_input_hierarchy_change_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_xi_change_hierarchy_checked
 ** 
 ** @param xcb_connection_t                       *c
 ** @param ubyte                                   num_changes
 ** @param /+const+/ xcb_input_hierarchy_change_t *changes
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_xi_change_hierarchy_checked (xcb_connection_t                       *c  /**< */,
                                       ubyte                                   num_changes  /**< */,
                                       /+const+/ xcb_input_hierarchy_change_t *changes  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_xi_change_hierarchy
 ** 
 ** @param xcb_connection_t                       *c
 ** @param ubyte                                   num_changes
 ** @param /+const+/ xcb_input_hierarchy_change_t *changes
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_xi_change_hierarchy (xcb_connection_t                       *c  /**< */,
                               ubyte                                   num_changes  /**< */,
                               /+const+/ xcb_input_hierarchy_change_t *changes  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_xi_set_client_pointer_checked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_window_t           window
 ** @param xcb_input_device_id_t  deviceid
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_xi_set_client_pointer_checked (xcb_connection_t      *c  /**< */,
                                         xcb_window_t           window  /**< */,
                                         xcb_input_device_id_t  deviceid  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_xi_set_client_pointer
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_window_t           window
 ** @param xcb_input_device_id_t  deviceid
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_xi_set_client_pointer (xcb_connection_t      *c  /**< */,
                                 xcb_window_t           window  /**< */,
                                 xcb_input_device_id_t  deviceid  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_get_client_pointer_cookie_t xcb_input_xi_get_client_pointer
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_input_xi_get_client_pointer_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_get_client_pointer_cookie_t
xcb_input_xi_get_client_pointer (xcb_connection_t *c  /**< */,
                                 xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_get_client_pointer_cookie_t xcb_input_xi_get_client_pointer_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_input_xi_get_client_pointer_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_get_client_pointer_cookie_t
xcb_input_xi_get_client_pointer_unchecked (xcb_connection_t *c  /**< */,
                                           xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_get_client_pointer_reply_t * xcb_input_xi_get_client_pointer_reply
 ** 
 ** @param xcb_connection_t                          *c
 ** @param xcb_input_xi_get_client_pointer_cookie_t   cookie
 ** @param xcb_generic_error_t                      **e
 ** @returns xcb_input_xi_get_client_pointer_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_get_client_pointer_reply_t *
xcb_input_xi_get_client_pointer_reply (xcb_connection_t                          *c  /**< */,
                                       xcb_input_xi_get_client_pointer_cookie_t   cookie  /**< */,
                                       xcb_generic_error_t                      **e  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_input_event_mask_mask
 ** 
 ** @param /+const+/ xcb_input_event_mask_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
extern(C) uint *
xcb_input_event_mask_mask (/+const+/ xcb_input_event_mask_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_event_mask_mask_length
 ** 
 ** @param /+const+/ xcb_input_event_mask_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_event_mask_mask_length (/+const+/ xcb_input_event_mask_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_event_mask_mask_end
 ** 
 ** @param /+const+/ xcb_input_event_mask_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_event_mask_mask_end (/+const+/ xcb_input_event_mask_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_event_mask_next
 ** 
 ** @param xcb_input_event_mask_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_event_mask_next (xcb_input_event_mask_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_event_mask_end
 ** 
 ** @param xcb_input_event_mask_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_event_mask_end (xcb_input_event_mask_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_xi_select_events_checked
 ** 
 ** @param xcb_connection_t                 *c
 ** @param xcb_window_t                      window
 ** @param ushort                            num_mask
 ** @param /+const+/ xcb_input_event_mask_t *masks
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_xi_select_events_checked (xcb_connection_t                 *c  /**< */,
                                    xcb_window_t                      window  /**< */,
                                    ushort                            num_mask  /**< */,
                                    /+const+/ xcb_input_event_mask_t *masks  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_xi_select_events
 ** 
 ** @param xcb_connection_t                 *c
 ** @param xcb_window_t                      window
 ** @param ushort                            num_mask
 ** @param /+const+/ xcb_input_event_mask_t *masks
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_xi_select_events (xcb_connection_t                 *c  /**< */,
                            xcb_window_t                      window  /**< */,
                            ushort                            num_mask  /**< */,
                            /+const+/ xcb_input_event_mask_t *masks  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_query_version_cookie_t xcb_input_xi_query_version
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            major_version
 ** @param ushort            minor_version
 ** @returns xcb_input_xi_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_query_version_cookie_t
xcb_input_xi_query_version (xcb_connection_t *c  /**< */,
                            ushort            major_version  /**< */,
                            ushort            minor_version  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_query_version_cookie_t xcb_input_xi_query_version_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            major_version
 ** @param ushort            minor_version
 ** @returns xcb_input_xi_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_query_version_cookie_t
xcb_input_xi_query_version_unchecked (xcb_connection_t *c  /**< */,
                                      ushort            major_version  /**< */,
                                      ushort            minor_version  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_query_version_reply_t * xcb_input_xi_query_version_reply
 ** 
 ** @param xcb_connection_t                     *c
 ** @param xcb_input_xi_query_version_cookie_t   cookie
 ** @param xcb_generic_error_t                 **e
 ** @returns xcb_input_xi_query_version_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_query_version_reply_t *
xcb_input_xi_query_version_reply (xcb_connection_t                     *c  /**< */,
                                  xcb_input_xi_query_version_cookie_t   cookie  /**< */,
                                  xcb_generic_error_t                 **e  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_input_button_class_state
 ** 
 ** @param /+const+/ xcb_input_button_class_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
extern(C) uint *
xcb_input_button_class_state (/+const+/ xcb_input_button_class_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_button_class_state_length
 ** 
 ** @param /+const+/ xcb_input_button_class_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_button_class_state_length (/+const+/ xcb_input_button_class_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_button_class_state_end
 ** 
 ** @param /+const+/ xcb_input_button_class_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_button_class_state_end (/+const+/ xcb_input_button_class_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_input_button_class_labels
 ** 
 ** @param /+const+/ xcb_input_button_class_t *R
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
extern(C) xcb_atom_t *
xcb_input_button_class_labels (/+const+/ xcb_input_button_class_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_button_class_labels_length
 ** 
 ** @param /+const+/ xcb_input_button_class_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_button_class_labels_length (/+const+/ xcb_input_button_class_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_atom_iterator_t xcb_input_button_class_labels_iterator
 ** 
 ** @param /+const+/ xcb_input_button_class_t *R
 ** @returns xcb_atom_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_atom_iterator_t
xcb_input_button_class_labels_iterator (/+const+/ xcb_input_button_class_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_button_class_next
 ** 
 ** @param xcb_input_button_class_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_button_class_next (xcb_input_button_class_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_button_class_end
 ** 
 ** @param xcb_input_button_class_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_button_class_end (xcb_input_button_class_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_input_key_class_keys
 ** 
 ** @param /+const+/ xcb_input_key_class_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
extern(C) uint *
xcb_input_key_class_keys (/+const+/ xcb_input_key_class_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_key_class_keys_length
 ** 
 ** @param /+const+/ xcb_input_key_class_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_key_class_keys_length (/+const+/ xcb_input_key_class_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_key_class_keys_end
 ** 
 ** @param /+const+/ xcb_input_key_class_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_key_class_keys_end (/+const+/ xcb_input_key_class_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_key_class_next
 ** 
 ** @param xcb_input_key_class_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_key_class_next (xcb_input_key_class_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_key_class_end
 ** 
 ** @param xcb_input_key_class_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_key_class_end (xcb_input_key_class_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_scroll_class_next
 ** 
 ** @param xcb_input_scroll_class_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_scroll_class_next (xcb_input_scroll_class_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_scroll_class_end
 ** 
 ** @param xcb_input_scroll_class_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_scroll_class_end (xcb_input_scroll_class_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_touch_class_next
 ** 
 ** @param xcb_input_touch_class_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_touch_class_next (xcb_input_touch_class_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_touch_class_end
 ** 
 ** @param xcb_input_touch_class_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_touch_class_end (xcb_input_touch_class_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_valuator_class_next
 ** 
 ** @param xcb_input_valuator_class_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_valuator_class_next (xcb_input_valuator_class_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_valuator_class_end
 ** 
 ** @param xcb_input_valuator_class_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_valuator_class_end (xcb_input_valuator_class_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_input_device_class_uninterpreted_data
 ** 
 ** @param /+const+/ xcb_input_device_class_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
extern(C) ubyte *
xcb_input_device_class_uninterpreted_data (/+const+/ xcb_input_device_class_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_device_class_uninterpreted_data_length
 ** 
 ** @param /+const+/ xcb_input_device_class_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_device_class_uninterpreted_data_length (/+const+/ xcb_input_device_class_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_class_uninterpreted_data_end
 ** 
 ** @param /+const+/ xcb_input_device_class_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_device_class_uninterpreted_data_end (/+const+/ xcb_input_device_class_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_device_class_next
 ** 
 ** @param xcb_input_device_class_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_class_next (xcb_input_device_class_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_class_end
 ** 
 ** @param xcb_input_device_class_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_device_class_end (xcb_input_device_class_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** char * xcb_input_xi_device_info_name
 ** 
 ** @param /+const+/ xcb_input_xi_device_info_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
extern(C) char *
xcb_input_xi_device_info_name (/+const+/ xcb_input_xi_device_info_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_xi_device_info_name_length
 ** 
 ** @param /+const+/ xcb_input_xi_device_info_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_xi_device_info_name_length (/+const+/ xcb_input_xi_device_info_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_xi_device_info_name_end
 ** 
 ** @param /+const+/ xcb_input_xi_device_info_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_xi_device_info_name_end (/+const+/ xcb_input_xi_device_info_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_xi_device_info_classes_length
 ** 
 ** @param /+const+/ xcb_input_xi_device_info_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_xi_device_info_classes_length (/+const+/ xcb_input_xi_device_info_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_device_class_iterator_t xcb_input_xi_device_info_classes_iterator
 ** 
 ** @param /+const+/ xcb_input_xi_device_info_t *R
 ** @returns xcb_input_device_class_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_device_class_iterator_t
xcb_input_xi_device_info_classes_iterator (/+const+/ xcb_input_xi_device_info_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_xi_device_info_next
 ** 
 ** @param xcb_input_xi_device_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_xi_device_info_next (xcb_input_xi_device_info_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_xi_device_info_end
 ** 
 ** @param xcb_input_xi_device_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_xi_device_info_end (xcb_input_xi_device_info_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_query_device_cookie_t xcb_input_xi_query_device
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_input_device_id_t  deviceid
 ** @returns xcb_input_xi_query_device_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_query_device_cookie_t
xcb_input_xi_query_device (xcb_connection_t      *c  /**< */,
                           xcb_input_device_id_t  deviceid  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_query_device_cookie_t xcb_input_xi_query_device_unchecked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_input_device_id_t  deviceid
 ** @returns xcb_input_xi_query_device_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_query_device_cookie_t
xcb_input_xi_query_device_unchecked (xcb_connection_t      *c  /**< */,
                                     xcb_input_device_id_t  deviceid  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_xi_query_device_infos_length
 ** 
 ** @param /+const+/ xcb_input_xi_query_device_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_xi_query_device_infos_length (/+const+/ xcb_input_xi_query_device_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_device_info_iterator_t xcb_input_xi_query_device_infos_iterator
 ** 
 ** @param /+const+/ xcb_input_xi_query_device_reply_t *R
 ** @returns xcb_input_xi_device_info_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_device_info_iterator_t
xcb_input_xi_query_device_infos_iterator (/+const+/ xcb_input_xi_query_device_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_query_device_reply_t * xcb_input_xi_query_device_reply
 ** 
 ** @param xcb_connection_t                    *c
 ** @param xcb_input_xi_query_device_cookie_t   cookie
 ** @param xcb_generic_error_t                **e
 ** @returns xcb_input_xi_query_device_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_query_device_reply_t *
xcb_input_xi_query_device_reply (xcb_connection_t                    *c  /**< */,
                                 xcb_input_xi_query_device_cookie_t   cookie  /**< */,
                                 xcb_generic_error_t                **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_xi_set_focus_checked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_window_t           window
 ** @param xcb_timestamp_t        time
 ** @param xcb_input_device_id_t  deviceid
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_xi_set_focus_checked (xcb_connection_t      *c  /**< */,
                                xcb_window_t           window  /**< */,
                                xcb_timestamp_t        time  /**< */,
                                xcb_input_device_id_t  deviceid  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_xi_set_focus
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_window_t           window
 ** @param xcb_timestamp_t        time
 ** @param xcb_input_device_id_t  deviceid
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_xi_set_focus (xcb_connection_t      *c  /**< */,
                        xcb_window_t           window  /**< */,
                        xcb_timestamp_t        time  /**< */,
                        xcb_input_device_id_t  deviceid  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_get_focus_cookie_t xcb_input_xi_get_focus
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_input_device_id_t  deviceid
 ** @returns xcb_input_xi_get_focus_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_get_focus_cookie_t
xcb_input_xi_get_focus (xcb_connection_t      *c  /**< */,
                        xcb_input_device_id_t  deviceid  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_get_focus_cookie_t xcb_input_xi_get_focus_unchecked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_input_device_id_t  deviceid
 ** @returns xcb_input_xi_get_focus_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_get_focus_cookie_t
xcb_input_xi_get_focus_unchecked (xcb_connection_t      *c  /**< */,
                                  xcb_input_device_id_t  deviceid  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_get_focus_reply_t * xcb_input_xi_get_focus_reply
 ** 
 ** @param xcb_connection_t                 *c
 ** @param xcb_input_xi_get_focus_cookie_t   cookie
 ** @param xcb_generic_error_t             **e
 ** @returns xcb_input_xi_get_focus_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_get_focus_reply_t *
xcb_input_xi_get_focus_reply (xcb_connection_t                 *c  /**< */,
                              xcb_input_xi_get_focus_cookie_t   cookie  /**< */,
                              xcb_generic_error_t             **e  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_grab_device_cookie_t xcb_input_xi_grab_device
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_window_t           window
 ** @param xcb_timestamp_t        time
 ** @param xcb_cursor_t           cursor
 ** @param xcb_input_device_id_t  deviceid
 ** @param ubyte                  mode
 ** @param ubyte                  paired_device_mode
 ** @param bool                   owner_events
 ** @param ushort                 mask_len
 ** @param /+const+/ uint        *mask
 ** @returns xcb_input_xi_grab_device_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_grab_device_cookie_t
xcb_input_xi_grab_device (xcb_connection_t      *c  /**< */,
                          xcb_window_t           window  /**< */,
                          xcb_timestamp_t        time  /**< */,
                          xcb_cursor_t           cursor  /**< */,
                          xcb_input_device_id_t  deviceid  /**< */,
                          ubyte                  mode  /**< */,
                          ubyte                  paired_device_mode  /**< */,
                          bool                   owner_events  /**< */,
                          ushort                 mask_len  /**< */,
                          /+const+/ uint        *mask  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_grab_device_cookie_t xcb_input_xi_grab_device_unchecked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_window_t           window
 ** @param xcb_timestamp_t        time
 ** @param xcb_cursor_t           cursor
 ** @param xcb_input_device_id_t  deviceid
 ** @param ubyte                  mode
 ** @param ubyte                  paired_device_mode
 ** @param bool                   owner_events
 ** @param ushort                 mask_len
 ** @param /+const+/ uint        *mask
 ** @returns xcb_input_xi_grab_device_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_grab_device_cookie_t
xcb_input_xi_grab_device_unchecked (xcb_connection_t      *c  /**< */,
                                    xcb_window_t           window  /**< */,
                                    xcb_timestamp_t        time  /**< */,
                                    xcb_cursor_t           cursor  /**< */,
                                    xcb_input_device_id_t  deviceid  /**< */,
                                    ubyte                  mode  /**< */,
                                    ubyte                  paired_device_mode  /**< */,
                                    bool                   owner_events  /**< */,
                                    ushort                 mask_len  /**< */,
                                    /+const+/ uint        *mask  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_grab_device_reply_t * xcb_input_xi_grab_device_reply
 ** 
 ** @param xcb_connection_t                   *c
 ** @param xcb_input_xi_grab_device_cookie_t   cookie
 ** @param xcb_generic_error_t               **e
 ** @returns xcb_input_xi_grab_device_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_grab_device_reply_t *
xcb_input_xi_grab_device_reply (xcb_connection_t                   *c  /**< */,
                                xcb_input_xi_grab_device_cookie_t   cookie  /**< */,
                                xcb_generic_error_t               **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_xi_ungrab_device_checked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_timestamp_t        time
 ** @param xcb_input_device_id_t  deviceid
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_xi_ungrab_device_checked (xcb_connection_t      *c  /**< */,
                                    xcb_timestamp_t        time  /**< */,
                                    xcb_input_device_id_t  deviceid  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_xi_ungrab_device
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_timestamp_t        time
 ** @param xcb_input_device_id_t  deviceid
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_xi_ungrab_device (xcb_connection_t      *c  /**< */,
                            xcb_timestamp_t        time  /**< */,
                            xcb_input_device_id_t  deviceid  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_xi_allow_events_checked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_timestamp_t        time
 ** @param xcb_input_device_id_t  deviceid
 ** @param ubyte                  event_mode
 ** @param uint                   touchid
 ** @param xcb_window_t           grab_window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_xi_allow_events_checked (xcb_connection_t      *c  /**< */,
                                   xcb_timestamp_t        time  /**< */,
                                   xcb_input_device_id_t  deviceid  /**< */,
                                   ubyte                  event_mode  /**< */,
                                   uint                   touchid  /**< */,
                                   xcb_window_t           grab_window  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_xi_allow_events
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_timestamp_t        time
 ** @param xcb_input_device_id_t  deviceid
 ** @param ubyte                  event_mode
 ** @param uint                   touchid
 ** @param xcb_window_t           grab_window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_xi_allow_events (xcb_connection_t      *c  /**< */,
                           xcb_timestamp_t        time  /**< */,
                           xcb_input_device_id_t  deviceid  /**< */,
                           ubyte                  event_mode  /**< */,
                           uint                   touchid  /**< */,
                           xcb_window_t           grab_window  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_grab_modifier_info_next
 ** 
 ** @param xcb_input_grab_modifier_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_grab_modifier_info_next (xcb_input_grab_modifier_info_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_grab_modifier_info_end
 ** 
 ** @param xcb_input_grab_modifier_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_grab_modifier_info_end (xcb_input_grab_modifier_info_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_passive_grab_device_cookie_t xcb_input_xi_passive_grab_device
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_timestamp_t        time
 ** @param xcb_window_t           grab_window
 ** @param xcb_cursor_t           cursor
 ** @param uint                   detail
 ** @param xcb_input_device_id_t  deviceid
 ** @param ushort                 num_modifiers
 ** @param ushort                 mask_len
 ** @param ubyte                  grab_type
 ** @param ubyte                  grab_mode
 ** @param ubyte                  paired_device_mode
 ** @param bool                   owner_events
 ** @param /+const+/ uint        *mask
 ** @param /+const+/ uint        *modifiers
 ** @returns xcb_input_xi_passive_grab_device_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_passive_grab_device_cookie_t
xcb_input_xi_passive_grab_device (xcb_connection_t      *c  /**< */,
                                  xcb_timestamp_t        time  /**< */,
                                  xcb_window_t           grab_window  /**< */,
                                  xcb_cursor_t           cursor  /**< */,
                                  uint                   detail  /**< */,
                                  xcb_input_device_id_t  deviceid  /**< */,
                                  ushort                 num_modifiers  /**< */,
                                  ushort                 mask_len  /**< */,
                                  ubyte                  grab_type  /**< */,
                                  ubyte                  grab_mode  /**< */,
                                  ubyte                  paired_device_mode  /**< */,
                                  bool                   owner_events  /**< */,
                                  /+const+/ uint        *mask  /**< */,
                                  /+const+/ uint        *modifiers  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_passive_grab_device_cookie_t xcb_input_xi_passive_grab_device_unchecked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_timestamp_t        time
 ** @param xcb_window_t           grab_window
 ** @param xcb_cursor_t           cursor
 ** @param uint                   detail
 ** @param xcb_input_device_id_t  deviceid
 ** @param ushort                 num_modifiers
 ** @param ushort                 mask_len
 ** @param ubyte                  grab_type
 ** @param ubyte                  grab_mode
 ** @param ubyte                  paired_device_mode
 ** @param bool                   owner_events
 ** @param /+const+/ uint        *mask
 ** @param /+const+/ uint        *modifiers
 ** @returns xcb_input_xi_passive_grab_device_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_passive_grab_device_cookie_t
xcb_input_xi_passive_grab_device_unchecked (xcb_connection_t      *c  /**< */,
                                            xcb_timestamp_t        time  /**< */,
                                            xcb_window_t           grab_window  /**< */,
                                            xcb_cursor_t           cursor  /**< */,
                                            uint                   detail  /**< */,
                                            xcb_input_device_id_t  deviceid  /**< */,
                                            ushort                 num_modifiers  /**< */,
                                            ushort                 mask_len  /**< */,
                                            ubyte                  grab_type  /**< */,
                                            ubyte                  grab_mode  /**< */,
                                            ubyte                  paired_device_mode  /**< */,
                                            bool                   owner_events  /**< */,
                                            /+const+/ uint        *mask  /**< */,
                                            /+const+/ uint        *modifiers  /**< */);


/*****************************************************************************
 **
 ** xcb_input_grab_modifier_info_t * xcb_input_xi_passive_grab_device_modifiers
 ** 
 ** @param /+const+/ xcb_input_xi_passive_grab_device_reply_t *R
 ** @returns xcb_input_grab_modifier_info_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_grab_modifier_info_t *
xcb_input_xi_passive_grab_device_modifiers (/+const+/ xcb_input_xi_passive_grab_device_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_xi_passive_grab_device_modifiers_length
 ** 
 ** @param /+const+/ xcb_input_xi_passive_grab_device_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_xi_passive_grab_device_modifiers_length (/+const+/ xcb_input_xi_passive_grab_device_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_grab_modifier_info_iterator_t xcb_input_xi_passive_grab_device_modifiers_iterator
 ** 
 ** @param /+const+/ xcb_input_xi_passive_grab_device_reply_t *R
 ** @returns xcb_input_grab_modifier_info_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_grab_modifier_info_iterator_t
xcb_input_xi_passive_grab_device_modifiers_iterator (/+const+/ xcb_input_xi_passive_grab_device_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_passive_grab_device_reply_t * xcb_input_xi_passive_grab_device_reply
 ** 
 ** @param xcb_connection_t                           *c
 ** @param xcb_input_xi_passive_grab_device_cookie_t   cookie
 ** @param xcb_generic_error_t                       **e
 ** @returns xcb_input_xi_passive_grab_device_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_passive_grab_device_reply_t *
xcb_input_xi_passive_grab_device_reply (xcb_connection_t                           *c  /**< */,
                                        xcb_input_xi_passive_grab_device_cookie_t   cookie  /**< */,
                                        xcb_generic_error_t                       **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_xi_passive_ungrab_device_checked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_window_t           grab_window
 ** @param uint                   detail
 ** @param xcb_input_device_id_t  deviceid
 ** @param ushort                 num_modifiers
 ** @param ubyte                  grab_type
 ** @param /+const+/ uint        *modifiers
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_xi_passive_ungrab_device_checked (xcb_connection_t      *c  /**< */,
                                            xcb_window_t           grab_window  /**< */,
                                            uint                   detail  /**< */,
                                            xcb_input_device_id_t  deviceid  /**< */,
                                            ushort                 num_modifiers  /**< */,
                                            ubyte                  grab_type  /**< */,
                                            /+const+/ uint        *modifiers  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_xi_passive_ungrab_device
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_window_t           grab_window
 ** @param uint                   detail
 ** @param xcb_input_device_id_t  deviceid
 ** @param ushort                 num_modifiers
 ** @param ubyte                  grab_type
 ** @param /+const+/ uint        *modifiers
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_xi_passive_ungrab_device (xcb_connection_t      *c  /**< */,
                                    xcb_window_t           grab_window  /**< */,
                                    uint                   detail  /**< */,
                                    xcb_input_device_id_t  deviceid  /**< */,
                                    ushort                 num_modifiers  /**< */,
                                    ubyte                  grab_type  /**< */,
                                    /+const+/ uint        *modifiers  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_list_properties_cookie_t xcb_input_xi_list_properties
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_input_device_id_t  deviceid
 ** @returns xcb_input_xi_list_properties_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_list_properties_cookie_t
xcb_input_xi_list_properties (xcb_connection_t      *c  /**< */,
                              xcb_input_device_id_t  deviceid  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_list_properties_cookie_t xcb_input_xi_list_properties_unchecked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_input_device_id_t  deviceid
 ** @returns xcb_input_xi_list_properties_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_list_properties_cookie_t
xcb_input_xi_list_properties_unchecked (xcb_connection_t      *c  /**< */,
                                        xcb_input_device_id_t  deviceid  /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_input_xi_list_properties_properties
 ** 
 ** @param /+const+/ xcb_input_xi_list_properties_reply_t *R
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
extern(C) xcb_atom_t *
xcb_input_xi_list_properties_properties (/+const+/ xcb_input_xi_list_properties_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_xi_list_properties_properties_length
 ** 
 ** @param /+const+/ xcb_input_xi_list_properties_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_xi_list_properties_properties_length (/+const+/ xcb_input_xi_list_properties_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_atom_iterator_t xcb_input_xi_list_properties_properties_iterator
 ** 
 ** @param /+const+/ xcb_input_xi_list_properties_reply_t *R
 ** @returns xcb_atom_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_atom_iterator_t
xcb_input_xi_list_properties_properties_iterator (/+const+/ xcb_input_xi_list_properties_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_list_properties_reply_t * xcb_input_xi_list_properties_reply
 ** 
 ** @param xcb_connection_t                       *c
 ** @param xcb_input_xi_list_properties_cookie_t   cookie
 ** @param xcb_generic_error_t                   **e
 ** @returns xcb_input_xi_list_properties_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_list_properties_reply_t *
xcb_input_xi_list_properties_reply (xcb_connection_t                       *c  /**< */,
                                    xcb_input_xi_list_properties_cookie_t   cookie  /**< */,
                                    xcb_generic_error_t                   **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_xi_change_property_checked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_input_device_id_t  deviceid
 ** @param ubyte                  mode
 ** @param ubyte                  format
 ** @param xcb_atom_t             property
 ** @param xcb_atom_t             type
 ** @param uint                   num_items
 ** @param /+const+/ ubyte       *data8
 ** @param /+const+/ ushort      *data16
 ** @param /+const+/ uint        *data32
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_xi_change_property_checked (xcb_connection_t      *c  /**< */,
                                      xcb_input_device_id_t  deviceid  /**< */,
                                      ubyte                  mode  /**< */,
                                      ubyte                  format  /**< */,
                                      xcb_atom_t             property  /**< */,
                                      xcb_atom_t             type  /**< */,
                                      uint                   num_items  /**< */,
                                      /+const+/ ubyte       *data8  /**< */,
                                      /+const+/ ushort      *data16  /**< */,
                                      /+const+/ uint        *data32  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_xi_change_property
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_input_device_id_t  deviceid
 ** @param ubyte                  mode
 ** @param ubyte                  format
 ** @param xcb_atom_t             property
 ** @param xcb_atom_t             type
 ** @param uint                   num_items
 ** @param /+const+/ ubyte       *data8
 ** @param /+const+/ ushort      *data16
 ** @param /+const+/ uint        *data32
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_xi_change_property (xcb_connection_t      *c  /**< */,
                              xcb_input_device_id_t  deviceid  /**< */,
                              ubyte                  mode  /**< */,
                              ubyte                  format  /**< */,
                              xcb_atom_t             property  /**< */,
                              xcb_atom_t             type  /**< */,
                              uint                   num_items  /**< */,
                              /+const+/ ubyte       *data8  /**< */,
                              /+const+/ ushort      *data16  /**< */,
                              /+const+/ uint        *data32  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_xi_delete_property_checked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_input_device_id_t  deviceid
 ** @param xcb_atom_t             property
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_xi_delete_property_checked (xcb_connection_t      *c  /**< */,
                                      xcb_input_device_id_t  deviceid  /**< */,
                                      xcb_atom_t             property  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_xi_delete_property
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_input_device_id_t  deviceid
 ** @param xcb_atom_t             property
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_xi_delete_property (xcb_connection_t      *c  /**< */,
                              xcb_input_device_id_t  deviceid  /**< */,
                              xcb_atom_t             property  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_get_property_cookie_t xcb_input_xi_get_property
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_input_device_id_t  deviceid
 ** @param bool                   _delete
 ** @param xcb_atom_t             property
 ** @param xcb_atom_t             type
 ** @param uint                   offset
 ** @param uint                   len
 ** @returns xcb_input_xi_get_property_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_get_property_cookie_t
xcb_input_xi_get_property (xcb_connection_t      *c  /**< */,
                           xcb_input_device_id_t  deviceid  /**< */,
                           bool                   _delete  /**< */,
                           xcb_atom_t             property  /**< */,
                           xcb_atom_t             type  /**< */,
                           uint                   offset  /**< */,
                           uint                   len  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_get_property_cookie_t xcb_input_xi_get_property_unchecked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_input_device_id_t  deviceid
 ** @param bool                   _delete
 ** @param xcb_atom_t             property
 ** @param xcb_atom_t             type
 ** @param uint                   offset
 ** @param uint                   len
 ** @returns xcb_input_xi_get_property_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_get_property_cookie_t
xcb_input_xi_get_property_unchecked (xcb_connection_t      *c  /**< */,
                                     xcb_input_device_id_t  deviceid  /**< */,
                                     bool                   _delete  /**< */,
                                     xcb_atom_t             property  /**< */,
                                     xcb_atom_t             type  /**< */,
                                     uint                   offset  /**< */,
                                     uint                   len  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_input_xi_get_property_data_8
 ** 
 ** @param /+const+/ xcb_input_xi_get_property_reply_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
extern(C) ubyte *
xcb_input_xi_get_property_data_8 (/+const+/ xcb_input_xi_get_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_xi_get_property_data_8_length
 ** 
 ** @param /+const+/ xcb_input_xi_get_property_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_xi_get_property_data_8_length (/+const+/ xcb_input_xi_get_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_xi_get_property_data_8_end
 ** 
 ** @param /+const+/ xcb_input_xi_get_property_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_xi_get_property_data_8_end (/+const+/ xcb_input_xi_get_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** ushort * xcb_input_xi_get_property_data_16
 ** 
 ** @param /+const+/ xcb_input_xi_get_property_reply_t *R
 ** @returns ushort *
 **
 *****************************************************************************/
 
extern(C) ushort *
xcb_input_xi_get_property_data_16 (/+const+/ xcb_input_xi_get_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_xi_get_property_data_16_length
 ** 
 ** @param /+const+/ xcb_input_xi_get_property_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_xi_get_property_data_16_length (/+const+/ xcb_input_xi_get_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_xi_get_property_data_16_end
 ** 
 ** @param /+const+/ xcb_input_xi_get_property_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_xi_get_property_data_16_end (/+const+/ xcb_input_xi_get_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_input_xi_get_property_data_32
 ** 
 ** @param /+const+/ xcb_input_xi_get_property_reply_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
extern(C) uint *
xcb_input_xi_get_property_data_32 (/+const+/ xcb_input_xi_get_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_xi_get_property_data_32_length
 ** 
 ** @param /+const+/ xcb_input_xi_get_property_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_xi_get_property_data_32_length (/+const+/ xcb_input_xi_get_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_xi_get_property_data_32_end
 ** 
 ** @param /+const+/ xcb_input_xi_get_property_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_xi_get_property_data_32_end (/+const+/ xcb_input_xi_get_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_get_property_reply_t * xcb_input_xi_get_property_reply
 ** 
 ** @param xcb_connection_t                    *c
 ** @param xcb_input_xi_get_property_cookie_t   cookie
 ** @param xcb_generic_error_t                **e
 ** @returns xcb_input_xi_get_property_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_get_property_reply_t *
xcb_input_xi_get_property_reply (xcb_connection_t                    *c  /**< */,
                                 xcb_input_xi_get_property_cookie_t   cookie  /**< */,
                                 xcb_generic_error_t                **e  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_get_selected_events_cookie_t xcb_input_xi_get_selected_events
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_input_xi_get_selected_events_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_get_selected_events_cookie_t
xcb_input_xi_get_selected_events (xcb_connection_t *c  /**< */,
                                  xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_get_selected_events_cookie_t xcb_input_xi_get_selected_events_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_input_xi_get_selected_events_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_get_selected_events_cookie_t
xcb_input_xi_get_selected_events_unchecked (xcb_connection_t *c  /**< */,
                                            xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_xi_get_selected_events_masks_length
 ** 
 ** @param /+const+/ xcb_input_xi_get_selected_events_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_xi_get_selected_events_masks_length (/+const+/ xcb_input_xi_get_selected_events_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_event_mask_iterator_t xcb_input_xi_get_selected_events_masks_iterator
 ** 
 ** @param /+const+/ xcb_input_xi_get_selected_events_reply_t *R
 ** @returns xcb_input_event_mask_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_event_mask_iterator_t
xcb_input_xi_get_selected_events_masks_iterator (/+const+/ xcb_input_xi_get_selected_events_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_xi_get_selected_events_reply_t * xcb_input_xi_get_selected_events_reply
 ** 
 ** @param xcb_connection_t                           *c
 ** @param xcb_input_xi_get_selected_events_cookie_t   cookie
 ** @param xcb_generic_error_t                       **e
 ** @returns xcb_input_xi_get_selected_events_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_xi_get_selected_events_reply_t *
xcb_input_xi_get_selected_events_reply (xcb_connection_t                           *c  /**< */,
                                        xcb_input_xi_get_selected_events_cookie_t   cookie  /**< */,
                                        xcb_generic_error_t                       **e  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_barrier_release_pointer_info_next
 ** 
 ** @param xcb_input_barrier_release_pointer_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_barrier_release_pointer_info_next (xcb_input_barrier_release_pointer_info_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_barrier_release_pointer_info_end
 ** 
 ** @param xcb_input_barrier_release_pointer_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_barrier_release_pointer_info_end (xcb_input_barrier_release_pointer_info_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_xi_barrier_release_pointer_checked
 ** 
 ** @param xcb_connection_t                                   *c
 ** @param uint                                                num_barriers
 ** @param /+const+/ xcb_input_barrier_release_pointer_info_t *barriers
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_xi_barrier_release_pointer_checked (xcb_connection_t                                   *c  /**< */,
                                              uint                                                num_barriers  /**< */,
                                              /+const+/ xcb_input_barrier_release_pointer_info_t *barriers  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_input_xi_barrier_release_pointer
 ** 
 ** @param xcb_connection_t                                   *c
 ** @param uint                                                num_barriers
 ** @param /+const+/ xcb_input_barrier_release_pointer_info_t *barriers
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_xi_barrier_release_pointer (xcb_connection_t                                   *c  /**< */,
                                      uint                                                num_barriers  /**< */,
                                      /+const+/ xcb_input_barrier_release_pointer_info_t *barriers  /**< */);


/*****************************************************************************
 **
 ** void xcb_input_hierarchy_info_next
 ** 
 ** @param xcb_input_hierarchy_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_hierarchy_info_next (xcb_input_hierarchy_info_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_hierarchy_info_end
 ** 
 ** @param xcb_input_hierarchy_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_hierarchy_info_end (xcb_input_hierarchy_info_iterator_t i  /**< */);



/**
 * @}
 */
