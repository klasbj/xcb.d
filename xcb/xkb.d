/*
 * This file generated automatically from xkb.xml by c-client.xsl using XSLT.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_xkb_API XCB xkb API
 * @brief xkb XCB Protocol Implementation.
 * @{
 **/


module xcb.xkb;

import xcb.xcb;
import xcb.xproto;

const int XCB_XKB_MAJOR_VERSION =1;
const int XCB_XKB_MINOR_VERSION =0;
  
extern(C) extern xcb_extension_t xcb_xkb_id;

enum :int{
    XCB_XKB_CONST_MAX_LEGAL_KEY_CODE = 255,
    XCB_XKB_CONST_PER_KEY_BIT_ARRAY_SIZE = 32,
    XCB_XKB_CONST_KEY_NAME_LENGTH = 4
};

enum :int{
    XCB_XKB_EVENT_TYPE_NEW_KEYBOARD_NOTIFY = (1 << 0),
    XCB_XKB_EVENT_TYPE_MAP_NOTIFY = (1 << 1),
    XCB_XKB_EVENT_TYPE_STATE_NOTIFY = (1 << 2),
    XCB_XKB_EVENT_TYPE_CONTROLS_NOTIFY = (1 << 3),
    XCB_XKB_EVENT_TYPE_INDICATOR_STATE_NOTIFY = (1 << 4),
    XCB_XKB_EVENT_TYPE_INDICATOR_MAP_NOTIFY = (1 << 5),
    XCB_XKB_EVENT_TYPE_NAMES_NOTIFY = (1 << 6),
    XCB_XKB_EVENT_TYPE_COMPAT_MAP_NOTIFY = (1 << 7),
    XCB_XKB_EVENT_TYPE_BELL_NOTIFY = (1 << 8),
    XCB_XKB_EVENT_TYPE_ACTION_MESSAGE = (1 << 9),
    XCB_XKB_EVENT_TYPE_ACCESS_X_NOTIFY = (1 << 10),
    XCB_XKB_EVENT_TYPE_EXTENSION_DEVICE_NOTIFY = (1 << 11)
};

enum :int{
    XCB_XKB_NKN_DETAIL_KEYCODES = (1 << 0),
    XCB_XKB_NKN_DETAIL_GEOMETRY = (1 << 1),
    XCB_XKB_NKN_DETAIL_DEVICE_ID = (1 << 2)
};

enum :int{
    XCB_XKB_AXN_DETAIL_SK_PRESS = (1 << 0),
    XCB_XKB_AXN_DETAIL_SK_ACCEPT = (1 << 1),
    XCB_XKB_AXN_DETAIL_SK_REJECT = (1 << 2),
    XCB_XKB_AXN_DETAIL_SK_RELEASE = (1 << 3),
    XCB_XKB_AXN_DETAIL_BK_ACCEPT = (1 << 4),
    XCB_XKB_AXN_DETAIL_BK_REJECT = (1 << 5),
    XCB_XKB_AXN_DETAIL_AXK_WARNING = (1 << 6)
};

enum :int{
    XCB_XKB_MAP_PART_KEY_TYPES = (1 << 0),
    XCB_XKB_MAP_PART_KEY_SYMS = (1 << 1),
    XCB_XKB_MAP_PART_MODIFIER_MAP = (1 << 2),
    XCB_XKB_MAP_PART_EXPLICIT_COMPONENTS = (1 << 3),
    XCB_XKB_MAP_PART_KEY_ACTIONS = (1 << 4),
    XCB_XKB_MAP_PART_KEY_BEHAVIORS = (1 << 5),
    XCB_XKB_MAP_PART_VIRTUAL_MODS = (1 << 6),
    XCB_XKB_MAP_PART_VIRTUAL_MOD_MAP = (1 << 7)
};

enum :int{
    XCB_XKB_SET_MAP_FLAGS_RESIZE_TYPES = (1 << 0),
    XCB_XKB_SET_MAP_FLAGS_RECOMPUTE_ACTIONS = (1 << 1)
};

enum :int{
    XCB_XKB_STATE_PART_MODIFIER_STATE = (1 << 0),
    XCB_XKB_STATE_PART_MODIFIER_BASE = (1 << 1),
    XCB_XKB_STATE_PART_MODIFIER_LATCH = (1 << 2),
    XCB_XKB_STATE_PART_MODIFIER_LOCK = (1 << 3),
    XCB_XKB_STATE_PART_GROUP_STATE = (1 << 4),
    XCB_XKB_STATE_PART_GROUP_BASE = (1 << 5),
    XCB_XKB_STATE_PART_GROUP_LATCH = (1 << 6),
    XCB_XKB_STATE_PART_GROUP_LOCK = (1 << 7),
    XCB_XKB_STATE_PART_COMPAT_STATE = (1 << 8),
    XCB_XKB_STATE_PART_GRAB_MODS = (1 << 9),
    XCB_XKB_STATE_PART_COMPAT_GRAB_MODS = (1 << 10),
    XCB_XKB_STATE_PART_LOOKUP_MODS = (1 << 11),
    XCB_XKB_STATE_PART_COMPAT_LOOKUP_MODS = (1 << 12),
    XCB_XKB_STATE_PART_POINTER_BUTTONS = (1 << 13)
};

enum :int{
    XCB_XKB_BOOL_CTRL_REPEAT_KEYS = (1 << 0),
    XCB_XKB_BOOL_CTRL_SLOW_KEYS = (1 << 1),
    XCB_XKB_BOOL_CTRL_BOUNCE_KEYS = (1 << 2),
    XCB_XKB_BOOL_CTRL_STICKY_KEYS = (1 << 3),
    XCB_XKB_BOOL_CTRL_MOUSE_KEYS = (1 << 4),
    XCB_XKB_BOOL_CTRL_MOUSE_KEYS_ACCEL = (1 << 5),
    XCB_XKB_BOOL_CTRL_ACCESS_X_KEYS = (1 << 6),
    XCB_XKB_BOOL_CTRL_ACCESS_X_TIMEOUT_MASK = (1 << 7),
    XCB_XKB_BOOL_CTRL_ACCESS_X_FEEDBACK_MASK = (1 << 8),
    XCB_XKB_BOOL_CTRL_AUDIBLE_BELL_MASK = (1 << 9),
    XCB_XKB_BOOL_CTRL_OVERLAY_1_MASK = (1 << 10),
    XCB_XKB_BOOL_CTRL_OVERLAY_2_MASK = (1 << 11),
    XCB_XKB_BOOL_CTRL_IGNORE_GROUP_LOCK_MASK = (1 << 12)
};

enum :int{
    XCB_XKB_CONTROL_GROUPS_WRAP = (1 << 27),
    XCB_XKB_CONTROL_INTERNAL_MODS = (1 << 28),
    XCB_XKB_CONTROL_IGNORE_LOCK_MODS = (1 << 29),
    XCB_XKB_CONTROL_PER_KEY_REPEAT = (1 << 30),
    XCB_XKB_CONTROL_CONTROLS_ENABLED = (1 << 31)
};

enum :int{
    XCB_XKB_AX_OPTION_SK_PRESS_FB = (1 << 0),
    XCB_XKB_AX_OPTION_SK_ACCEPT_FB = (1 << 1),
    XCB_XKB_AX_OPTION_FEATURE_FB = (1 << 2),
    XCB_XKB_AX_OPTION_SLOW_WARN_FB = (1 << 3),
    XCB_XKB_AX_OPTION_INDICATOR_FB = (1 << 4),
    XCB_XKB_AX_OPTION_STICKY_KEYS_FB = (1 << 5),
    XCB_XKB_AX_OPTION_TWO_KEYS = (1 << 6),
    XCB_XKB_AX_OPTION_LATCH_TO_LOCK = (1 << 7),
    XCB_XKB_AX_OPTION_SK_RELEASE_FB = (1 << 8),
    XCB_XKB_AX_OPTION_SK_REJECT_FB = (1 << 9),
    XCB_XKB_AX_OPTION_BK_REJECT_FB = (1 << 10),
    XCB_XKB_AX_OPTION_DUMB_BELL = (1 << 11)
};

alias ushort xcb_xkb_device_spec_t;

/**
 * @brief xcb_xkb_device_spec_iterator_t
 **/
struct xcb_xkb_device_spec_iterator_t {
    xcb_xkb_device_spec_t *data; /**<  */
    int                    rem; /**<  */
    int                    index; /**<  */
} ;

enum :int{
    XCB_XKB_LED_CLASS_RESULT_KBD_FEEDBACK_CLASS = 0,
    XCB_XKB_LED_CLASS_RESULT_LED_FEEDBACK_CLASS = 4
};

enum :int{
    XCB_XKB_LED_CLASS_KBD_FEEDBACK_CLASS = 0,
    XCB_XKB_LED_CLASS_LED_FEEDBACK_CLASS = 4,
    XCB_XKB_LED_CLASS_DFLT_XI_CLASS = 768,
    XCB_XKB_LED_CLASS_ALL_XI_CLASSES = 1280
};

alias ushort xcb_xkb_led_class_spec_t;

/**
 * @brief xcb_xkb_led_class_spec_iterator_t
 **/
struct xcb_xkb_led_class_spec_iterator_t {
    xcb_xkb_led_class_spec_t *data; /**<  */
    int                       rem; /**<  */
    int                       index; /**<  */
} ;

enum :int{
    XCB_XKB_BELL_CLASS_RESULT_KBD_FEEDBACK_CLASS = 0,
    XCB_XKB_BELL_CLASS_RESULT_BELL_FEEDBACK_CLASS = 5
};

enum :int{
    XCB_XKB_BELL_CLASS_KBD_FEEDBACK_CLASS = 0,
    XCB_XKB_BELL_CLASS_BELL_FEEDBACK_CLASS = 5,
    XCB_XKB_BELL_CLASS_DFLT_XI_CLASS = 768
};

alias ushort xcb_xkb_bell_class_spec_t;

/**
 * @brief xcb_xkb_bell_class_spec_iterator_t
 **/
struct xcb_xkb_bell_class_spec_iterator_t {
    xcb_xkb_bell_class_spec_t *data; /**<  */
    int                        rem; /**<  */
    int                        index; /**<  */
} ;

enum :int{
    XCB_XKB_ID_USE_CORE_KBD = 256,
    XCB_XKB_ID_USE_CORE_PTR = 512,
    XCB_XKB_ID_DFLT_XI_CLASS = 768,
    XCB_XKB_ID_DFLT_XI_ID = 1024,
    XCB_XKB_ID_ALL_XI_CLASS = 1280,
    XCB_XKB_ID_ALL_XI_ID = 1536,
    XCB_XKB_ID_XI_NONE = 65280
};

alias ushort xcb_xkb_id_spec_t;

/**
 * @brief xcb_xkb_id_spec_iterator_t
 **/
struct xcb_xkb_id_spec_iterator_t {
    xcb_xkb_id_spec_t *data; /**<  */
    int                rem; /**<  */
    int                index; /**<  */
} ;

enum :int{
    XCB_XKB_GROUP_1 = 0,
    XCB_XKB_GROUP_2 = 1,
    XCB_XKB_GROUP_3 = 2,
    XCB_XKB_GROUP_4 = 3
};

enum :int{
    XCB_XKB_GROUPS_ANY = 254,
    XCB_XKB_GROUPS_ALL = 255
};

enum :int{
    XCB_XKB_SET_OF_GROUP_GROUP_1 = (1 << 0),
    XCB_XKB_SET_OF_GROUP_GROUP_2 = (1 << 1),
    XCB_XKB_SET_OF_GROUP_GROUP_3 = (1 << 2),
    XCB_XKB_SET_OF_GROUP_GROUP_4 = (1 << 3)
};

enum :int{
    XCB_XKB_SET_OF_GROUPS_ANY = (1 << 7)
};

enum :int{
    XCB_XKB_GROUPS_WRAP_WRAP_INTO_RANGE = 0,
    XCB_XKB_GROUPS_WRAP_CLAMP_INTO_RANGE = (1 << 6),
    XCB_XKB_GROUPS_WRAP_REDIRECT_INTO_RANGE = (1 << 7)
};

enum :int{
    XCB_XKB_V_MODS_HIGH_15 = (1 << 7),
    XCB_XKB_V_MODS_HIGH_14 = (1 << 6),
    XCB_XKB_V_MODS_HIGH_13 = (1 << 5),
    XCB_XKB_V_MODS_HIGH_12 = (1 << 4),
    XCB_XKB_V_MODS_HIGH_11 = (1 << 3),
    XCB_XKB_V_MODS_HIGH_10 = (1 << 2),
    XCB_XKB_V_MODS_HIGH_9 = (1 << 1),
    XCB_XKB_V_MODS_HIGH_8 = (1 << 0)
};

enum :int{
    XCB_XKB_V_MODS_LOW_7 = (1 << 7),
    XCB_XKB_V_MODS_LOW_6 = (1 << 6),
    XCB_XKB_V_MODS_LOW_5 = (1 << 5),
    XCB_XKB_V_MODS_LOW_4 = (1 << 4),
    XCB_XKB_V_MODS_LOW_3 = (1 << 3),
    XCB_XKB_V_MODS_LOW_2 = (1 << 2),
    XCB_XKB_V_MODS_LOW_1 = (1 << 1),
    XCB_XKB_V_MODS_LOW_0 = (1 << 0)
};

enum :int{
    XCB_XKB_V_MOD_15 = (1 << 15),
    XCB_XKB_V_MOD_14 = (1 << 14),
    XCB_XKB_V_MOD_13 = (1 << 13),
    XCB_XKB_V_MOD_12 = (1 << 12),
    XCB_XKB_V_MOD_11 = (1 << 11),
    XCB_XKB_V_MOD_10 = (1 << 10),
    XCB_XKB_V_MOD_9 = (1 << 9),
    XCB_XKB_V_MOD_8 = (1 << 8),
    XCB_XKB_V_MOD_7 = (1 << 7),
    XCB_XKB_V_MOD_6 = (1 << 6),
    XCB_XKB_V_MOD_5 = (1 << 5),
    XCB_XKB_V_MOD_4 = (1 << 4),
    XCB_XKB_V_MOD_3 = (1 << 3),
    XCB_XKB_V_MOD_2 = (1 << 2),
    XCB_XKB_V_MOD_1 = (1 << 1),
    XCB_XKB_V_MOD_0 = (1 << 0)
};

enum :int{
    XCB_XKB_EXPLICIT_V_MOD_MAP = (1 << 7),
    XCB_XKB_EXPLICIT_BEHAVIOR = (1 << 6),
    XCB_XKB_EXPLICIT_AUTO_REPEAT = (1 << 5),
    XCB_XKB_EXPLICIT_INTERPRET = (1 << 4),
    XCB_XKB_EXPLICIT_KEY_TYPE_4 = (1 << 3),
    XCB_XKB_EXPLICIT_KEY_TYPE_3 = (1 << 2),
    XCB_XKB_EXPLICIT_KEY_TYPE_2 = (1 << 1),
    XCB_XKB_EXPLICIT_KEY_TYPE_1 = (1 << 0)
};

enum :int{
    XCB_XKB_SYM_INTERPRET_MATCH_NONE_OF = 0,
    XCB_XKB_SYM_INTERPRET_MATCH_ANY_OF_OR_NONE = 1,
    XCB_XKB_SYM_INTERPRET_MATCH_ANY_OF = 2,
    XCB_XKB_SYM_INTERPRET_MATCH_ALL_OF = 3,
    XCB_XKB_SYM_INTERPRET_MATCH_EXACTLY = 4
};

enum :int{
    XCB_XKB_SYM_INTERP_MATCH_LEVEL_ONE_ONLY = (1 << 7),
    XCB_XKB_SYM_INTERP_MATCH_OP_MASK = 127
};

enum :int{
    XCB_XKB_IM_FLAG_NO_EXPLICIT = (1 << 7),
    XCB_XKB_IM_FLAG_NO_AUTOMATIC = (1 << 6),
    XCB_XKB_IM_FLAG_LED_DRIVES_KB = (1 << 5)
};

enum :int{
    XCB_XKB_IM_MODS_WHICH_USE_COMPAT = (1 << 4),
    XCB_XKB_IM_MODS_WHICH_USE_EFFECTIVE = (1 << 3),
    XCB_XKB_IM_MODS_WHICH_USE_LOCKED = (1 << 2),
    XCB_XKB_IM_MODS_WHICH_USE_LATCHED = (1 << 1),
    XCB_XKB_IM_MODS_WHICH_USE_BASE = (1 << 0)
};

enum :int{
    XCB_XKB_IM_GROUPS_WHICH_USE_COMPAT = (1 << 4),
    XCB_XKB_IM_GROUPS_WHICH_USE_EFFECTIVE = (1 << 3),
    XCB_XKB_IM_GROUPS_WHICH_USE_LOCKED = (1 << 2),
    XCB_XKB_IM_GROUPS_WHICH_USE_LATCHED = (1 << 1),
    XCB_XKB_IM_GROUPS_WHICH_USE_BASE = (1 << 0)
};

/**
 * @brief xcb_xkb_indicator_map_t
 **/
struct xcb_xkb_indicator_map_t {
    ubyte  flags; /**<  */
    ubyte  whichGroups; /**<  */
    ubyte  groups; /**<  */
    ubyte  whichMods; /**<  */
    ubyte  mods; /**<  */
    ubyte  realMods; /**<  */
    ushort vmods; /**<  */
    uint   ctrls; /**<  */
} ;

/**
 * @brief xcb_xkb_indicator_map_iterator_t
 **/
struct xcb_xkb_indicator_map_iterator_t {
    xcb_xkb_indicator_map_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
} ;

enum :int{
    XCB_XKB_CM_DETAIL_SYM_INTERP = (1 << 0),
    XCB_XKB_CM_DETAIL_GROUP_COMPAT = (1 << 1)
};

enum :int{
    XCB_XKB_NAME_DETAIL_KEYCODES = (1 << 0),
    XCB_XKB_NAME_DETAIL_GEOMETRY = (1 << 1),
    XCB_XKB_NAME_DETAIL_SYMBOLS = (1 << 2),
    XCB_XKB_NAME_DETAIL_PHYS_SYMBOLS = (1 << 3),
    XCB_XKB_NAME_DETAIL_TYPES = (1 << 4),
    XCB_XKB_NAME_DETAIL_COMPAT = (1 << 5),
    XCB_XKB_NAME_DETAIL_KEY_TYPE_NAMES = (1 << 6),
    XCB_XKB_NAME_DETAIL_KT_LEVEL_NAMES = (1 << 7),
    XCB_XKB_NAME_DETAIL_INDICATOR_NAMES = (1 << 8),
    XCB_XKB_NAME_DETAIL_KEY_NAMES = (1 << 9),
    XCB_XKB_NAME_DETAIL_KEY_ALIASES = (1 << 10),
    XCB_XKB_NAME_DETAIL_VIRTUAL_MOD_NAMES = (1 << 11),
    XCB_XKB_NAME_DETAIL_GROUP_NAMES = (1 << 12),
    XCB_XKB_NAME_DETAIL_RG_NAMES = (1 << 13)
};

enum :int{
    XCB_XKB_GBN_DETAIL_TYPES = (1 << 0),
    XCB_XKB_GBN_DETAIL_COMPAT_MAP = (1 << 1),
    XCB_XKB_GBN_DETAIL_CLIENT_SYMBOLS = (1 << 2),
    XCB_XKB_GBN_DETAIL_SERVER_SYMBOLS = (1 << 3),
    XCB_XKB_GBN_DETAIL_INDICATOR_MAPS = (1 << 4),
    XCB_XKB_GBN_DETAIL_KEY_NAMES = (1 << 5),
    XCB_XKB_GBN_DETAIL_GEOMETRY = (1 << 6),
    XCB_XKB_GBN_DETAIL_OTHER_NAMES = (1 << 7)
};

enum :int{
    XCB_XKB_XI_FEATURE_KEYBOARDS = (1 << 0),
    XCB_XKB_XI_FEATURE_BUTTON_ACTIONS = (1 << 1),
    XCB_XKB_XI_FEATURE_INDICATOR_NAMES = (1 << 2),
    XCB_XKB_XI_FEATURE_INDICATOR_MAPS = (1 << 3),
    XCB_XKB_XI_FEATURE_INDICATOR_STATE = (1 << 4)
};

enum :int{
    XCB_XKB_PER_CLIENT_FLAG_DETECTABLE_AUTO_REPEAT = (1 << 0),
    XCB_XKB_PER_CLIENT_FLAG_GRABS_USE_XKB_STATE = (1 << 1),
    XCB_XKB_PER_CLIENT_FLAG_AUTO_RESET_CONTROLS = (1 << 2),
    XCB_XKB_PER_CLIENT_FLAG_LOOKUP_STATE_WHEN_GRABBED = (1 << 3),
    XCB_XKB_PER_CLIENT_FLAG_SEND_EVENT_USES_XKB_STATE = (1 << 4)
};

/**
 * @brief xcb_xkb_mod_def_t
 **/
struct xcb_xkb_mod_def_t {
    ubyte  mask; /**<  */
    ubyte  realMods; /**<  */
    ushort vmods; /**<  */
} ;

/**
 * @brief xcb_xkb_mod_def_iterator_t
 **/
struct xcb_xkb_mod_def_iterator_t {
    xcb_xkb_mod_def_t *data; /**<  */
    int                rem; /**<  */
    int                index; /**<  */
} ;

/**
 * @brief xcb_xkb_key_name_t
 **/
struct xcb_xkb_key_name_t {
    char_t name[4]; /**<  */
} ;

/**
 * @brief xcb_xkb_key_name_iterator_t
 **/
struct xcb_xkb_key_name_iterator_t {
    xcb_xkb_key_name_t *data; /**<  */
    int                 rem; /**<  */
    int                 index; /**<  */
} ;

/**
 * @brief xcb_xkb_key_alias_t
 **/
struct xcb_xkb_key_alias_t {
    char_t real[4]; /**<  */
    char_t alias[4]; /**<  */
} ;

/**
 * @brief xcb_xkb_key_alias_iterator_t
 **/
struct xcb_xkb_key_alias_iterator_t {
    xcb_xkb_key_alias_t *data; /**<  */
    int                  rem; /**<  */
    int                  index; /**<  */
} ;

/**
 * @brief xcb_xkb_counted_string_16_t
 **/
struct xcb_xkb_counted_string_16_t {
    ushort length; /**<  */
} ;

/**
 * @brief xcb_xkb_counted_string_16_iterator_t
 **/
struct xcb_xkb_counted_string_16_iterator_t {
    xcb_xkb_counted_string_16_t *data; /**<  */
    int                          rem; /**<  */
    int                          index; /**<  */
} ;

/**
 * @brief xcb_xkb_kt_map_entry_t
 **/
struct xcb_xkb_kt_map_entry_t {
    bool   active; /**<  */
    ubyte  mods_mask; /**<  */
    ubyte  level; /**<  */
    ubyte  mods_mods; /**<  */
    ushort mods_vmods; /**<  */
    ubyte  pad0[2]; /**<  */
} ;

/**
 * @brief xcb_xkb_kt_map_entry_iterator_t
 **/
struct xcb_xkb_kt_map_entry_iterator_t {
    xcb_xkb_kt_map_entry_t *data; /**<  */
    int                     rem; /**<  */
    int                     index; /**<  */
} ;

/**
 * @brief xcb_xkb_key_type_t
 **/
struct xcb_xkb_key_type_t {
    ubyte  mods_mask; /**<  */
    ubyte  mods_mods; /**<  */
    ushort mods_vmods; /**<  */
    ubyte  numLevels; /**<  */
    ubyte  nMapEntries; /**<  */
    bool   hasPreserve; /**<  */
    ubyte  pad0; /**<  */
} ;

/**
 * @brief xcb_xkb_key_type_iterator_t
 **/
struct xcb_xkb_key_type_iterator_t {
    xcb_xkb_key_type_t *data; /**<  */
    int                 rem; /**<  */
    int                 index; /**<  */
} ;

/**
 * @brief xcb_xkb_key_sym_map_t
 **/
struct xcb_xkb_key_sym_map_t {
    ubyte  kt_index[4]; /**<  */
    ubyte  groupInfo; /**<  */
    ubyte  width; /**<  */
    ushort nSyms; /**<  */
} ;

/**
 * @brief xcb_xkb_key_sym_map_iterator_t
 **/
struct xcb_xkb_key_sym_map_iterator_t {
    xcb_xkb_key_sym_map_t *data; /**<  */
    int                    rem; /**<  */
    int                    index; /**<  */
} ;

/**
 * @brief xcb_xkb_common_behavior_t
 **/
struct xcb_xkb_common_behavior_t {
    ubyte type; /**<  */
    ubyte data; /**<  */
} ;

/**
 * @brief xcb_xkb_common_behavior_iterator_t
 **/
struct xcb_xkb_common_behavior_iterator_t {
    xcb_xkb_common_behavior_t *data; /**<  */
    int                        rem; /**<  */
    int                        index; /**<  */
} ;

/**
 * @brief xcb_xkb_default_behavior_t
 **/
struct xcb_xkb_default_behavior_t {
    ubyte type; /**<  */
    ubyte pad0; /**<  */
} ;

/**
 * @brief xcb_xkb_default_behavior_iterator_t
 **/
struct xcb_xkb_default_behavior_iterator_t {
    xcb_xkb_default_behavior_t *data; /**<  */
    int                         rem; /**<  */
    int                         index; /**<  */
} ;

alias xcb_xkb_default_behavior_t xcb_xkb_lock_behavior_t;

/**
 * @brief xcb_xkb_lock_behavior_iterator_t
 **/
struct xcb_xkb_lock_behavior_iterator_t {
    xcb_xkb_lock_behavior_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
} ;

/**
 * @brief xcb_xkb_radio_group_behavior_t
 **/
struct xcb_xkb_radio_group_behavior_t {
    ubyte type; /**<  */
    ubyte group; /**<  */
} ;

/**
 * @brief xcb_xkb_radio_group_behavior_iterator_t
 **/
struct xcb_xkb_radio_group_behavior_iterator_t {
    xcb_xkb_radio_group_behavior_t *data; /**<  */
    int                             rem; /**<  */
    int                             index; /**<  */
} ;

/**
 * @brief xcb_xkb_overlay_behavior_t
 **/
struct xcb_xkb_overlay_behavior_t {
    ubyte         type; /**<  */
    xcb_keycode_t key; /**<  */
} ;

/**
 * @brief xcb_xkb_overlay_behavior_iterator_t
 **/
struct xcb_xkb_overlay_behavior_iterator_t {
    xcb_xkb_overlay_behavior_t *data; /**<  */
    int                         rem; /**<  */
    int                         index; /**<  */
} ;

alias xcb_xkb_lock_behavior_t xcb_xkb_permament_lock_behavior_t;

/**
 * @brief xcb_xkb_permament_lock_behavior_iterator_t
 **/
struct xcb_xkb_permament_lock_behavior_iterator_t {
    xcb_xkb_permament_lock_behavior_t *data; /**<  */
    int                                rem; /**<  */
    int                                index; /**<  */
} ;

alias xcb_xkb_radio_group_behavior_t xcb_xkb_permament_radio_group_behavior_t;

/**
 * @brief xcb_xkb_permament_radio_group_behavior_iterator_t
 **/
struct xcb_xkb_permament_radio_group_behavior_iterator_t {
    xcb_xkb_permament_radio_group_behavior_t *data; /**<  */
    int                                       rem; /**<  */
    int                                       index; /**<  */
} ;

alias xcb_xkb_overlay_behavior_t xcb_xkb_permament_overlay_behavior_t;

/**
 * @brief xcb_xkb_permament_overlay_behavior_iterator_t
 **/
struct xcb_xkb_permament_overlay_behavior_iterator_t {
    xcb_xkb_permament_overlay_behavior_t *data; /**<  */
    int                                   rem; /**<  */
    int                                   index; /**<  */
} ;

/**
 * @brief xcb_xkb_behavior_t
 **/
union xcb_xkb_behavior_t {
    xcb_xkb_common_behavior_t                common; /**<  */
    xcb_xkb_default_behavior_t               default; /**<  */
    xcb_xkb_lock_behavior_t                  lock; /**<  */
    xcb_xkb_radio_group_behavior_t           radioGroup; /**<  */
    xcb_xkb_overlay_behavior_t               overlay1; /**<  */
    xcb_xkb_overlay_behavior_t               overlay2; /**<  */
    xcb_xkb_permament_lock_behavior_t        permamentLock; /**<  */
    xcb_xkb_permament_radio_group_behavior_t permamentRadioGroup; /**<  */
    xcb_xkb_permament_overlay_behavior_t     permamentOverlay1; /**<  */
    xcb_xkb_permament_overlay_behavior_t     permamentOverlay2; /**<  */
    ubyte                                    type; /**<  */
} ;

/**
 * @brief xcb_xkb_behavior_iterator_t
 **/
struct xcb_xkb_behavior_iterator_t {
    xcb_xkb_behavior_t *data; /**<  */
    int                 rem; /**<  */
    int                 index; /**<  */
} ;

enum :int{
    XCB_XKB_BEHAVIOR_TYPE_DEFAULT = 0,
    XCB_XKB_BEHAVIOR_TYPE_LOCK = 1,
    XCB_XKB_BEHAVIOR_TYPE_RADIO_GROUP = 2,
    XCB_XKB_BEHAVIOR_TYPE_OVERLAY_1 = 3,
    XCB_XKB_BEHAVIOR_TYPE_OVERLAY_2 = 4,
    XCB_XKB_BEHAVIOR_TYPE_PERMAMENT_LOCK = 129,
    XCB_XKB_BEHAVIOR_TYPE_PERMAMENT_RADIO_GROUP = 130,
    XCB_XKB_BEHAVIOR_TYPE_PERMAMENT_OVERLAY_1 = 131,
    XCB_XKB_BEHAVIOR_TYPE_PERMAMENT_OVERLAY_2 = 132
};

/**
 * @brief xcb_xkb_set_behavior_t
 **/
struct xcb_xkb_set_behavior_t {
    xcb_keycode_t      keycode; /**<  */
    xcb_xkb_behavior_t behavior; /**<  */
    ubyte              pad0; /**<  */
} ;

/**
 * @brief xcb_xkb_set_behavior_iterator_t
 **/
struct xcb_xkb_set_behavior_iterator_t {
    xcb_xkb_set_behavior_t *data; /**<  */
    int                     rem; /**<  */
    int                     index; /**<  */
} ;

/**
 * @brief xcb_xkb_set_explicit_t
 **/
struct xcb_xkb_set_explicit_t {
    xcb_keycode_t keycode; /**<  */
    ubyte         explicit; /**<  */
} ;

/**
 * @brief xcb_xkb_set_explicit_iterator_t
 **/
struct xcb_xkb_set_explicit_iterator_t {
    xcb_xkb_set_explicit_t *data; /**<  */
    int                     rem; /**<  */
    int                     index; /**<  */
} ;

/**
 * @brief xcb_xkb_key_mod_map_t
 **/
struct xcb_xkb_key_mod_map_t {
    xcb_keycode_t keycode; /**<  */
    ubyte         mods; /**<  */
} ;

/**
 * @brief xcb_xkb_key_mod_map_iterator_t
 **/
struct xcb_xkb_key_mod_map_iterator_t {
    xcb_xkb_key_mod_map_t *data; /**<  */
    int                    rem; /**<  */
    int                    index; /**<  */
} ;

/**
 * @brief xcb_xkb_key_v_mod_map_t
 **/
struct xcb_xkb_key_v_mod_map_t {
    xcb_keycode_t keycode; /**<  */
    ubyte         pad0; /**<  */
    ushort        vmods; /**<  */
} ;

/**
 * @brief xcb_xkb_key_v_mod_map_iterator_t
 **/
struct xcb_xkb_key_v_mod_map_iterator_t {
    xcb_xkb_key_v_mod_map_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
} ;

/**
 * @brief xcb_xkb_kt_set_map_entry_t
 **/
struct xcb_xkb_kt_set_map_entry_t {
    ubyte  level; /**<  */
    ubyte  realMods; /**<  */
    ushort virtualMods; /**<  */
} ;

/**
 * @brief xcb_xkb_kt_set_map_entry_iterator_t
 **/
struct xcb_xkb_kt_set_map_entry_iterator_t {
    xcb_xkb_kt_set_map_entry_t *data; /**<  */
    int                         rem; /**<  */
    int                         index; /**<  */
} ;

/**
 * @brief xcb_xkb_set_key_type_t
 **/
struct xcb_xkb_set_key_type_t {
    ubyte  mask; /**<  */
    ubyte  realMods; /**<  */
    ushort virtualMods; /**<  */
    ubyte  numLevels; /**<  */
    ubyte  nMapEntries; /**<  */
    bool   preserve; /**<  */
    ubyte  pad0; /**<  */
} ;

/**
 * @brief xcb_xkb_set_key_type_iterator_t
 **/
struct xcb_xkb_set_key_type_iterator_t {
    xcb_xkb_set_key_type_t *data; /**<  */
    int                     rem; /**<  */
    int                     index; /**<  */
} ;

alias char xcb_xkb_string8_t;

/**
 * @brief xcb_xkb_string8_iterator_t
 **/
struct xcb_xkb_string8_iterator_t {
    xcb_xkb_string8_t *data; /**<  */
    int                rem; /**<  */
    int                index; /**<  */
} ;

/**
 * @brief xcb_xkb_outline_t
 **/
struct xcb_xkb_outline_t {
    ubyte nPoints; /**<  */
    ubyte cornerRadius; /**<  */
    ubyte pad0[2]; /**<  */
} ;

/**
 * @brief xcb_xkb_outline_iterator_t
 **/
struct xcb_xkb_outline_iterator_t {
    xcb_xkb_outline_t *data; /**<  */
    int                rem; /**<  */
    int                index; /**<  */
} ;

/**
 * @brief xcb_xkb_shape_t
 **/
struct xcb_xkb_shape_t {
    xcb_atom_t name; /**<  */
    ubyte      nOutlines; /**<  */
    ubyte      primaryNdx; /**<  */
    ubyte      approxNdx; /**<  */
    ubyte      pad0; /**<  */
} ;

/**
 * @brief xcb_xkb_shape_iterator_t
 **/
struct xcb_xkb_shape_iterator_t {
    xcb_xkb_shape_t *data; /**<  */
    int              rem; /**<  */
    int              index; /**<  */
} ;

/**
 * @brief xcb_xkb_key_t
 **/
struct xcb_xkb_key_t {
    xcb_xkb_string8_t name[4]; /**<  */
    short gap; /**<  */
    ubyte shapeNdx; /**<  */
    ubyte colorNdx; /**<  */
} ;

/**
 * @brief xcb_xkb_key_iterator_t
 **/
struct xcb_xkb_key_iterator_t {
    xcb_xkb_key_t *data; /**<  */
    int            rem; /**<  */
    int            index; /**<  */
} ;

/**
 * @brief xcb_xkb_overlay_key_t
 **/
struct xcb_xkb_overlay_key_t {
    xcb_xkb_string8_t over[4]; /**<  */
    xcb_xkb_string8_t under[4]; /**<  */
} ;

/**
 * @brief xcb_xkb_overlay_key_iterator_t
 **/
struct xcb_xkb_overlay_key_iterator_t {
    xcb_xkb_overlay_key_t *data; /**<  */
    int                    rem; /**<  */
    int                    index; /**<  */
} ;

/**
 * @brief xcb_xkb_overlay_row_t
 **/
struct xcb_xkb_overlay_row_t {
    ubyte rowUnder; /**<  */
    ubyte nKeys; /**<  */
    ubyte pad0[2]; /**<  */
} ;

/**
 * @brief xcb_xkb_overlay_row_iterator_t
 **/
struct xcb_xkb_overlay_row_iterator_t {
    xcb_xkb_overlay_row_t *data; /**<  */
    int                    rem; /**<  */
    int                    index; /**<  */
} ;

/**
 * @brief xcb_xkb_overlay_t
 **/
struct xcb_xkb_overlay_t {
    xcb_atom_t name; /**<  */
    ubyte      nRows; /**<  */
    ubyte      pad0[3]; /**<  */
} ;

/**
 * @brief xcb_xkb_overlay_iterator_t
 **/
struct xcb_xkb_overlay_iterator_t {
    xcb_xkb_overlay_t *data; /**<  */
    int                rem; /**<  */
    int                index; /**<  */
} ;

/**
 * @brief xcb_xkb_row_t
 **/
struct xcb_xkb_row_t {
    short top; /**<  */
    short left; /**<  */
    ubyte nKeys; /**<  */
    bool  vertical; /**<  */
    ubyte pad0[2]; /**<  */
} ;

/**
 * @brief xcb_xkb_row_iterator_t
 **/
struct xcb_xkb_row_iterator_t {
    xcb_xkb_row_t *data; /**<  */
    int            rem; /**<  */
    int            index; /**<  */
} ;

enum :int{
    XCB_XKB_DOODAD_TYPE_OUTLINE = 1,
    XCB_XKB_DOODAD_TYPE_SOLID = 2,
    XCB_XKB_DOODAD_TYPE_TEXT = 3,
    XCB_XKB_DOODAD_TYPE_INDICATOR = 4,
    XCB_XKB_DOODAD_TYPE_LOGO = 5
};

/**
 * @brief xcb_xkb_listing_t
 **/
struct xcb_xkb_listing_t {
    ushort flags; /**<  */
    ushort length; /**<  */
} ;

/**
 * @brief xcb_xkb_listing_iterator_t
 **/
struct xcb_xkb_listing_iterator_t {
    xcb_xkb_listing_t *data; /**<  */
    int                rem; /**<  */
    int                index; /**<  */
} ;

/**
 * @brief xcb_xkb_device_led_info_t
 **/
struct xcb_xkb_device_led_info_t {
    xcb_xkb_led_class_spec_t ledClass; /**<  */
    xcb_xkb_id_spec_t        ledID; /**<  */
    uint                     namesPresent; /**<  */
    uint                     mapsPresent; /**<  */
    uint                     physIndicators; /**<  */
    uint                     state; /**<  */
} ;

/**
 * @brief xcb_xkb_device_led_info_iterator_t
 **/
struct xcb_xkb_device_led_info_iterator_t {
    xcb_xkb_device_led_info_t *data; /**<  */
    int                        rem; /**<  */
    int                        index; /**<  */
} ;

enum :int{
    XCB_XKB_ERROR_BAD_DEVICE = 255,
    XCB_XKB_ERROR_BAD_CLASS = 254,
    XCB_XKB_ERROR_BAD_ID = 253
};

/** Opcode for xcb_xkb_keyboard. */
const uint XCB_XKB_KEYBOARD = 0;

/**
 * @brief xcb_xkb_keyboard_error_t
 **/
struct xcb_xkb_keyboard_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
    uint   value; /**<  */
    ushort minorOpcode; /**<  */
    ubyte  majorOpcode; /**<  */
    ubyte  pad0[21]; /**<  */
} ;

enum :int{
    XCB_XKB_SA_CLEAR_LOCKS = (1 << 0),
    XCB_XKB_SA_LATCH_TO_LOCK = (1 << 1),
    XCB_XKB_SA_USE_MOD_MAP_MODS = (1 << 2),
    XCB_XKB_SA_GROUP_ABSOLUTE = (1 << 2)
};

enum :int{
    XCB_XKB_SA_TYPE_NO_ACTION = 0,
    XCB_XKB_SA_TYPE_SET_MODS = 1,
    XCB_XKB_SA_TYPE_LATCH_MODS = 2,
    XCB_XKB_SA_TYPE_LOCK_MODS = 3,
    XCB_XKB_SA_TYPE_SET_GROUP = 4,
    XCB_XKB_SA_TYPE_LATCH_GROUP = 5,
    XCB_XKB_SA_TYPE_LOCK_GROUP = 6,
    XCB_XKB_SA_TYPE_MOVE_PTR = 7,
    XCB_XKB_SA_TYPE_PTR_BTN = 8,
    XCB_XKB_SA_TYPE_LOCK_PTR_BTN = 9,
    XCB_XKB_SA_TYPE_SET_PTR_DFLT = 10,
    XCB_XKB_SA_TYPE_ISO_LOCK = 11,
    XCB_XKB_SA_TYPE_TERMINATE = 12,
    XCB_XKB_SA_TYPE_SWITCH_SCREEN = 13,
    XCB_XKB_SA_TYPE_SET_CONTROLS = 14,
    XCB_XKB_SA_TYPE_LOCK_CONTROLS = 15,
    XCB_XKB_SA_TYPE_ACTION_MESSAGE = 16,
    XCB_XKB_SA_TYPE_REDIRECT_KEY = 17,
    XCB_XKB_SA_TYPE_DEVICE_BTN = 18,
    XCB_XKB_SA_TYPE_LOCK_DEVICE_BTN = 19,
    XCB_XKB_SA_TYPE_DEVICE_VALUATOR = 20
};

/**
 * @brief xcb_xkb_sa_no_action_t
 **/
struct xcb_xkb_sa_no_action_t {
    ubyte type; /**<  */
    ubyte pad0[7]; /**<  */
} ;

/**
 * @brief xcb_xkb_sa_no_action_iterator_t
 **/
struct xcb_xkb_sa_no_action_iterator_t {
    xcb_xkb_sa_no_action_t *data; /**<  */
    int                     rem; /**<  */
    int                     index; /**<  */
} ;

/**
 * @brief xcb_xkb_sa_set_mods_t
 **/
struct xcb_xkb_sa_set_mods_t {
    ubyte type; /**<  */
    ubyte flags; /**<  */
    ubyte mask; /**<  */
    ubyte realMods; /**<  */
    ubyte vmodsHigh; /**<  */
    ubyte vmodsLow; /**<  */
    ubyte pad0[2]; /**<  */
} ;

/**
 * @brief xcb_xkb_sa_set_mods_iterator_t
 **/
struct xcb_xkb_sa_set_mods_iterator_t {
    xcb_xkb_sa_set_mods_t *data; /**<  */
    int                    rem; /**<  */
    int                    index; /**<  */
} ;

alias xcb_xkb_sa_set_mods_t xcb_xkb_sa_latch_mods_t;

/**
 * @brief xcb_xkb_sa_latch_mods_iterator_t
 **/
struct xcb_xkb_sa_latch_mods_iterator_t {
    xcb_xkb_sa_latch_mods_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
} ;

alias xcb_xkb_sa_set_mods_t xcb_xkb_sa_lock_mods_t;

/**
 * @brief xcb_xkb_sa_lock_mods_iterator_t
 **/
struct xcb_xkb_sa_lock_mods_iterator_t {
    xcb_xkb_sa_lock_mods_t *data; /**<  */
    int                     rem; /**<  */
    int                     index; /**<  */
} ;

/**
 * @brief xcb_xkb_sa_set_group_t
 **/
struct xcb_xkb_sa_set_group_t {
    ubyte type; /**<  */
    ubyte flags; /**<  */
    byte  group; /**<  */
    ubyte pad0[5]; /**<  */
} ;

/**
 * @brief xcb_xkb_sa_set_group_iterator_t
 **/
struct xcb_xkb_sa_set_group_iterator_t {
    xcb_xkb_sa_set_group_t *data; /**<  */
    int                     rem; /**<  */
    int                     index; /**<  */
} ;

alias xcb_xkb_sa_set_group_t xcb_xkb_sa_latch_group_t;

/**
 * @brief xcb_xkb_sa_latch_group_iterator_t
 **/
struct xcb_xkb_sa_latch_group_iterator_t {
    xcb_xkb_sa_latch_group_t *data; /**<  */
    int                       rem; /**<  */
    int                       index; /**<  */
} ;

alias xcb_xkb_sa_set_group_t xcb_xkb_sa_lock_group_t;

/**
 * @brief xcb_xkb_sa_lock_group_iterator_t
 **/
struct xcb_xkb_sa_lock_group_iterator_t {
    xcb_xkb_sa_lock_group_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
} ;

enum :int{
    XCB_XKB_SA_MOVE_PTR_FLAG_NO_ACCELERATION = (1 << 0),
    XCB_XKB_SA_MOVE_PTR_FLAG_MOVE_ABSOLUTE_X = (1 << 1),
    XCB_XKB_SA_MOVE_PTR_FLAG_MOVE_ABSOLUTE_Y = (1 << 2)
};

/**
 * @brief xcb_xkb_sa_move_ptr_t
 **/
struct xcb_xkb_sa_move_ptr_t {
    ubyte type; /**<  */
    ubyte flags; /**<  */
    byte  xHigh; /**<  */
    ubyte xLow; /**<  */
    byte  yHigh; /**<  */
    ubyte yLow; /**<  */
    ubyte pad0[2]; /**<  */
} ;

/**
 * @brief xcb_xkb_sa_move_ptr_iterator_t
 **/
struct xcb_xkb_sa_move_ptr_iterator_t {
    xcb_xkb_sa_move_ptr_t *data; /**<  */
    int                    rem; /**<  */
    int                    index; /**<  */
} ;

/**
 * @brief xcb_xkb_sa_ptr_btn_t
 **/
struct xcb_xkb_sa_ptr_btn_t {
    ubyte type; /**<  */
    ubyte flags; /**<  */
    ubyte count; /**<  */
    ubyte button; /**<  */
    ubyte pad0[4]; /**<  */
} ;

/**
 * @brief xcb_xkb_sa_ptr_btn_iterator_t
 **/
struct xcb_xkb_sa_ptr_btn_iterator_t {
    xcb_xkb_sa_ptr_btn_t *data; /**<  */
    int                   rem; /**<  */
    int                   index; /**<  */
} ;

/**
 * @brief xcb_xkb_sa_lock_ptr_btn_t
 **/
struct xcb_xkb_sa_lock_ptr_btn_t {
    ubyte type; /**<  */
    ubyte flags; /**<  */
    ubyte pad0; /**<  */
    ubyte button; /**<  */
    ubyte pad1[4]; /**<  */
} ;

/**
 * @brief xcb_xkb_sa_lock_ptr_btn_iterator_t
 **/
struct xcb_xkb_sa_lock_ptr_btn_iterator_t {
    xcb_xkb_sa_lock_ptr_btn_t *data; /**<  */
    int                        rem; /**<  */
    int                        index; /**<  */
} ;

enum :int{
    XCB_XKB_SA_SET_PTR_DFLT_FLAG_DFLT_BTN_ABSOLUTE = (1 << 2),
    XCB_XKB_SA_SET_PTR_DFLT_FLAG_AFFECT_DFLT_BUTTON = (1 << 0)
};

/**
 * @brief xcb_xkb_sa_set_ptr_dflt_t
 **/
struct xcb_xkb_sa_set_ptr_dflt_t {
    ubyte type; /**<  */
    ubyte flags; /**<  */
    ubyte affect; /**<  */
    byte  value; /**<  */
    ubyte pad0[4]; /**<  */
} ;

/**
 * @brief xcb_xkb_sa_set_ptr_dflt_iterator_t
 **/
struct xcb_xkb_sa_set_ptr_dflt_iterator_t {
    xcb_xkb_sa_set_ptr_dflt_t *data; /**<  */
    int                        rem; /**<  */
    int                        index; /**<  */
} ;

enum :int{
    XCB_XKB_SA_ISO_LOCK_FLAG_NO_LOCK = (1 << 0),
    XCB_XKB_SA_ISO_LOCK_FLAG_NO_UNLOCK = (1 << 1),
    XCB_XKB_SA_ISO_LOCK_FLAG_USE_MOD_MAP_MODS = (1 << 2),
    XCB_XKB_SA_ISO_LOCK_FLAG_GROUP_ABSOLUTE = (1 << 2),
    XCB_XKB_SA_ISO_LOCK_FLAG_ISO_DFLT_IS_GROUP = (1 << 3)
};

enum :int{
    XCB_XKB_SA_ISO_LOCK_NO_AFFECT_CTRLS = (1 << 3),
    XCB_XKB_SA_ISO_LOCK_NO_AFFECT_PTR = (1 << 4),
    XCB_XKB_SA_ISO_LOCK_NO_AFFECT_GROUP = (1 << 5),
    XCB_XKB_SA_ISO_LOCK_NO_AFFECT_MODS = (1 << 6)
};

/**
 * @brief xcb_xkb_sa_iso_lock_t
 **/
struct xcb_xkb_sa_iso_lock_t {
    ubyte type; /**<  */
    ubyte flags; /**<  */
    ubyte mask; /**<  */
    ubyte realMods; /**<  */
    byte  group; /**<  */
    ubyte affect; /**<  */
    ubyte vmodsHigh; /**<  */
    ubyte vmodsLow; /**<  */
} ;

/**
 * @brief xcb_xkb_sa_iso_lock_iterator_t
 **/
struct xcb_xkb_sa_iso_lock_iterator_t {
    xcb_xkb_sa_iso_lock_t *data; /**<  */
    int                    rem; /**<  */
    int                    index; /**<  */
} ;

/**
 * @brief xcb_xkb_sa_terminate_t
 **/
struct xcb_xkb_sa_terminate_t {
    ubyte type; /**<  */
    ubyte pad0[7]; /**<  */
} ;

/**
 * @brief xcb_xkb_sa_terminate_iterator_t
 **/
struct xcb_xkb_sa_terminate_iterator_t {
    xcb_xkb_sa_terminate_t *data; /**<  */
    int                     rem; /**<  */
    int                     index; /**<  */
} ;

enum :int{
    XCB_XKB_SWITCH_SCREEN_FLAG_APPLICATION = (1 << 0),
    XCB_XKB_SWITCH_SCREEN_FLAG_ABSOLUTE = (1 << 2)
};

/**
 * @brief xcb_xkb_sa_switch_screen_t
 **/
struct xcb_xkb_sa_switch_screen_t {
    ubyte type; /**<  */
    ubyte flags; /**<  */
    byte  newScreen; /**<  */
    ubyte pad0[5]; /**<  */
} ;

/**
 * @brief xcb_xkb_sa_switch_screen_iterator_t
 **/
struct xcb_xkb_sa_switch_screen_iterator_t {
    xcb_xkb_sa_switch_screen_t *data; /**<  */
    int                         rem; /**<  */
    int                         index; /**<  */
} ;

enum :int{
    XCB_XKB_BOOL_CTRLS_HIGH_ACCESS_X_FEEDBACK = (1 << 0),
    XCB_XKB_BOOL_CTRLS_HIGH_AUDIBLE_BELL = (1 << 1),
    XCB_XKB_BOOL_CTRLS_HIGH_OVERLAY_1 = (1 << 2),
    XCB_XKB_BOOL_CTRLS_HIGH_OVERLAY_2 = (1 << 3),
    XCB_XKB_BOOL_CTRLS_HIGH_IGNORE_GROUP_LOCK = (1 << 4)
};

enum :int{
    XCB_XKB_BOOL_CTRLS_LOW_REPEAT_KEYS = (1 << 0),
    XCB_XKB_BOOL_CTRLS_LOW_SLOW_KEYS = (1 << 1),
    XCB_XKB_BOOL_CTRLS_LOW_BOUNCE_KEYS = (1 << 2),
    XCB_XKB_BOOL_CTRLS_LOW_STICKY_KEYS = (1 << 3),
    XCB_XKB_BOOL_CTRLS_LOW_MOUSE_KEYS = (1 << 4),
    XCB_XKB_BOOL_CTRLS_LOW_MOUSE_KEYS_ACCEL = (1 << 5),
    XCB_XKB_BOOL_CTRLS_LOW_ACCESS_X_KEYS = (1 << 6),
    XCB_XKB_BOOL_CTRLS_LOW_ACCESS_X_TIMEOUT = (1 << 7)
};

/**
 * @brief xcb_xkb_sa_set_controls_t
 **/
struct xcb_xkb_sa_set_controls_t {
    ubyte type; /**<  */
    ubyte pad0[3]; /**<  */
    ubyte boolCtrlsHigh; /**<  */
    ubyte boolCtrlsLow; /**<  */
    ubyte pad1[2]; /**<  */
} ;

/**
 * @brief xcb_xkb_sa_set_controls_iterator_t
 **/
struct xcb_xkb_sa_set_controls_iterator_t {
    xcb_xkb_sa_set_controls_t *data; /**<  */
    int                        rem; /**<  */
    int                        index; /**<  */
} ;

alias xcb_xkb_sa_set_controls_t xcb_xkb_sa_lock_controls_t;

/**
 * @brief xcb_xkb_sa_lock_controls_iterator_t
 **/
struct xcb_xkb_sa_lock_controls_iterator_t {
    xcb_xkb_sa_lock_controls_t *data; /**<  */
    int                         rem; /**<  */
    int                         index; /**<  */
} ;

enum :int{
    XCB_XKB_ACTION_MESSAGE_FLAG_ON_PRESS = (1 << 0),
    XCB_XKB_ACTION_MESSAGE_FLAG_ON_RELEASE = (1 << 1),
    XCB_XKB_ACTION_MESSAGE_FLAG_GEN_KEY_EVENT = (1 << 2)
};

/**
 * @brief xcb_xkb_sa_action_message_t
 **/
struct xcb_xkb_sa_action_message_t {
    ubyte type; /**<  */
    ubyte flags; /**<  */
    ubyte message[6]; /**<  */
} ;

/**
 * @brief xcb_xkb_sa_action_message_iterator_t
 **/
struct xcb_xkb_sa_action_message_iterator_t {
    xcb_xkb_sa_action_message_t *data; /**<  */
    int                          rem; /**<  */
    int                          index; /**<  */
} ;

/**
 * @brief xcb_xkb_sa_redirect_key_t
 **/
struct xcb_xkb_sa_redirect_key_t {
    ubyte         type; /**<  */
    xcb_keycode_t newkey; /**<  */
    ubyte         mask; /**<  */
    ubyte         realModifiers; /**<  */
    ubyte         vmodsMaskHigh; /**<  */
    ubyte         vmodsMaskLow; /**<  */
    ubyte         vmodsHigh; /**<  */
    ubyte         vmodsLow; /**<  */
} ;

/**
 * @brief xcb_xkb_sa_redirect_key_iterator_t
 **/
struct xcb_xkb_sa_redirect_key_iterator_t {
    xcb_xkb_sa_redirect_key_t *data; /**<  */
    int                        rem; /**<  */
    int                        index; /**<  */
} ;

/**
 * @brief xcb_xkb_sa_device_btn_t
 **/
struct xcb_xkb_sa_device_btn_t {
    ubyte type; /**<  */
    ubyte flags; /**<  */
    ubyte count; /**<  */
    ubyte button; /**<  */
    ubyte device; /**<  */
    ubyte pad0[3]; /**<  */
} ;

/**
 * @brief xcb_xkb_sa_device_btn_iterator_t
 **/
struct xcb_xkb_sa_device_btn_iterator_t {
    xcb_xkb_sa_device_btn_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
} ;

enum :int{
    XCB_XKB_LOCK_DEVICE_FLAGS_NO_LOCK = (1 << 0),
    XCB_XKB_LOCK_DEVICE_FLAGS_NO_UNLOCK = (1 << 1)
};

/**
 * @brief xcb_xkb_sa_lock_device_btn_t
 **/
struct xcb_xkb_sa_lock_device_btn_t {
    ubyte type; /**<  */
    ubyte flags; /**<  */
    ubyte pad0; /**<  */
    ubyte button; /**<  */
    ubyte device; /**<  */
    ubyte pad1[3]; /**<  */
} ;

/**
 * @brief xcb_xkb_sa_lock_device_btn_iterator_t
 **/
struct xcb_xkb_sa_lock_device_btn_iterator_t {
    xcb_xkb_sa_lock_device_btn_t *data; /**<  */
    int                           rem; /**<  */
    int                           index; /**<  */
} ;

enum :int{
    XCB_XKB_SA_VAL_WHAT_IGNORE_VAL = 0,
    XCB_XKB_SA_VAL_WHAT_SET_VAL_MIN = 1,
    XCB_XKB_SA_VAL_WHAT_SET_VAL_CENTER = 2,
    XCB_XKB_SA_VAL_WHAT_SET_VAL_MAX = 3,
    XCB_XKB_SA_VAL_WHAT_SET_VAL_RELATIVE = 4,
    XCB_XKB_SA_VAL_WHAT_SET_VAL_ABSOLUTE = 5
};

/**
 * @brief xcb_xkb_sa_device_valuator_t
 **/
struct xcb_xkb_sa_device_valuator_t {
    ubyte type; /**<  */
    ubyte device; /**<  */
    ubyte val1what; /**<  */
    ubyte val1index; /**<  */
    ubyte val1value; /**<  */
    ubyte val2what; /**<  */
    ubyte val2index; /**<  */
    ubyte val2value; /**<  */
} ;

/**
 * @brief xcb_xkb_sa_device_valuator_iterator_t
 **/
struct xcb_xkb_sa_device_valuator_iterator_t {
    xcb_xkb_sa_device_valuator_t *data; /**<  */
    int                           rem; /**<  */
    int                           index; /**<  */
} ;

/**
 * @brief xcb_xkb_si_action_t
 **/
struct xcb_xkb_si_action_t {
    ubyte type; /**<  */
    ubyte data[7]; /**<  */
} ;

/**
 * @brief xcb_xkb_si_action_iterator_t
 **/
struct xcb_xkb_si_action_iterator_t {
    xcb_xkb_si_action_t *data; /**<  */
    int                  rem; /**<  */
    int                  index; /**<  */
} ;

/**
 * @brief xcb_xkb_sym_interpret_t
 **/
struct xcb_xkb_sym_interpret_t {
    xcb_keysym_t        sym; /**<  */
    ubyte               mods; /**<  */
    ubyte               match; /**<  */
    ubyte               virtualMod; /**<  */
    ubyte               flags; /**<  */
    xcb_xkb_si_action_t action; /**<  */
} ;

/**
 * @brief xcb_xkb_sym_interpret_iterator_t
 **/
struct xcb_xkb_sym_interpret_iterator_t {
    xcb_xkb_sym_interpret_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
} ;

/**
 * @brief xcb_xkb_action_t
 **/
union xcb_xkb_action_t {
    xcb_xkb_sa_no_action_t       noaction; /**<  */
    xcb_xkb_sa_set_mods_t        setmods; /**<  */
    xcb_xkb_sa_latch_mods_t      latchmods; /**<  */
    xcb_xkb_sa_lock_mods_t       lockmods; /**<  */
    xcb_xkb_sa_set_group_t       setgroup; /**<  */
    xcb_xkb_sa_latch_group_t     latchgroup; /**<  */
    xcb_xkb_sa_lock_group_t      lockgroup; /**<  */
    xcb_xkb_sa_move_ptr_t        moveptr; /**<  */
    xcb_xkb_sa_ptr_btn_t         ptrbtn; /**<  */
    xcb_xkb_sa_lock_ptr_btn_t    lockptrbtn; /**<  */
    xcb_xkb_sa_set_ptr_dflt_t    setptrdflt; /**<  */
    xcb_xkb_sa_iso_lock_t        isolock; /**<  */
    xcb_xkb_sa_terminate_t       terminate; /**<  */
    xcb_xkb_sa_switch_screen_t   switchscreen; /**<  */
    xcb_xkb_sa_set_controls_t    setcontrols; /**<  */
    xcb_xkb_sa_lock_controls_t   lockcontrols; /**<  */
    xcb_xkb_sa_action_message_t  message; /**<  */
    xcb_xkb_sa_redirect_key_t    redirect; /**<  */
    xcb_xkb_sa_device_btn_t      devbtn; /**<  */
    xcb_xkb_sa_lock_device_btn_t lockdevbtn; /**<  */
    xcb_xkb_sa_device_valuator_t devval; /**<  */
    ubyte                        type; /**<  */
} ;

/**
 * @brief xcb_xkb_action_iterator_t
 **/
struct xcb_xkb_action_iterator_t {
    xcb_xkb_action_t *data; /**<  */
    int               rem; /**<  */
    int               index; /**<  */
} ;

/**
 * @brief xcb_xkb_use_extension_cookie_t
 **/
struct xcb_xkb_use_extension_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_xkb_use_extension. */
const uint XCB_XKB_USE_EXTENSION = 0;

/**
 * @brief xcb_xkb_use_extension_request_t
 **/
struct xcb_xkb_use_extension_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort wantedMajor; /**<  */
    ushort wantedMinor; /**<  */
} ;

/**
 * @brief xcb_xkb_use_extension_reply_t
 **/
struct xcb_xkb_use_extension_reply_t {
    ubyte  response_type; /**<  */
    bool   supported; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort serverMajor; /**<  */
    ushort serverMinor; /**<  */
    ubyte  pad0[20]; /**<  */
} ;

/** Opcode for xcb_xkb_select_events. */
const uint XCB_XKB_SELECT_EVENTS = 1;

/**
 * @brief xcb_xkb_select_events_request_t
 **/
struct xcb_xkb_select_events_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ushort                affectWhich; /**<  */
    ushort                clear; /**<  */
    ushort                selectAll; /**<  */
    ushort                affectMap; /**<  */
    ushort                map; /**<  */
    ushort                affectNewKeyboard; /**<  */
    ushort                newKeyboardDetails; /**<  */
    ushort                affectState; /**<  */
    ushort                stateDetails; /**<  */
    uint                  affectCtrls; /**<  */
    uint                  ctrlDetails; /**<  */
    uint                  affectIndicatorState; /**<  */
    uint                  indicatorStateDetails; /**<  */
    uint                  affectIndicatorMap; /**<  */
    uint                  indicatorMapDetails; /**<  */
    ushort                affectNames; /**<  */
    ushort                namesDetails; /**<  */
    ubyte                 affectCompat; /**<  */
    ubyte                 compatDetails; /**<  */
    ubyte                 affectBell; /**<  */
    ubyte                 bellDetails; /**<  */
    ubyte                 affectMsgDetails; /**<  */
    ubyte                 msgDetails; /**<  */
    ushort                affectAccessX; /**<  */
    ushort                accessXDetails; /**<  */
    ushort                affectExtDev; /**<  */
    ushort                extdevDetails; /**<  */
} ;

/** Opcode for xcb_xkb_bell. */
const uint XCB_XKB_BELL = 3;

/**
 * @brief xcb_xkb_bell_request_t
 **/
struct xcb_xkb_bell_request_t {
    ubyte                     major_opcode; /**<  */
    ubyte                     minor_opcode; /**<  */
    ushort                    length; /**<  */
    xcb_xkb_device_spec_t     deviceSpec; /**<  */
    xcb_xkb_bell_class_spec_t bellClass; /**<  */
    xcb_xkb_id_spec_t         bellID; /**<  */
    byte                      percent; /**<  */
    bool                      forceSound; /**<  */
    bool                      eventOnly; /**<  */
    ubyte                     pad0; /**<  */
    short                     pitch; /**<  */
    short                     duration; /**<  */
    ubyte                     pad1[2]; /**<  */
    xcb_atom_t                name; /**<  */
    xcb_window_t              window; /**<  */
} ;

/**
 * @brief xcb_xkb_get_state_cookie_t
 **/
struct xcb_xkb_get_state_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_xkb_get_state. */
const uint XCB_XKB_GET_STATE = 4;

/**
 * @brief xcb_xkb_get_state_request_t
 **/
struct xcb_xkb_get_state_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ubyte                 pad0[2]; /**<  */
} ;

/**
 * @brief xcb_xkb_get_state_reply_t
 **/
struct xcb_xkb_get_state_reply_t {
    ubyte  response_type; /**<  */
    ubyte  deviceID; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  mods; /**<  */
    ubyte  baseMods; /**<  */
    ubyte  latchedMods; /**<  */
    ubyte  lockedMods; /**<  */
    ubyte  group; /**<  */
    ubyte  lockedGroup; /**<  */
    short  baseGroup; /**<  */
    short  latchedGroup; /**<  */
    ubyte  compatState; /**<  */
    ubyte  grabMods; /**<  */
    ubyte  compatGrabMods; /**<  */
    ubyte  lookupMods; /**<  */
    ubyte  compatLookupMods; /**<  */
    ubyte  pad0; /**<  */
    ushort ptrBtnState; /**<  */
    ubyte  pad1[6]; /**<  */
} ;

/** Opcode for xcb_xkb_latch_lock_state. */
const uint XCB_XKB_LATCH_LOCK_STATE = 5;

/**
 * @brief xcb_xkb_latch_lock_state_request_t
 **/
struct xcb_xkb_latch_lock_state_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ubyte                 affectModLocks; /**<  */
    ubyte                 modLocks; /**<  */
    bool                  lockGroup; /**<  */
    ubyte                 groupLock; /**<  */
    ubyte                 affectModLatches; /**<  */
    ubyte                 pad0; /**<  */
    bool                  latchGroup; /**<  */
    ushort                groupLatch; /**<  */
} ;

/**
 * @brief xcb_xkb_get_controls_cookie_t
 **/
struct xcb_xkb_get_controls_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_xkb_get_controls. */
const uint XCB_XKB_GET_CONTROLS = 6;

/**
 * @brief xcb_xkb_get_controls_request_t
 **/
struct xcb_xkb_get_controls_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ubyte                 pad0[2]; /**<  */
} ;

/**
 * @brief xcb_xkb_get_controls_reply_t
 **/
struct xcb_xkb_get_controls_reply_t {
    ubyte  response_type; /**<  */
    ubyte  deviceID; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  mouseKeysDfltBtn; /**<  */
    ubyte  numGroups; /**<  */
    ubyte  groupsWrap; /**<  */
    ubyte  internalModsMask; /**<  */
    ubyte  ignoreLockModsMask; /**<  */
    ubyte  internalModsRealMods; /**<  */
    ubyte  ignoreLockModsRealMods; /**<  */
    ubyte  pad0; /**<  */
    ushort internalModsVmods; /**<  */
    ushort ignoreLockModsVmods; /**<  */
    ushort repeatDelay; /**<  */
    ushort repeatInterval; /**<  */
    ushort slowKeysDelay; /**<  */
    ushort debounceDelay; /**<  */
    ushort mouseKeysDelay; /**<  */
    ushort mouseKeysInterval; /**<  */
    ushort mouseKeysTimeToMax; /**<  */
    ushort mouseKeysMaxSpeed; /**<  */
    short  mouseKeysCurve; /**<  */
    ushort accessXOption; /**<  */
    ushort accessXTimeout; /**<  */
    ushort accessXTimeoutOptionsMask; /**<  */
    ushort accessXTimeoutOptionsValues; /**<  */
    ubyte  pad1[2]; /**<  */
    uint   accessXTimeoutMask; /**<  */
    uint   accessXTimeoutValues; /**<  */
    uint   enabledControls; /**<  */
    ubyte  perKeyRepeat[32]; /**<  */
} ;

/** Opcode for xcb_xkb_set_controls. */
const uint XCB_XKB_SET_CONTROLS = 7;

/**
 * @brief xcb_xkb_set_controls_request_t
 **/
struct xcb_xkb_set_controls_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ubyte                 affectInternalRealMods; /**<  */
    ubyte                 internalRealMods; /**<  */
    ubyte                 affectIgnoreLockRealMods; /**<  */
    ubyte                 ignoreLockRealMods; /**<  */
    ushort                affectInternalVirtualMods; /**<  */
    ushort                internalVirtualMods; /**<  */
    ushort                affectIgnoreLockVirtualMods; /**<  */
    ushort                ignoreLockVirtualMods; /**<  */
    ubyte                 mouseKeysDfltBtn; /**<  */
    ubyte                 groupsWrap; /**<  */
    ushort                accessXOptions; /**<  */
    ubyte                 pad0[2]; /**<  */
    uint                  affectEnabledControls; /**<  */
    uint                  enabledControls; /**<  */
    uint                  changeControls; /**<  */
    ushort                repeatDelay; /**<  */
    ushort                repeatInterval; /**<  */
    ushort                slowKeysDelay; /**<  */
    ushort                debounceDelay; /**<  */
    ushort                mouseKeysDelay; /**<  */
    ushort                mouseKeysInterval; /**<  */
    ushort                mouseKeysTimeToMax; /**<  */
    ushort                mouseKeysMaxSpeed; /**<  */
    short                 mouseKeysCurve; /**<  */
    ushort                accessXTimeout; /**<  */
    uint                  accessXTimeoutMask; /**<  */
    uint                  accessXTimeoutValues; /**<  */
    ushort                accessXTimeoutOptionsMask; /**<  */
    ushort                accessXTimeoutOptionsValues; /**<  */
} ;

/**
 * @brief xcb_xkb_get_map_cookie_t
 **/
struct xcb_xkb_get_map_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_xkb_get_map. */
const uint XCB_XKB_GET_MAP = 8;

/**
 * @brief xcb_xkb_get_map_request_t
 **/
struct xcb_xkb_get_map_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ushort                full; /**<  */
    ushort                partial; /**<  */
    ubyte                 firstType; /**<  */
    ubyte                 nTypes; /**<  */
    xcb_keycode_t         firstKeySym; /**<  */
    ubyte                 nKeySyms; /**<  */
    xcb_keycode_t         firstKeyAction; /**<  */
    ubyte                 nKeyActions; /**<  */
    xcb_keycode_t         firstKeyBehavior; /**<  */
    ubyte                 nKeyBehaviors; /**<  */
    ushort                virtualMods; /**<  */
    xcb_keycode_t         firstKeyExplicit; /**<  */
    ubyte                 nKeyExplicit; /**<  */
    xcb_keycode_t         firstModMapKey; /**<  */
    ubyte                 nModMapKeys; /**<  */
    xcb_keycode_t         firstVModMapKey; /**<  */
    ubyte                 nVModMapKeys; /**<  */
    ubyte                 pad0[2]; /**<  */
} ;

/**
 * @brief xcb_xkb_get_map_reply_t
 **/
struct xcb_xkb_get_map_reply_t {
    ubyte         response_type; /**<  */
    ubyte         deviceID; /**<  */
    ushort        sequence; /**<  */
    uint          length; /**<  */
    ubyte         pad0[2]; /**<  */
    xcb_keycode_t minKeyCode; /**<  */
    xcb_keycode_t maxKeyCode; /**<  */
    ushort        present; /**<  */
    ubyte         firstType; /**<  */
    ubyte         nTypes; /**<  */
    ubyte         totalTypes; /**<  */
    xcb_keycode_t firstKeySym; /**<  */
    ushort        totalSyms; /**<  */
    ubyte         nKeySyms; /**<  */
    xcb_keycode_t firstKeyAction; /**<  */
    ushort        totalActions; /**<  */
    ubyte         nKeyActions; /**<  */
    xcb_keycode_t firstKeyBehavior; /**<  */
    ubyte         nKeyBehaviors; /**<  */
    ubyte         totalKeyBehaviors; /**<  */
    xcb_keycode_t firstKeyExplicit; /**<  */
    ubyte         nKeyExplicit; /**<  */
    ubyte         totalKeyExplicit; /**<  */
    xcb_keycode_t firstModMapKey; /**<  */
    ubyte         nModMapKeys; /**<  */
    ubyte         totalModMapKeys; /**<  */
    xcb_keycode_t firstVModMapKey; /**<  */
    ubyte         nVModMapKeys; /**<  */
    ubyte         totalVModMapKeys; /**<  */
    ubyte         pad1; /**<  */
    ushort        virtualMods; /**<  */
} ;

/** Opcode for xcb_xkb_set_map. */
const uint XCB_XKB_SET_MAP = 9;

/**
 * @brief xcb_xkb_set_map_request_t
 **/
struct xcb_xkb_set_map_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ushort                present; /**<  */
    ushort                flags; /**<  */
    xcb_keycode_t         minKeyCode; /**<  */
    xcb_keycode_t         maxKeyCode; /**<  */
    ubyte                 firstType; /**<  */
    ubyte                 nTypes; /**<  */
    xcb_keycode_t         firstKeySym; /**<  */
    ubyte                 nKeySyms; /**<  */
    ushort                totalSyms; /**<  */
    xcb_keycode_t         firstKeyAction; /**<  */
    ubyte                 nKeyActions; /**<  */
    ushort                totalActions; /**<  */
    xcb_keycode_t         firstKeyBehavior; /**<  */
    ubyte                 nKeyBehaviors; /**<  */
    ubyte                 totalKeyBehaviors; /**<  */
    xcb_keycode_t         firstKeyExplicit; /**<  */
    ubyte                 nKeyExplicit; /**<  */
    ubyte                 totalKeyExplicit; /**<  */
    xcb_keycode_t         firstModMapKey; /**<  */
    ubyte                 nModMapKeys; /**<  */
    ubyte                 totalModMapKeys; /**<  */
    xcb_keycode_t         firstVModMapKey; /**<  */
    ubyte                 nVModMapKeys; /**<  */
    ubyte                 totalVModMapKeys; /**<  */
    ushort                virtualMods; /**<  */
} ;

/**
 * @brief xcb_xkb_get_compat_map_cookie_t
 **/
struct xcb_xkb_get_compat_map_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_xkb_get_compat_map. */
const uint XCB_XKB_GET_COMPAT_MAP = 10;

/**
 * @brief xcb_xkb_get_compat_map_request_t
 **/
struct xcb_xkb_get_compat_map_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ubyte                 groups; /**<  */
    bool                  getAllSI; /**<  */
    ushort                firstSI; /**<  */
    ushort                nSI; /**<  */
} ;

/**
 * @brief xcb_xkb_get_compat_map_reply_t
 **/
struct xcb_xkb_get_compat_map_reply_t {
    ubyte  response_type; /**<  */
    ubyte  deviceID; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  groupsRtrn; /**<  */
    ubyte  pad0; /**<  */
    ushort firstSIRtrn; /**<  */
    ushort nSIRtrn; /**<  */
    ushort nTotalSI; /**<  */
    ubyte  pad1[16]; /**<  */
} ;

/** Opcode for xcb_xkb_set_compat_map. */
const uint XCB_XKB_SET_COMPAT_MAP = 11;

/**
 * @brief xcb_xkb_set_compat_map_request_t
 **/
struct xcb_xkb_set_compat_map_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ubyte                 pad0; /**<  */
    bool                  recomputeActions; /**<  */
    bool                  truncateSI; /**<  */
    ubyte                 groups; /**<  */
    ushort                firstSI; /**<  */
    ushort                nSI; /**<  */
    ubyte                 pad1[2]; /**<  */
} ;

/**
 * @brief xcb_xkb_get_indicator_state_cookie_t
 **/
struct xcb_xkb_get_indicator_state_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_xkb_get_indicator_state. */
const uint XCB_XKB_GET_INDICATOR_STATE = 12;

/**
 * @brief xcb_xkb_get_indicator_state_request_t
 **/
struct xcb_xkb_get_indicator_state_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ubyte                 pad0[2]; /**<  */
} ;

/**
 * @brief xcb_xkb_get_indicator_state_reply_t
 **/
struct xcb_xkb_get_indicator_state_reply_t {
    ubyte  response_type; /**<  */
    ubyte  deviceID; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   state; /**<  */
    ubyte  pad0[20]; /**<  */
} ;

/**
 * @brief xcb_xkb_get_indicator_map_cookie_t
 **/
struct xcb_xkb_get_indicator_map_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_xkb_get_indicator_map. */
const uint XCB_XKB_GET_INDICATOR_MAP = 13;

/**
 * @brief xcb_xkb_get_indicator_map_request_t
 **/
struct xcb_xkb_get_indicator_map_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ubyte                 pad0[2]; /**<  */
    uint                  which; /**<  */
} ;

/**
 * @brief xcb_xkb_get_indicator_map_reply_t
 **/
struct xcb_xkb_get_indicator_map_reply_t {
    ubyte  response_type; /**<  */
    ubyte  deviceID; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   which; /**<  */
    uint   realIndicators; /**<  */
    ubyte  nIndicators; /**<  */
    ubyte  pad0[15]; /**<  */
} ;

/** Opcode for xcb_xkb_set_indicator_map. */
const uint XCB_XKB_SET_INDICATOR_MAP = 14;

/**
 * @brief xcb_xkb_set_indicator_map_request_t
 **/
struct xcb_xkb_set_indicator_map_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ubyte                 pad0[2]; /**<  */
    uint                  which; /**<  */
} ;

/**
 * @brief xcb_xkb_get_named_indicator_cookie_t
 **/
struct xcb_xkb_get_named_indicator_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_xkb_get_named_indicator. */
const uint XCB_XKB_GET_NAMED_INDICATOR = 15;

/**
 * @brief xcb_xkb_get_named_indicator_request_t
 **/
struct xcb_xkb_get_named_indicator_request_t {
    ubyte                    major_opcode; /**<  */
    ubyte                    minor_opcode; /**<  */
    ushort                   length; /**<  */
    xcb_xkb_device_spec_t    deviceSpec; /**<  */
    xcb_xkb_led_class_spec_t ledClass; /**<  */
    xcb_xkb_id_spec_t        ledID; /**<  */
    ubyte                    pad0[2]; /**<  */
    xcb_atom_t               indicator; /**<  */
} ;

/**
 * @brief xcb_xkb_get_named_indicator_reply_t
 **/
struct xcb_xkb_get_named_indicator_reply_t {
    ubyte      response_type; /**<  */
    ubyte      deviceID; /**<  */
    ushort     sequence; /**<  */
    uint       length; /**<  */
    xcb_atom_t indicator; /**<  */
    bool       found; /**<  */
    bool       on; /**<  */
    bool       realIndicator; /**<  */
    ubyte      ndx; /**<  */
    ubyte      map_flags; /**<  */
    ubyte      map_whichGroups; /**<  */
    ubyte      map_groups; /**<  */
    ubyte      map_whichMods; /**<  */
    ubyte      map_mods; /**<  */
    ubyte      map_realMods; /**<  */
    ushort     map_vmod; /**<  */
    uint       map_ctrls; /**<  */
    bool       supported; /**<  */
    ubyte      pad0[3]; /**<  */
} ;

/** Opcode for xcb_xkb_set_named_indicator. */
const uint XCB_XKB_SET_NAMED_INDICATOR = 16;

/**
 * @brief xcb_xkb_set_named_indicator_request_t
 **/
struct xcb_xkb_set_named_indicator_request_t {
    ubyte                    major_opcode; /**<  */
    ubyte                    minor_opcode; /**<  */
    ushort                   length; /**<  */
    xcb_xkb_device_spec_t    deviceSpec; /**<  */
    xcb_xkb_led_class_spec_t ledClass; /**<  */
    xcb_xkb_id_spec_t        ledID; /**<  */
    ubyte                    pad0[2]; /**<  */
    xcb_atom_t               indicator; /**<  */
    bool                     setState; /**<  */
    bool                     on; /**<  */
    bool                     setMap; /**<  */
    bool                     createMap; /**<  */
    ubyte                    pad1; /**<  */
    ubyte                    map_flags; /**<  */
    ubyte                    map_whichGroups; /**<  */
    ubyte                    map_groups; /**<  */
    ubyte                    map_whichMods; /**<  */
    ubyte                    map_realMods; /**<  */
    ushort                   map_vmods; /**<  */
    uint                     map_ctrls; /**<  */
} ;

/**
 * @brief xcb_xkb_get_names_cookie_t
 **/
struct xcb_xkb_get_names_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_xkb_get_names. */
const uint XCB_XKB_GET_NAMES = 17;

/**
 * @brief xcb_xkb_get_names_request_t
 **/
struct xcb_xkb_get_names_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ubyte                 pad0[2]; /**<  */
    uint                  which; /**<  */
} ;

/**
 * @brief xcb_xkb_get_names_reply_t
 **/
struct xcb_xkb_get_names_reply_t {
    ubyte         response_type; /**<  */
    ubyte         deviceID; /**<  */
    ushort        sequence; /**<  */
    uint          length; /**<  */
    uint          which; /**<  */
    xcb_keycode_t minKeyCode; /**<  */
    xcb_keycode_t maxKeyCode; /**<  */
    ubyte         nTypes; /**<  */
    ubyte         groupNames; /**<  */
    ushort        virtualMods; /**<  */
    xcb_keycode_t firstKey; /**<  */
    ubyte         nKeys; /**<  */
    uint          indicators; /**<  */
    ubyte         nRadioGroups; /**<  */
    ubyte         nKeyAliases; /**<  */
    ushort        nKTLevels; /**<  */
    ubyte         pad0[4]; /**<  */
} ;

/** Opcode for xcb_xkb_set_names. */
const uint XCB_XKB_SET_NAMES = 18;

/**
 * @brief xcb_xkb_set_names_request_t
 **/
struct xcb_xkb_set_names_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ushort                virtualMods; /**<  */
    uint                  which; /**<  */
    ubyte                 firstType; /**<  */
    ubyte                 nTypes; /**<  */
    ubyte                 firstKTLevelt; /**<  */
    ubyte                 nKTLevels; /**<  */
    uint                  indicators; /**<  */
    ubyte                 groupNames; /**<  */
    ubyte                 nRadioGroups; /**<  */
    xcb_keycode_t         firstKey; /**<  */
    ubyte                 nKeys; /**<  */
    ubyte                 nKeyAliases; /**<  */
    ubyte                 pad0; /**<  */
    ushort                totalKTLevelNames; /**<  */
} ;

/**
 * @brief xcb_xkb_per_client_flags_cookie_t
 **/
struct xcb_xkb_per_client_flags_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_xkb_per_client_flags. */
const uint XCB_XKB_PER_CLIENT_FLAGS = 21;

/**
 * @brief xcb_xkb_per_client_flags_request_t
 **/
struct xcb_xkb_per_client_flags_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ubyte                 pad0[2]; /**<  */
    uint                  change; /**<  */
    uint                  value; /**<  */
    uint                  ctrlsToChange; /**<  */
    uint                  autoCtrls; /**<  */
    uint                  autoCtrlsValues; /**<  */
} ;

/**
 * @brief xcb_xkb_per_client_flags_reply_t
 **/
struct xcb_xkb_per_client_flags_reply_t {
    ubyte  response_type; /**<  */
    ubyte  deviceID; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   supported; /**<  */
    uint   value; /**<  */
    uint   autoCtrls; /**<  */
    uint   autoCtrlsValues; /**<  */
    ubyte  pad0[8]; /**<  */
} ;

/**
 * @brief xcb_xkb_list_components_cookie_t
 **/
struct xcb_xkb_list_components_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_xkb_list_components. */
const uint XCB_XKB_LIST_COMPONENTS = 22;

/**
 * @brief xcb_xkb_list_components_request_t
 **/
struct xcb_xkb_list_components_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ushort                maxNames; /**<  */
} ;

/**
 * @brief xcb_xkb_list_components_reply_t
 **/
struct xcb_xkb_list_components_reply_t {
    ubyte  response_type; /**<  */
    ubyte  deviceID; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort nKeymaps; /**<  */
    ushort nKeycodes; /**<  */
    ushort nTypes; /**<  */
    ushort nCompatMaps; /**<  */
    ushort nSymbols; /**<  */
    ushort nGeometries; /**<  */
    ushort extra; /**<  */
    ubyte  pad0[10]; /**<  */
} ;

/**
 * @brief xcb_xkb_get_kbd_by_name_cookie_t
 **/
struct xcb_xkb_get_kbd_by_name_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_xkb_get_kbd_by_name. */
const uint XCB_XKB_GET_KBD_BY_NAME = 23;

/**
 * @brief xcb_xkb_get_kbd_by_name_request_t
 **/
struct xcb_xkb_get_kbd_by_name_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ushort                need; /**<  */
    ushort                want; /**<  */
    bool                  load; /**<  */
    ubyte                 pad0; /**<  */
} ;

/**
 * @brief xcb_xkb_get_kbd_by_name_reply_t
 **/
struct xcb_xkb_get_kbd_by_name_reply_t {
    ubyte                       response_type; /**<  */
    ubyte                       deviceID; /**<  */
    ushort                      sequence; /**<  */
    uint                        length; /**<  */
    xcb_keycode_t               minKeyCode; /**<  */
    xcb_keycode_t               maxKeyCode; /**<  */
    bool                        loaded; /**<  */
    bool                        newKeyboard; /**<  */
    ushort                      found; /**<  */
    ushort                      reported; /**<  */
    ubyte                       pad0[16]; /**<  */
    ubyte                       getmap_type; /**<  */
    ubyte                       typeDeviceID; /**<  */
    ushort                      getmap_sequence; /**<  */
    uint                        getmap_length; /**<  */
    ubyte                       pad1[2]; /**<  */
    xcb_keycode_t               typeMinKeyCode; /**<  */
    xcb_keycode_t               typeMaxKeyCode; /**<  */
    ushort                      present; /**<  */
    ubyte                       firstType; /**<  */
    ubyte                       nTypes; /**<  */
    ubyte                       totalTypes; /**<  */
    xcb_keycode_t               firstKeySym; /**<  */
    ushort                      totalSyms; /**<  */
    ubyte                       nKeySyms; /**<  */
    xcb_keycode_t               firstKeyAction; /**<  */
    ushort                      totalActions; /**<  */
    ubyte                       nKeyActions; /**<  */
    xcb_keycode_t               firstKeyBehavior; /**<  */
    ubyte                       nKeyBehaviors; /**<  */
    ubyte                       totalKeyBehaviors; /**<  */
    xcb_keycode_t               firstKeyExplicit; /**<  */
    ubyte                       nKeyExplicit; /**<  */
    ubyte                       totalKeyExplicit; /**<  */
    xcb_keycode_t               firstModMapKey; /**<  */
    ubyte                       nModMapKeys; /**<  */
    ubyte                       totalModMapKeys; /**<  */
    xcb_keycode_t               firstVModMapKey; /**<  */
    ubyte                       nVModMapKeys; /**<  */
    ubyte                       totalVModMapKeys; /**<  */
    ubyte                       pad2; /**<  */
    ushort                      virtualMods; /**<  */
    ubyte                       compatmap_type; /**<  */
    ubyte                       compatDeviceID; /**<  */
    ushort                      compatmap_sequence; /**<  */
    uint                        compatmap_length; /**<  */
    ubyte                       groupsRtrn; /**<  */
    ubyte                       pad3; /**<  */
    ushort                      firstSIRtrn; /**<  */
    ushort                      nSIRtrn; /**<  */
    ushort                      nTotalSI; /**<  */
    ubyte                       pad4[16]; /**<  */
    xcb_xkb_mod_def_t           group_rtrn[]; /**<  */
    ubyte                       indicatormap_type; /**<  */
    ubyte                       indicatorDeviceID; /**<  */
    ushort                      indicatormap_sequence; /**<  */
    uint                        indicatormap_length; /**<  */
    uint                        which; /**<  */
    uint                        realIndicators; /**<  */
    ubyte                       nIndicators; /**<  */
    ubyte                       pad5[15]; /**<  */
    ubyte                       keyname_type; /**<  */
    ubyte                       keyDeviceID; /**<  */
    ushort                      keyname_sequence; /**<  */
    uint                        keyname_length; /**<  */
    uint                        which; /**<  */
    xcb_keycode_t               keyMinKeyCode; /**<  */
    xcb_keycode_t               keyMaxKeyCode; /**<  */
    ubyte                       nTypes; /**<  */
    ubyte                       groupNames; /**<  */
    ushort                      virtualMods; /**<  */
    xcb_keycode_t               firstKey; /**<  */
    ubyte                       nKeys; /**<  */
    uint                        indicators; /**<  */
    ubyte                       nRadioGroups; /**<  */
    ubyte                       nKeyAliases; /**<  */
    ushort                      nKTLevels; /**<  */
    ubyte                       pad6[4]; /**<  */
    ubyte                       geometry_type; /**<  */
    ubyte                       geometryDeviceID; /**<  */
    ushort                      geometry_sequence; /**<  */
    uint                        geometry_length; /**<  */
    xcb_atom_t                  name; /**<  */
    bool                        geometryFound; /**<  */
    ubyte                       pad7; /**<  */
    ushort                      widthMM; /**<  */
    ushort                      heightMM; /**<  */
    ushort                      nProperties; /**<  */
    ushort                      nColors; /**<  */
    ushort                      nShapes; /**<  */
    ushort                      nSections; /**<  */
    ushort                      nDoodads; /**<  */
    ushort                      nKeyAliases; /**<  */
    ubyte                       baseColorNdx; /**<  */
    ubyte                       labelColorNdx; /**<  */
    xcb_xkb_counted_string_16_t labelFont; /**<  */
} ;

/**
 * @brief xcb_xkb_get_device_info_cookie_t
 **/
struct xcb_xkb_get_device_info_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_xkb_get_device_info. */
const uint XCB_XKB_GET_DEVICE_INFO = 24;

/**
 * @brief xcb_xkb_get_device_info_request_t
 **/
struct xcb_xkb_get_device_info_request_t {
    ubyte                    major_opcode; /**<  */
    ubyte                    minor_opcode; /**<  */
    ushort                   length; /**<  */
    xcb_xkb_device_spec_t    deviceSpec; /**<  */
    ushort                   wanted; /**<  */
    bool                     allButtons; /**<  */
    ubyte                    firstButton; /**<  */
    ubyte                    nButtons; /**<  */
    ubyte                    pad0; /**<  */
    xcb_xkb_led_class_spec_t ledClass; /**<  */
    xcb_xkb_id_spec_t        ledID; /**<  */
} ;

/**
 * @brief xcb_xkb_get_device_info_reply_t
 **/
struct xcb_xkb_get_device_info_reply_t {
    ubyte      response_type; /**<  */
    ubyte      deviceID; /**<  */
    ushort     sequence; /**<  */
    uint       length; /**<  */
    ushort     present; /**<  */
    ushort     supported; /**<  */
    ushort     unsupported; /**<  */
    ushort     nDeviceLedFBs; /**<  */
    ubyte      firstBtnWanted; /**<  */
    ubyte      nBtnsWanted; /**<  */
    ubyte      firstBtnRtrn; /**<  */
    ubyte      nBtnsRtrn; /**<  */
    ubyte      totalBtns; /**<  */
    bool       hasOwnState; /**<  */
    ushort     dfltKbdFB; /**<  */
    ushort     dfltLedFB; /**<  */
    ubyte      pad0[2]; /**<  */
    xcb_atom_t devType; /**<  */
    ushort     nameLen; /**<  */
} ;

/** Opcode for xcb_xkb_set_device_info. */
const uint XCB_XKB_SET_DEVICE_INFO = 25;

/**
 * @brief xcb_xkb_set_device_info_request_t
 **/
struct xcb_xkb_set_device_info_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ubyte                 firstBtn; /**<  */
    ubyte                 nBtns; /**<  */
    ushort                change; /**<  */
    ushort                nDeviceLedFBs; /**<  */
} ;

/**
 * @brief xcb_xkb_set_debugging_flags_cookie_t
 **/
struct xcb_xkb_set_debugging_flags_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_xkb_set_debugging_flags. */
const uint XCB_XKB_SET_DEBUGGING_FLAGS = 101;

/**
 * @brief xcb_xkb_set_debugging_flags_request_t
 **/
struct xcb_xkb_set_debugging_flags_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort msgLength; /**<  */
    ubyte  pad0[2]; /**<  */
    uint   affectFlags; /**<  */
    uint   flags; /**<  */
    uint   affectCtrls; /**<  */
    uint   ctrls; /**<  */
} ;

/**
 * @brief xcb_xkb_set_debugging_flags_reply_t
 **/
struct xcb_xkb_set_debugging_flags_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   currentFlags; /**<  */
    uint   currentCtrls; /**<  */
    uint   supportedFlags; /**<  */
    uint   supportedCtrls; /**<  */
    ubyte  pad1[8]; /**<  */
} ;

/** Opcode for xcb_xkb_new_keyboard_notify. */
const uint XCB_XKB_NEW_KEYBOARD_NOTIFY = 0;

/**
 * @brief xcb_xkb_new_keyboard_notify_event_t
 **/
struct xcb_xkb_new_keyboard_notify_event_t {
    ubyte           response_type; /**<  */
    ubyte           xkbType; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    ubyte           deviceID; /**<  */
    ubyte           oldDeviceID; /**<  */
    xcb_keycode_t   minKeyCode; /**<  */
    xcb_keycode_t   maxKeyCode; /**<  */
    xcb_keycode_t   oldMinKeyCode; /**<  */
    xcb_keycode_t   oldMaxKeyCode; /**<  */
    ubyte           requestMajor; /**<  */
    ubyte           requestMinor; /**<  */
    ushort          changed; /**<  */
    ubyte           pad0[14]; /**<  */
} ;

/** Opcode for xcb_xkb_map_notify. */
const uint XCB_XKB_MAP_NOTIFY = 1;

/**
 * @brief xcb_xkb_map_notify_event_t
 **/
struct xcb_xkb_map_notify_event_t {
    ubyte           response_type; /**<  */
    ubyte           xkbType; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    ubyte           deviceID; /**<  */
    ubyte           ptrBtnActions; /**<  */
    ushort          changed; /**<  */
    xcb_keycode_t   minKeyCode; /**<  */
    xcb_keycode_t   maxKeyCode; /**<  */
    ubyte           firstType; /**<  */
    ubyte           nTypes; /**<  */
    xcb_keycode_t   firstKeySym; /**<  */
    ubyte           nKeySyms; /**<  */
    xcb_keycode_t   firstKeyAct; /**<  */
    ubyte           nKeyActs; /**<  */
    xcb_keycode_t   firstKeyBehavior; /**<  */
    ubyte           nKeyBehavior; /**<  */
    xcb_keycode_t   firstKeyExplicit; /**<  */
    ubyte           nKeyExplicit; /**<  */
    xcb_keycode_t   firstModMapKey; /**<  */
    ubyte           nModMapKeys; /**<  */
    xcb_keycode_t   firstVModMapKey; /**<  */
    ubyte           nVModMapKeys; /**<  */
    ushort          virtualMods; /**<  */
    ubyte           pad0[2]; /**<  */
} ;

/** Opcode for xcb_xkb_state_notify. */
const uint XCB_XKB_STATE_NOTIFY = 2;

/**
 * @brief xcb_xkb_state_notify_event_t
 **/
struct xcb_xkb_state_notify_event_t {
    ubyte           response_type; /**<  */
    ubyte           xkbType; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    ubyte           deviceID; /**<  */
    ubyte           mods; /**<  */
    ubyte           baseMods; /**<  */
    ubyte           latchedMods; /**<  */
    ubyte           lockedMods; /**<  */
    ubyte           group; /**<  */
    short           baseGroup; /**<  */
    short           latchedGroup; /**<  */
    ubyte           lockedGroup; /**<  */
    ubyte           compatState; /**<  */
    ubyte           grabMods; /**<  */
    ubyte           compatGrabMods; /**<  */
    ubyte           lookupMods; /**<  */
    ubyte           compatLoockupMods; /**<  */
    ushort          ptrBtnState; /**<  */
    ushort          changed; /**<  */
    xcb_keycode_t   keycode; /**<  */
    ubyte           eventType; /**<  */
    ubyte           requestMajor; /**<  */
    ubyte           requestMinor; /**<  */
} ;

/** Opcode for xcb_xkb_controls_notify. */
const uint XCB_XKB_CONTROLS_NOTIFY = 3;

/**
 * @brief xcb_xkb_controls_notify_event_t
 **/
struct xcb_xkb_controls_notify_event_t {
    ubyte           response_type; /**<  */
    ubyte           xkbType; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    ubyte           deviceID; /**<  */
    ubyte           numGroups; /**<  */
    ubyte           pad0[2]; /**<  */
    uint            changedControls; /**<  */
    uint            enabledControls; /**<  */
    uint            enabledControlChanges; /**<  */
    xcb_keycode_t   keycode; /**<  */
    ubyte           eventType; /**<  */
    ubyte           requestMajor; /**<  */
    ubyte           requestMinor; /**<  */
    ubyte           pad1[4]; /**<  */
} ;

/** Opcode for xcb_xkb_indicator_state_notify. */
const uint XCB_XKB_INDICATOR_STATE_NOTIFY = 4;

/**
 * @brief xcb_xkb_indicator_state_notify_event_t
 **/
struct xcb_xkb_indicator_state_notify_event_t {
    ubyte           response_type; /**<  */
    ubyte           xkbType; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    ubyte           deviceID; /**<  */
    ubyte           pad0[3]; /**<  */
    uint            state; /**<  */
    uint            stateChanged; /**<  */
    ubyte           pad1[12]; /**<  */
} ;

/** Opcode for xcb_xkb_indicator_map_notify. */
const uint XCB_XKB_INDICATOR_MAP_NOTIFY = 5;

/**
 * @brief xcb_xkb_indicator_map_notify_event_t
 **/
struct xcb_xkb_indicator_map_notify_event_t {
    ubyte           response_type; /**<  */
    ubyte           xkbType; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    ubyte           deviceID; /**<  */
    ubyte           pad0[3]; /**<  */
    uint            state; /**<  */
    uint            mapChanged; /**<  */
    ubyte           pad1[12]; /**<  */
} ;

/** Opcode for xcb_xkb_names_notify. */
const uint XCB_XKB_NAMES_NOTIFY = 6;

/**
 * @brief xcb_xkb_names_notify_event_t
 **/
struct xcb_xkb_names_notify_event_t {
    ubyte           response_type; /**<  */
    ubyte           xkbType; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    ubyte           deviceID; /**<  */
    ubyte           pad0; /**<  */
    ushort          changed; /**<  */
    ubyte           firstType; /**<  */
    ubyte           nTypes; /**<  */
    ubyte           firstLevelName; /**<  */
    ubyte           nLevelNames; /**<  */
    ubyte           pad1; /**<  */
    ubyte           nRadioGroups; /**<  */
    ubyte           nKeyAliases; /**<  */
    ubyte           changedGroupNames; /**<  */
    ushort          changedVirtualMods; /**<  */
    xcb_keycode_t   firstKey; /**<  */
    ubyte           nKeys; /**<  */
    uint            changedIndicators; /**<  */
    ubyte           pad2[4]; /**<  */
} ;

/** Opcode for xcb_xkb_compat_map_notify. */
const uint XCB_XKB_COMPAT_MAP_NOTIFY = 7;

/**
 * @brief xcb_xkb_compat_map_notify_event_t
 **/
struct xcb_xkb_compat_map_notify_event_t {
    ubyte           response_type; /**<  */
    ubyte           xkbType; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    ubyte           deviceID; /**<  */
    ubyte           changedGroups; /**<  */
    ushort          firstSI; /**<  */
    ushort          nSI; /**<  */
    ushort          nTotalSI; /**<  */
    ubyte           pad0[16]; /**<  */
} ;

/** Opcode for xcb_xkb_bell_notify. */
const uint XCB_XKB_BELL_NOTIFY = 8;

/**
 * @brief xcb_xkb_bell_notify_event_t
 **/
struct xcb_xkb_bell_notify_event_t {
    ubyte           response_type; /**<  */
    ubyte           xkbType; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    ubyte           deviceID; /**<  */
    ubyte           bellClass; /**<  */
    ubyte           bellID; /**<  */
    ubyte           percent; /**<  */
    ushort          pitch; /**<  */
    ushort          duration; /**<  */
    xcb_atom_t      name; /**<  */
    xcb_window_t    window; /**<  */
    bool            eventOnly; /**<  */
    ubyte           pad0[7]; /**<  */
} ;

/** Opcode for xcb_xkb_action_message. */
const uint XCB_XKB_ACTION_MESSAGE = 9;

/**
 * @brief xcb_xkb_action_message_event_t
 **/
struct xcb_xkb_action_message_event_t {
    ubyte           response_type; /**<  */
    ubyte           xkbType; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    ubyte           deviceID; /**<  */
    xcb_keycode_t   keycode; /**<  */
    bool            press; /**<  */
    bool            keyEventFollows; /**<  */
    ubyte           mods; /**<  */
    ubyte           group; /**<  */
    xcb_xkb_string8_t message[8]; /**<  */
    ubyte           pad0[10]; /**<  */
} ;

/** Opcode for xcb_xkb_access_x_notify. */
const uint XCB_XKB_ACCESS_X_NOTIFY = 10;

/**
 * @brief xcb_xkb_access_x_notify_event_t
 **/
struct xcb_xkb_access_x_notify_event_t {
    ubyte           response_type; /**<  */
    ubyte           xkbType; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    ubyte           deviceID; /**<  */
    xcb_keycode_t   keycode; /**<  */
    ushort          detailt; /**<  */
    ushort          slowKeysDelay; /**<  */
    ushort          debounceDelay; /**<  */
    ubyte           pad0[16]; /**<  */
} ;

/** Opcode for xcb_xkb_extension_device_notify. */
const uint XCB_XKB_EXTENSION_DEVICE_NOTIFY = 11;

/**
 * @brief xcb_xkb_extension_device_notify_event_t
 **/
struct xcb_xkb_extension_device_notify_event_t {
    ubyte           response_type; /**<  */
    ubyte           xkbType; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    ubyte           deviceID; /**<  */
    ubyte           pad0; /**<  */
    ushort          reason; /**<  */
    ushort          ledClass; /**<  */
    ushort          ledID; /**<  */
    uint            ledsDefined; /**<  */
    uint            ledState; /**<  */
    ubyte           firstButton; /**<  */
    ubyte           nButtons; /**<  */
    ushort          supported; /**<  */
    ushort          unsupported; /**<  */
    ubyte           pad1[2]; /**<  */
} ;


/*****************************************************************************
 **
 ** void xcb_xkb_device_spec_next
 ** 
 ** @param xcb_xkb_device_spec_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_device_spec_next (xcb_xkb_device_spec_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_device_spec_end
 ** 
 ** @param xcb_xkb_device_spec_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_device_spec_end (xcb_xkb_device_spec_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_led_class_spec_next
 ** 
 ** @param xcb_xkb_led_class_spec_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_led_class_spec_next (xcb_xkb_led_class_spec_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_led_class_spec_end
 ** 
 ** @param xcb_xkb_led_class_spec_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_led_class_spec_end (xcb_xkb_led_class_spec_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_bell_class_spec_next
 ** 
 ** @param xcb_xkb_bell_class_spec_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_bell_class_spec_next (xcb_xkb_bell_class_spec_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_bell_class_spec_end
 ** 
 ** @param xcb_xkb_bell_class_spec_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_bell_class_spec_end (xcb_xkb_bell_class_spec_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_id_spec_next
 ** 
 ** @param xcb_xkb_id_spec_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_id_spec_next (xcb_xkb_id_spec_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_id_spec_end
 ** 
 ** @param xcb_xkb_id_spec_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_id_spec_end (xcb_xkb_id_spec_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_indicator_map_next
 ** 
 ** @param xcb_xkb_indicator_map_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_indicator_map_next (xcb_xkb_indicator_map_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_indicator_map_end
 ** 
 ** @param xcb_xkb_indicator_map_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_indicator_map_end (xcb_xkb_indicator_map_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_mod_def_next
 ** 
 ** @param xcb_xkb_mod_def_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_mod_def_next (xcb_xkb_mod_def_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_mod_def_end
 ** 
 ** @param xcb_xkb_mod_def_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_mod_def_end (xcb_xkb_mod_def_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_key_name_next
 ** 
 ** @param xcb_xkb_key_name_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_key_name_next (xcb_xkb_key_name_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_key_name_end
 ** 
 ** @param xcb_xkb_key_name_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_key_name_end (xcb_xkb_key_name_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_key_alias_next
 ** 
 ** @param xcb_xkb_key_alias_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_key_alias_next (xcb_xkb_key_alias_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_key_alias_end
 ** 
 ** @param xcb_xkb_key_alias_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_key_alias_end (xcb_xkb_key_alias_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** char * xcb_xkb_counted_string_16_string
 ** 
 ** @param /+const+/ xcb_xkb_counted_string_16_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
extern(C) char *
xcb_xkb_counted_string_16_string (/+const+/ xcb_xkb_counted_string_16_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_counted_string_16_string_length
 ** 
 ** @param /+const+/ xcb_xkb_counted_string_16_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_counted_string_16_string_length (/+const+/ xcb_xkb_counted_string_16_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_counted_string_16_string_end
 ** 
 ** @param /+const+/ xcb_xkb_counted_string_16_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_counted_string_16_string_end (/+const+/ xcb_xkb_counted_string_16_t *R  /**< */);


/*****************************************************************************
 **
 ** void * xcb_xkb_counted_string_16_alignment_pad
 ** 
 ** @param /+const+/ xcb_xkb_counted_string_16_t *R
 ** @returns void *
 **
 *****************************************************************************/
 
extern(C) void *
xcb_xkb_counted_string_16_alignment_pad (/+const+/ xcb_xkb_counted_string_16_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_counted_string_16_alignment_pad_length
 ** 
 ** @param /+const+/ xcb_xkb_counted_string_16_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_counted_string_16_alignment_pad_length (/+const+/ xcb_xkb_counted_string_16_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_counted_string_16_alignment_pad_end
 ** 
 ** @param /+const+/ xcb_xkb_counted_string_16_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_counted_string_16_alignment_pad_end (/+const+/ xcb_xkb_counted_string_16_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_counted_string_16_next
 ** 
 ** @param xcb_xkb_counted_string_16_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_counted_string_16_next (xcb_xkb_counted_string_16_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_counted_string_16_end
 ** 
 ** @param xcb_xkb_counted_string_16_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_counted_string_16_end (xcb_xkb_counted_string_16_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_kt_map_entry_next
 ** 
 ** @param xcb_xkb_kt_map_entry_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_kt_map_entry_next (xcb_xkb_kt_map_entry_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_kt_map_entry_end
 ** 
 ** @param xcb_xkb_kt_map_entry_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_kt_map_entry_end (xcb_xkb_kt_map_entry_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_kt_map_entry_t * xcb_xkb_key_type_map
 ** 
 ** @param /+const+/ xcb_xkb_key_type_t *R
 ** @returns xcb_xkb_kt_map_entry_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_kt_map_entry_t *
xcb_xkb_key_type_map (/+const+/ xcb_xkb_key_type_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_key_type_map_length
 ** 
 ** @param /+const+/ xcb_xkb_key_type_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_key_type_map_length (/+const+/ xcb_xkb_key_type_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_kt_map_entry_iterator_t xcb_xkb_key_type_map_iterator
 ** 
 ** @param /+const+/ xcb_xkb_key_type_t *R
 ** @returns xcb_xkb_kt_map_entry_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_kt_map_entry_iterator_t
xcb_xkb_key_type_map_iterator (/+const+/ xcb_xkb_key_type_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_mod_def_t * xcb_xkb_key_type_preserve
 ** 
 ** @param /+const+/ xcb_xkb_key_type_t *R
 ** @returns xcb_xkb_mod_def_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_mod_def_t *
xcb_xkb_key_type_preserve (/+const+/ xcb_xkb_key_type_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_key_type_preserve_length
 ** 
 ** @param /+const+/ xcb_xkb_key_type_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_key_type_preserve_length (/+const+/ xcb_xkb_key_type_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_mod_def_iterator_t xcb_xkb_key_type_preserve_iterator
 ** 
 ** @param /+const+/ xcb_xkb_key_type_t *R
 ** @returns xcb_xkb_mod_def_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_mod_def_iterator_t
xcb_xkb_key_type_preserve_iterator (/+const+/ xcb_xkb_key_type_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_key_type_next
 ** 
 ** @param xcb_xkb_key_type_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_key_type_next (xcb_xkb_key_type_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_key_type_end
 ** 
 ** @param xcb_xkb_key_type_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_key_type_end (xcb_xkb_key_type_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_keysym_t * xcb_xkb_key_sym_map_syms
 ** 
 ** @param /+const+/ xcb_xkb_key_sym_map_t *R
 ** @returns xcb_keysym_t *
 **
 *****************************************************************************/
 
extern(C) xcb_keysym_t *
xcb_xkb_key_sym_map_syms (/+const+/ xcb_xkb_key_sym_map_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_key_sym_map_syms_length
 ** 
 ** @param /+const+/ xcb_xkb_key_sym_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_key_sym_map_syms_length (/+const+/ xcb_xkb_key_sym_map_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_keysym_iterator_t xcb_xkb_key_sym_map_syms_iterator
 ** 
 ** @param /+const+/ xcb_xkb_key_sym_map_t *R
 ** @returns xcb_keysym_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_keysym_iterator_t
xcb_xkb_key_sym_map_syms_iterator (/+const+/ xcb_xkb_key_sym_map_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_key_sym_map_next
 ** 
 ** @param xcb_xkb_key_sym_map_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_key_sym_map_next (xcb_xkb_key_sym_map_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_key_sym_map_end
 ** 
 ** @param xcb_xkb_key_sym_map_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_key_sym_map_end (xcb_xkb_key_sym_map_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_common_behavior_next
 ** 
 ** @param xcb_xkb_common_behavior_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_common_behavior_next (xcb_xkb_common_behavior_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_common_behavior_end
 ** 
 ** @param xcb_xkb_common_behavior_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_common_behavior_end (xcb_xkb_common_behavior_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_default_behavior_next
 ** 
 ** @param xcb_xkb_default_behavior_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_default_behavior_next (xcb_xkb_default_behavior_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_default_behavior_end
 ** 
 ** @param xcb_xkb_default_behavior_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_default_behavior_end (xcb_xkb_default_behavior_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_lock_behavior_next
 ** 
 ** @param xcb_xkb_lock_behavior_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_lock_behavior_next (xcb_xkb_lock_behavior_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_lock_behavior_end
 ** 
 ** @param xcb_xkb_lock_behavior_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_lock_behavior_end (xcb_xkb_lock_behavior_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_radio_group_behavior_next
 ** 
 ** @param xcb_xkb_radio_group_behavior_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_radio_group_behavior_next (xcb_xkb_radio_group_behavior_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_radio_group_behavior_end
 ** 
 ** @param xcb_xkb_radio_group_behavior_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_radio_group_behavior_end (xcb_xkb_radio_group_behavior_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_overlay_behavior_next
 ** 
 ** @param xcb_xkb_overlay_behavior_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_overlay_behavior_next (xcb_xkb_overlay_behavior_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_overlay_behavior_end
 ** 
 ** @param xcb_xkb_overlay_behavior_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_overlay_behavior_end (xcb_xkb_overlay_behavior_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_permament_lock_behavior_next
 ** 
 ** @param xcb_xkb_permament_lock_behavior_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_permament_lock_behavior_next (xcb_xkb_permament_lock_behavior_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_permament_lock_behavior_end
 ** 
 ** @param xcb_xkb_permament_lock_behavior_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_permament_lock_behavior_end (xcb_xkb_permament_lock_behavior_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_permament_radio_group_behavior_next
 ** 
 ** @param xcb_xkb_permament_radio_group_behavior_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_permament_radio_group_behavior_next (xcb_xkb_permament_radio_group_behavior_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_permament_radio_group_behavior_end
 ** 
 ** @param xcb_xkb_permament_radio_group_behavior_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_permament_radio_group_behavior_end (xcb_xkb_permament_radio_group_behavior_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_permament_overlay_behavior_next
 ** 
 ** @param xcb_xkb_permament_overlay_behavior_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_permament_overlay_behavior_next (xcb_xkb_permament_overlay_behavior_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_permament_overlay_behavior_end
 ** 
 ** @param xcb_xkb_permament_overlay_behavior_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_permament_overlay_behavior_end (xcb_xkb_permament_overlay_behavior_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_behavior_next
 ** 
 ** @param xcb_xkb_behavior_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_behavior_next (xcb_xkb_behavior_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_behavior_end
 ** 
 ** @param xcb_xkb_behavior_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_behavior_end (xcb_xkb_behavior_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_set_behavior_next
 ** 
 ** @param xcb_xkb_set_behavior_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_set_behavior_next (xcb_xkb_set_behavior_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_set_behavior_end
 ** 
 ** @param xcb_xkb_set_behavior_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_set_behavior_end (xcb_xkb_set_behavior_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_set_explicit_next
 ** 
 ** @param xcb_xkb_set_explicit_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_set_explicit_next (xcb_xkb_set_explicit_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_set_explicit_end
 ** 
 ** @param xcb_xkb_set_explicit_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_set_explicit_end (xcb_xkb_set_explicit_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_key_mod_map_next
 ** 
 ** @param xcb_xkb_key_mod_map_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_key_mod_map_next (xcb_xkb_key_mod_map_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_key_mod_map_end
 ** 
 ** @param xcb_xkb_key_mod_map_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_key_mod_map_end (xcb_xkb_key_mod_map_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_key_v_mod_map_next
 ** 
 ** @param xcb_xkb_key_v_mod_map_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_key_v_mod_map_next (xcb_xkb_key_v_mod_map_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_key_v_mod_map_end
 ** 
 ** @param xcb_xkb_key_v_mod_map_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_key_v_mod_map_end (xcb_xkb_key_v_mod_map_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_kt_set_map_entry_next
 ** 
 ** @param xcb_xkb_kt_set_map_entry_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_kt_set_map_entry_next (xcb_xkb_kt_set_map_entry_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_kt_set_map_entry_end
 ** 
 ** @param xcb_xkb_kt_set_map_entry_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_kt_set_map_entry_end (xcb_xkb_kt_set_map_entry_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_kt_set_map_entry_t * xcb_xkb_set_key_type_entries
 ** 
 ** @param /+const+/ xcb_xkb_set_key_type_t *R
 ** @returns xcb_xkb_kt_set_map_entry_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_kt_set_map_entry_t *
xcb_xkb_set_key_type_entries (/+const+/ xcb_xkb_set_key_type_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_set_key_type_entries_length
 ** 
 ** @param /+const+/ xcb_xkb_set_key_type_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_set_key_type_entries_length (/+const+/ xcb_xkb_set_key_type_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_kt_set_map_entry_iterator_t xcb_xkb_set_key_type_entries_iterator
 ** 
 ** @param /+const+/ xcb_xkb_set_key_type_t *R
 ** @returns xcb_xkb_kt_set_map_entry_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_kt_set_map_entry_iterator_t
xcb_xkb_set_key_type_entries_iterator (/+const+/ xcb_xkb_set_key_type_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_kt_set_map_entry_t * xcb_xkb_set_key_type_preserve_entries
 ** 
 ** @param /+const+/ xcb_xkb_set_key_type_t *R
 ** @returns xcb_xkb_kt_set_map_entry_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_kt_set_map_entry_t *
xcb_xkb_set_key_type_preserve_entries (/+const+/ xcb_xkb_set_key_type_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_set_key_type_preserve_entries_length
 ** 
 ** @param /+const+/ xcb_xkb_set_key_type_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_set_key_type_preserve_entries_length (/+const+/ xcb_xkb_set_key_type_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_kt_set_map_entry_iterator_t xcb_xkb_set_key_type_preserve_entries_iterator
 ** 
 ** @param /+const+/ xcb_xkb_set_key_type_t *R
 ** @returns xcb_xkb_kt_set_map_entry_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_kt_set_map_entry_iterator_t
xcb_xkb_set_key_type_preserve_entries_iterator (/+const+/ xcb_xkb_set_key_type_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_set_key_type_next
 ** 
 ** @param xcb_xkb_set_key_type_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_set_key_type_next (xcb_xkb_set_key_type_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_set_key_type_end
 ** 
 ** @param xcb_xkb_set_key_type_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_set_key_type_end (xcb_xkb_set_key_type_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_string8_next
 ** 
 ** @param xcb_xkb_string8_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_string8_next (xcb_xkb_string8_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_string8_end
 ** 
 ** @param xcb_xkb_string8_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_string8_end (xcb_xkb_string8_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_point_t * xcb_xkb_outline_points
 ** 
 ** @param /+const+/ xcb_xkb_outline_t *R
 ** @returns xcb_point_t *
 **
 *****************************************************************************/
 
extern(C) xcb_point_t *
xcb_xkb_outline_points (/+const+/ xcb_xkb_outline_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_outline_points_length
 ** 
 ** @param /+const+/ xcb_xkb_outline_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_outline_points_length (/+const+/ xcb_xkb_outline_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_point_iterator_t xcb_xkb_outline_points_iterator
 ** 
 ** @param /+const+/ xcb_xkb_outline_t *R
 ** @returns xcb_point_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_point_iterator_t
xcb_xkb_outline_points_iterator (/+const+/ xcb_xkb_outline_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_outline_next
 ** 
 ** @param xcb_xkb_outline_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_outline_next (xcb_xkb_outline_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_outline_end
 ** 
 ** @param xcb_xkb_outline_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_outline_end (xcb_xkb_outline_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_shape_outlines_length
 ** 
 ** @param /+const+/ xcb_xkb_shape_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_shape_outlines_length (/+const+/ xcb_xkb_shape_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_outline_iterator_t xcb_xkb_shape_outlines_iterator
 ** 
 ** @param /+const+/ xcb_xkb_shape_t *R
 ** @returns xcb_xkb_outline_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_outline_iterator_t
xcb_xkb_shape_outlines_iterator (/+const+/ xcb_xkb_shape_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_shape_next
 ** 
 ** @param xcb_xkb_shape_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_shape_next (xcb_xkb_shape_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_shape_end
 ** 
 ** @param xcb_xkb_shape_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_shape_end (xcb_xkb_shape_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_key_next
 ** 
 ** @param xcb_xkb_key_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_key_next (xcb_xkb_key_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_key_end
 ** 
 ** @param xcb_xkb_key_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_key_end (xcb_xkb_key_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_overlay_key_next
 ** 
 ** @param xcb_xkb_overlay_key_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_overlay_key_next (xcb_xkb_overlay_key_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_overlay_key_end
 ** 
 ** @param xcb_xkb_overlay_key_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_overlay_key_end (xcb_xkb_overlay_key_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_overlay_row_keys_length
 ** 
 ** @param /+const+/ xcb_xkb_overlay_row_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_overlay_row_keys_length (/+const+/ xcb_xkb_overlay_row_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_overlay_key_iterator_t xcb_xkb_overlay_row_keys_iterator
 ** 
 ** @param /+const+/ xcb_xkb_overlay_row_t *R
 ** @returns xcb_xkb_overlay_key_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_overlay_key_iterator_t
xcb_xkb_overlay_row_keys_iterator (/+const+/ xcb_xkb_overlay_row_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_overlay_row_next
 ** 
 ** @param xcb_xkb_overlay_row_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_overlay_row_next (xcb_xkb_overlay_row_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_overlay_row_end
 ** 
 ** @param xcb_xkb_overlay_row_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_overlay_row_end (xcb_xkb_overlay_row_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_overlay_rows_length
 ** 
 ** @param /+const+/ xcb_xkb_overlay_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_overlay_rows_length (/+const+/ xcb_xkb_overlay_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_overlay_row_iterator_t xcb_xkb_overlay_rows_iterator
 ** 
 ** @param /+const+/ xcb_xkb_overlay_t *R
 ** @returns xcb_xkb_overlay_row_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_overlay_row_iterator_t
xcb_xkb_overlay_rows_iterator (/+const+/ xcb_xkb_overlay_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_overlay_next
 ** 
 ** @param xcb_xkb_overlay_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_overlay_next (xcb_xkb_overlay_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_overlay_end
 ** 
 ** @param xcb_xkb_overlay_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_overlay_end (xcb_xkb_overlay_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_row_keys_length
 ** 
 ** @param /+const+/ xcb_xkb_row_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_row_keys_length (/+const+/ xcb_xkb_row_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_iterator_t xcb_xkb_row_keys_iterator
 ** 
 ** @param /+const+/ xcb_xkb_row_t *R
 ** @returns xcb_xkb_key_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_iterator_t
xcb_xkb_row_keys_iterator (/+const+/ xcb_xkb_row_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_row_next
 ** 
 ** @param xcb_xkb_row_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_row_next (xcb_xkb_row_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_row_end
 ** 
 ** @param xcb_xkb_row_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_row_end (xcb_xkb_row_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_string8_t * xcb_xkb_listing_string
 ** 
 ** @param /+const+/ xcb_xkb_listing_t *R
 ** @returns xcb_xkb_string8_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_string8_t *
xcb_xkb_listing_string (/+const+/ xcb_xkb_listing_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_listing_string_length
 ** 
 ** @param /+const+/ xcb_xkb_listing_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_listing_string_length (/+const+/ xcb_xkb_listing_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_string8_iterator_t xcb_xkb_listing_string_iterator
 ** 
 ** @param /+const+/ xcb_xkb_listing_t *R
 ** @returns xcb_xkb_string8_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_string8_iterator_t
xcb_xkb_listing_string_iterator (/+const+/ xcb_xkb_listing_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_listing_next
 ** 
 ** @param xcb_xkb_listing_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_listing_next (xcb_xkb_listing_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_listing_end
 ** 
 ** @param xcb_xkb_listing_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_listing_end (xcb_xkb_listing_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_device_led_info_next
 ** 
 ** @param xcb_xkb_device_led_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_device_led_info_next (xcb_xkb_device_led_info_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_device_led_info_end
 ** 
 ** @param xcb_xkb_device_led_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_device_led_info_end (xcb_xkb_device_led_info_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_sa_no_action_next
 ** 
 ** @param xcb_xkb_sa_no_action_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_no_action_next (xcb_xkb_sa_no_action_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_no_action_end
 ** 
 ** @param xcb_xkb_sa_no_action_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_sa_no_action_end (xcb_xkb_sa_no_action_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_sa_set_mods_next
 ** 
 ** @param xcb_xkb_sa_set_mods_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_set_mods_next (xcb_xkb_sa_set_mods_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_set_mods_end
 ** 
 ** @param xcb_xkb_sa_set_mods_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_sa_set_mods_end (xcb_xkb_sa_set_mods_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_sa_latch_mods_next
 ** 
 ** @param xcb_xkb_sa_latch_mods_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_latch_mods_next (xcb_xkb_sa_latch_mods_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_latch_mods_end
 ** 
 ** @param xcb_xkb_sa_latch_mods_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_sa_latch_mods_end (xcb_xkb_sa_latch_mods_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_sa_lock_mods_next
 ** 
 ** @param xcb_xkb_sa_lock_mods_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_lock_mods_next (xcb_xkb_sa_lock_mods_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_lock_mods_end
 ** 
 ** @param xcb_xkb_sa_lock_mods_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_sa_lock_mods_end (xcb_xkb_sa_lock_mods_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_sa_set_group_next
 ** 
 ** @param xcb_xkb_sa_set_group_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_set_group_next (xcb_xkb_sa_set_group_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_set_group_end
 ** 
 ** @param xcb_xkb_sa_set_group_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_sa_set_group_end (xcb_xkb_sa_set_group_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_sa_latch_group_next
 ** 
 ** @param xcb_xkb_sa_latch_group_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_latch_group_next (xcb_xkb_sa_latch_group_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_latch_group_end
 ** 
 ** @param xcb_xkb_sa_latch_group_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_sa_latch_group_end (xcb_xkb_sa_latch_group_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_sa_lock_group_next
 ** 
 ** @param xcb_xkb_sa_lock_group_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_lock_group_next (xcb_xkb_sa_lock_group_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_lock_group_end
 ** 
 ** @param xcb_xkb_sa_lock_group_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_sa_lock_group_end (xcb_xkb_sa_lock_group_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_sa_move_ptr_next
 ** 
 ** @param xcb_xkb_sa_move_ptr_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_move_ptr_next (xcb_xkb_sa_move_ptr_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_move_ptr_end
 ** 
 ** @param xcb_xkb_sa_move_ptr_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_sa_move_ptr_end (xcb_xkb_sa_move_ptr_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_sa_ptr_btn_next
 ** 
 ** @param xcb_xkb_sa_ptr_btn_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_ptr_btn_next (xcb_xkb_sa_ptr_btn_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_ptr_btn_end
 ** 
 ** @param xcb_xkb_sa_ptr_btn_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_sa_ptr_btn_end (xcb_xkb_sa_ptr_btn_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_sa_lock_ptr_btn_next
 ** 
 ** @param xcb_xkb_sa_lock_ptr_btn_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_lock_ptr_btn_next (xcb_xkb_sa_lock_ptr_btn_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_lock_ptr_btn_end
 ** 
 ** @param xcb_xkb_sa_lock_ptr_btn_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_sa_lock_ptr_btn_end (xcb_xkb_sa_lock_ptr_btn_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_sa_set_ptr_dflt_next
 ** 
 ** @param xcb_xkb_sa_set_ptr_dflt_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_set_ptr_dflt_next (xcb_xkb_sa_set_ptr_dflt_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_set_ptr_dflt_end
 ** 
 ** @param xcb_xkb_sa_set_ptr_dflt_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_sa_set_ptr_dflt_end (xcb_xkb_sa_set_ptr_dflt_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_sa_iso_lock_next
 ** 
 ** @param xcb_xkb_sa_iso_lock_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_iso_lock_next (xcb_xkb_sa_iso_lock_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_iso_lock_end
 ** 
 ** @param xcb_xkb_sa_iso_lock_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_sa_iso_lock_end (xcb_xkb_sa_iso_lock_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_sa_terminate_next
 ** 
 ** @param xcb_xkb_sa_terminate_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_terminate_next (xcb_xkb_sa_terminate_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_terminate_end
 ** 
 ** @param xcb_xkb_sa_terminate_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_sa_terminate_end (xcb_xkb_sa_terminate_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_sa_switch_screen_next
 ** 
 ** @param xcb_xkb_sa_switch_screen_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_switch_screen_next (xcb_xkb_sa_switch_screen_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_switch_screen_end
 ** 
 ** @param xcb_xkb_sa_switch_screen_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_sa_switch_screen_end (xcb_xkb_sa_switch_screen_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_sa_set_controls_next
 ** 
 ** @param xcb_xkb_sa_set_controls_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_set_controls_next (xcb_xkb_sa_set_controls_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_set_controls_end
 ** 
 ** @param xcb_xkb_sa_set_controls_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_sa_set_controls_end (xcb_xkb_sa_set_controls_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_sa_lock_controls_next
 ** 
 ** @param xcb_xkb_sa_lock_controls_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_lock_controls_next (xcb_xkb_sa_lock_controls_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_lock_controls_end
 ** 
 ** @param xcb_xkb_sa_lock_controls_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_sa_lock_controls_end (xcb_xkb_sa_lock_controls_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_sa_action_message_next
 ** 
 ** @param xcb_xkb_sa_action_message_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_action_message_next (xcb_xkb_sa_action_message_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_action_message_end
 ** 
 ** @param xcb_xkb_sa_action_message_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_sa_action_message_end (xcb_xkb_sa_action_message_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_sa_redirect_key_next
 ** 
 ** @param xcb_xkb_sa_redirect_key_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_redirect_key_next (xcb_xkb_sa_redirect_key_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_redirect_key_end
 ** 
 ** @param xcb_xkb_sa_redirect_key_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_sa_redirect_key_end (xcb_xkb_sa_redirect_key_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_sa_device_btn_next
 ** 
 ** @param xcb_xkb_sa_device_btn_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_device_btn_next (xcb_xkb_sa_device_btn_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_device_btn_end
 ** 
 ** @param xcb_xkb_sa_device_btn_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_sa_device_btn_end (xcb_xkb_sa_device_btn_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_sa_lock_device_btn_next
 ** 
 ** @param xcb_xkb_sa_lock_device_btn_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_lock_device_btn_next (xcb_xkb_sa_lock_device_btn_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_lock_device_btn_end
 ** 
 ** @param xcb_xkb_sa_lock_device_btn_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_sa_lock_device_btn_end (xcb_xkb_sa_lock_device_btn_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_sa_device_valuator_next
 ** 
 ** @param xcb_xkb_sa_device_valuator_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_device_valuator_next (xcb_xkb_sa_device_valuator_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_device_valuator_end
 ** 
 ** @param xcb_xkb_sa_device_valuator_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_sa_device_valuator_end (xcb_xkb_sa_device_valuator_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_si_action_next
 ** 
 ** @param xcb_xkb_si_action_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_si_action_next (xcb_xkb_si_action_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_si_action_end
 ** 
 ** @param xcb_xkb_si_action_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_si_action_end (xcb_xkb_si_action_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_sym_interpret_next
 ** 
 ** @param xcb_xkb_sym_interpret_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sym_interpret_next (xcb_xkb_sym_interpret_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sym_interpret_end
 ** 
 ** @param xcb_xkb_sym_interpret_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_sym_interpret_end (xcb_xkb_sym_interpret_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xkb_action_next
 ** 
 ** @param xcb_xkb_action_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_action_next (xcb_xkb_action_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_action_end
 ** 
 ** @param xcb_xkb_action_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_action_end (xcb_xkb_action_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_use_extension_cookie_t xcb_xkb_use_extension
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            wantedMajor
 ** @param ushort            wantedMinor
 ** @returns xcb_xkb_use_extension_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_use_extension_cookie_t
xcb_xkb_use_extension (xcb_connection_t *c  /**< */,
                       ushort            wantedMajor  /**< */,
                       ushort            wantedMinor  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_use_extension_cookie_t xcb_xkb_use_extension_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            wantedMajor
 ** @param ushort            wantedMinor
 ** @returns xcb_xkb_use_extension_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_use_extension_cookie_t
xcb_xkb_use_extension_unchecked (xcb_connection_t *c  /**< */,
                                 ushort            wantedMajor  /**< */,
                                 ushort            wantedMinor  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_use_extension_reply_t * xcb_xkb_use_extension_reply
 ** 
 ** @param xcb_connection_t                *c
 ** @param xcb_xkb_use_extension_cookie_t   cookie
 ** @param xcb_generic_error_t            **e
 ** @returns xcb_xkb_use_extension_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_use_extension_reply_t *
xcb_xkb_use_extension_reply (xcb_connection_t                *c  /**< */,
                             xcb_xkb_use_extension_cookie_t   cookie  /**< */,
                             xcb_generic_error_t            **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_select_events_checked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ushort                 affectWhich
 ** @param ushort                 clear
 ** @param ushort                 selectAll
 ** @param ushort                 affectMap
 ** @param ushort                 map
 ** @param ushort                 affectNewKeyboard
 ** @param ushort                 newKeyboardDetails
 ** @param ushort                 affectState
 ** @param ushort                 stateDetails
 ** @param uint                   affectCtrls
 ** @param uint                   ctrlDetails
 ** @param uint                   affectIndicatorState
 ** @param uint                   indicatorStateDetails
 ** @param uint                   affectIndicatorMap
 ** @param uint                   indicatorMapDetails
 ** @param ushort                 affectNames
 ** @param ushort                 namesDetails
 ** @param ubyte                  affectCompat
 ** @param ubyte                  compatDetails
 ** @param ubyte                  affectBell
 ** @param ubyte                  bellDetails
 ** @param ubyte                  affectMsgDetails
 ** @param ubyte                  msgDetails
 ** @param ushort                 affectAccessX
 ** @param ushort                 accessXDetails
 ** @param ushort                 affectExtDev
 ** @param ushort                 extdevDetails
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_select_events_checked (xcb_connection_t      *c  /**< */,
                               xcb_xkb_device_spec_t  deviceSpec  /**< */,
                               ushort                 affectWhich  /**< */,
                               ushort                 clear  /**< */,
                               ushort                 selectAll  /**< */,
                               ushort                 affectMap  /**< */,
                               ushort                 map  /**< */,
                               ushort                 affectNewKeyboard  /**< */,
                               ushort                 newKeyboardDetails  /**< */,
                               ushort                 affectState  /**< */,
                               ushort                 stateDetails  /**< */,
                               uint                   affectCtrls  /**< */,
                               uint                   ctrlDetails  /**< */,
                               uint                   affectIndicatorState  /**< */,
                               uint                   indicatorStateDetails  /**< */,
                               uint                   affectIndicatorMap  /**< */,
                               uint                   indicatorMapDetails  /**< */,
                               ushort                 affectNames  /**< */,
                               ushort                 namesDetails  /**< */,
                               ubyte                  affectCompat  /**< */,
                               ubyte                  compatDetails  /**< */,
                               ubyte                  affectBell  /**< */,
                               ubyte                  bellDetails  /**< */,
                               ubyte                  affectMsgDetails  /**< */,
                               ubyte                  msgDetails  /**< */,
                               ushort                 affectAccessX  /**< */,
                               ushort                 accessXDetails  /**< */,
                               ushort                 affectExtDev  /**< */,
                               ushort                 extdevDetails  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_select_events
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ushort                 affectWhich
 ** @param ushort                 clear
 ** @param ushort                 selectAll
 ** @param ushort                 affectMap
 ** @param ushort                 map
 ** @param ushort                 affectNewKeyboard
 ** @param ushort                 newKeyboardDetails
 ** @param ushort                 affectState
 ** @param ushort                 stateDetails
 ** @param uint                   affectCtrls
 ** @param uint                   ctrlDetails
 ** @param uint                   affectIndicatorState
 ** @param uint                   indicatorStateDetails
 ** @param uint                   affectIndicatorMap
 ** @param uint                   indicatorMapDetails
 ** @param ushort                 affectNames
 ** @param ushort                 namesDetails
 ** @param ubyte                  affectCompat
 ** @param ubyte                  compatDetails
 ** @param ubyte                  affectBell
 ** @param ubyte                  bellDetails
 ** @param ubyte                  affectMsgDetails
 ** @param ubyte                  msgDetails
 ** @param ushort                 affectAccessX
 ** @param ushort                 accessXDetails
 ** @param ushort                 affectExtDev
 ** @param ushort                 extdevDetails
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_select_events (xcb_connection_t      *c  /**< */,
                       xcb_xkb_device_spec_t  deviceSpec  /**< */,
                       ushort                 affectWhich  /**< */,
                       ushort                 clear  /**< */,
                       ushort                 selectAll  /**< */,
                       ushort                 affectMap  /**< */,
                       ushort                 map  /**< */,
                       ushort                 affectNewKeyboard  /**< */,
                       ushort                 newKeyboardDetails  /**< */,
                       ushort                 affectState  /**< */,
                       ushort                 stateDetails  /**< */,
                       uint                   affectCtrls  /**< */,
                       uint                   ctrlDetails  /**< */,
                       uint                   affectIndicatorState  /**< */,
                       uint                   indicatorStateDetails  /**< */,
                       uint                   affectIndicatorMap  /**< */,
                       uint                   indicatorMapDetails  /**< */,
                       ushort                 affectNames  /**< */,
                       ushort                 namesDetails  /**< */,
                       ubyte                  affectCompat  /**< */,
                       ubyte                  compatDetails  /**< */,
                       ubyte                  affectBell  /**< */,
                       ubyte                  bellDetails  /**< */,
                       ubyte                  affectMsgDetails  /**< */,
                       ubyte                  msgDetails  /**< */,
                       ushort                 affectAccessX  /**< */,
                       ushort                 accessXDetails  /**< */,
                       ushort                 affectExtDev  /**< */,
                       ushort                 extdevDetails  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_bell_checked
 ** 
 ** @param xcb_connection_t          *c
 ** @param xcb_xkb_device_spec_t      deviceSpec
 ** @param xcb_xkb_bell_class_spec_t  bellClass
 ** @param xcb_xkb_id_spec_t          bellID
 ** @param byte                       percent
 ** @param bool                       forceSound
 ** @param bool                       eventOnly
 ** @param short                      pitch
 ** @param short                      duration
 ** @param xcb_atom_t                 name
 ** @param xcb_window_t               window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_bell_checked (xcb_connection_t          *c  /**< */,
                      xcb_xkb_device_spec_t      deviceSpec  /**< */,
                      xcb_xkb_bell_class_spec_t  bellClass  /**< */,
                      xcb_xkb_id_spec_t          bellID  /**< */,
                      byte                       percent  /**< */,
                      bool                       forceSound  /**< */,
                      bool                       eventOnly  /**< */,
                      short                      pitch  /**< */,
                      short                      duration  /**< */,
                      xcb_atom_t                 name  /**< */,
                      xcb_window_t               window  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_bell
 ** 
 ** @param xcb_connection_t          *c
 ** @param xcb_xkb_device_spec_t      deviceSpec
 ** @param xcb_xkb_bell_class_spec_t  bellClass
 ** @param xcb_xkb_id_spec_t          bellID
 ** @param byte                       percent
 ** @param bool                       forceSound
 ** @param bool                       eventOnly
 ** @param short                      pitch
 ** @param short                      duration
 ** @param xcb_atom_t                 name
 ** @param xcb_window_t               window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_bell (xcb_connection_t          *c  /**< */,
              xcb_xkb_device_spec_t      deviceSpec  /**< */,
              xcb_xkb_bell_class_spec_t  bellClass  /**< */,
              xcb_xkb_id_spec_t          bellID  /**< */,
              byte                       percent  /**< */,
              bool                       forceSound  /**< */,
              bool                       eventOnly  /**< */,
              short                      pitch  /**< */,
              short                      duration  /**< */,
              xcb_atom_t                 name  /**< */,
              xcb_window_t               window  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_state_cookie_t xcb_xkb_get_state
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @returns xcb_xkb_get_state_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_state_cookie_t
xcb_xkb_get_state (xcb_connection_t      *c  /**< */,
                   xcb_xkb_device_spec_t  deviceSpec  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_state_cookie_t xcb_xkb_get_state_unchecked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @returns xcb_xkb_get_state_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_state_cookie_t
xcb_xkb_get_state_unchecked (xcb_connection_t      *c  /**< */,
                             xcb_xkb_device_spec_t  deviceSpec  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_state_reply_t * xcb_xkb_get_state_reply
 ** 
 ** @param xcb_connection_t            *c
 ** @param xcb_xkb_get_state_cookie_t   cookie
 ** @param xcb_generic_error_t        **e
 ** @returns xcb_xkb_get_state_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_state_reply_t *
xcb_xkb_get_state_reply (xcb_connection_t            *c  /**< */,
                         xcb_xkb_get_state_cookie_t   cookie  /**< */,
                         xcb_generic_error_t        **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_latch_lock_state_checked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ubyte                  affectModLocks
 ** @param ubyte                  modLocks
 ** @param bool                   lockGroup
 ** @param ubyte                  groupLock
 ** @param ubyte                  affectModLatches
 ** @param bool                   latchGroup
 ** @param ushort                 groupLatch
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_latch_lock_state_checked (xcb_connection_t      *c  /**< */,
                                  xcb_xkb_device_spec_t  deviceSpec  /**< */,
                                  ubyte                  affectModLocks  /**< */,
                                  ubyte                  modLocks  /**< */,
                                  bool                   lockGroup  /**< */,
                                  ubyte                  groupLock  /**< */,
                                  ubyte                  affectModLatches  /**< */,
                                  bool                   latchGroup  /**< */,
                                  ushort                 groupLatch  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_latch_lock_state
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ubyte                  affectModLocks
 ** @param ubyte                  modLocks
 ** @param bool                   lockGroup
 ** @param ubyte                  groupLock
 ** @param ubyte                  affectModLatches
 ** @param bool                   latchGroup
 ** @param ushort                 groupLatch
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_latch_lock_state (xcb_connection_t      *c  /**< */,
                          xcb_xkb_device_spec_t  deviceSpec  /**< */,
                          ubyte                  affectModLocks  /**< */,
                          ubyte                  modLocks  /**< */,
                          bool                   lockGroup  /**< */,
                          ubyte                  groupLock  /**< */,
                          ubyte                  affectModLatches  /**< */,
                          bool                   latchGroup  /**< */,
                          ushort                 groupLatch  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_controls_cookie_t xcb_xkb_get_controls
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @returns xcb_xkb_get_controls_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_controls_cookie_t
xcb_xkb_get_controls (xcb_connection_t      *c  /**< */,
                      xcb_xkb_device_spec_t  deviceSpec  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_controls_cookie_t xcb_xkb_get_controls_unchecked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @returns xcb_xkb_get_controls_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_controls_cookie_t
xcb_xkb_get_controls_unchecked (xcb_connection_t      *c  /**< */,
                                xcb_xkb_device_spec_t  deviceSpec  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_controls_reply_t * xcb_xkb_get_controls_reply
 ** 
 ** @param xcb_connection_t               *c
 ** @param xcb_xkb_get_controls_cookie_t   cookie
 ** @param xcb_generic_error_t           **e
 ** @returns xcb_xkb_get_controls_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_controls_reply_t *
xcb_xkb_get_controls_reply (xcb_connection_t               *c  /**< */,
                            xcb_xkb_get_controls_cookie_t   cookie  /**< */,
                            xcb_generic_error_t           **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_controls_checked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ubyte                  affectInternalRealMods
 ** @param ubyte                  internalRealMods
 ** @param ubyte                  affectIgnoreLockRealMods
 ** @param ubyte                  ignoreLockRealMods
 ** @param ushort                 affectInternalVirtualMods
 ** @param ushort                 internalVirtualMods
 ** @param ushort                 affectIgnoreLockVirtualMods
 ** @param ushort                 ignoreLockVirtualMods
 ** @param ubyte                  mouseKeysDfltBtn
 ** @param ubyte                  groupsWrap
 ** @param ushort                 accessXOptions
 ** @param uint                   affectEnabledControls
 ** @param uint                   enabledControls
 ** @param uint                   changeControls
 ** @param ushort                 repeatDelay
 ** @param ushort                 repeatInterval
 ** @param ushort                 slowKeysDelay
 ** @param ushort                 debounceDelay
 ** @param ushort                 mouseKeysDelay
 ** @param ushort                 mouseKeysInterval
 ** @param ushort                 mouseKeysTimeToMax
 ** @param ushort                 mouseKeysMaxSpeed
 ** @param short                  mouseKeysCurve
 ** @param ushort                 accessXTimeout
 ** @param uint                   accessXTimeoutMask
 ** @param uint                   accessXTimeoutValues
 ** @param ushort                 accessXTimeoutOptionsMask
 ** @param ushort                 accessXTimeoutOptionsValues
 ** @param /+const+/ ubyte       *perKeyRepeat
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_controls_checked (xcb_connection_t      *c  /**< */,
                              xcb_xkb_device_spec_t  deviceSpec  /**< */,
                              ubyte                  affectInternalRealMods  /**< */,
                              ubyte                  internalRealMods  /**< */,
                              ubyte                  affectIgnoreLockRealMods  /**< */,
                              ubyte                  ignoreLockRealMods  /**< */,
                              ushort                 affectInternalVirtualMods  /**< */,
                              ushort                 internalVirtualMods  /**< */,
                              ushort                 affectIgnoreLockVirtualMods  /**< */,
                              ushort                 ignoreLockVirtualMods  /**< */,
                              ubyte                  mouseKeysDfltBtn  /**< */,
                              ubyte                  groupsWrap  /**< */,
                              ushort                 accessXOptions  /**< */,
                              uint                   affectEnabledControls  /**< */,
                              uint                   enabledControls  /**< */,
                              uint                   changeControls  /**< */,
                              ushort                 repeatDelay  /**< */,
                              ushort                 repeatInterval  /**< */,
                              ushort                 slowKeysDelay  /**< */,
                              ushort                 debounceDelay  /**< */,
                              ushort                 mouseKeysDelay  /**< */,
                              ushort                 mouseKeysInterval  /**< */,
                              ushort                 mouseKeysTimeToMax  /**< */,
                              ushort                 mouseKeysMaxSpeed  /**< */,
                              short                  mouseKeysCurve  /**< */,
                              ushort                 accessXTimeout  /**< */,
                              uint                   accessXTimeoutMask  /**< */,
                              uint                   accessXTimeoutValues  /**< */,
                              ushort                 accessXTimeoutOptionsMask  /**< */,
                              ushort                 accessXTimeoutOptionsValues  /**< */,
                              /+const+/ ubyte       *perKeyRepeat  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_controls
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ubyte                  affectInternalRealMods
 ** @param ubyte                  internalRealMods
 ** @param ubyte                  affectIgnoreLockRealMods
 ** @param ubyte                  ignoreLockRealMods
 ** @param ushort                 affectInternalVirtualMods
 ** @param ushort                 internalVirtualMods
 ** @param ushort                 affectIgnoreLockVirtualMods
 ** @param ushort                 ignoreLockVirtualMods
 ** @param ubyte                  mouseKeysDfltBtn
 ** @param ubyte                  groupsWrap
 ** @param ushort                 accessXOptions
 ** @param uint                   affectEnabledControls
 ** @param uint                   enabledControls
 ** @param uint                   changeControls
 ** @param ushort                 repeatDelay
 ** @param ushort                 repeatInterval
 ** @param ushort                 slowKeysDelay
 ** @param ushort                 debounceDelay
 ** @param ushort                 mouseKeysDelay
 ** @param ushort                 mouseKeysInterval
 ** @param ushort                 mouseKeysTimeToMax
 ** @param ushort                 mouseKeysMaxSpeed
 ** @param short                  mouseKeysCurve
 ** @param ushort                 accessXTimeout
 ** @param uint                   accessXTimeoutMask
 ** @param uint                   accessXTimeoutValues
 ** @param ushort                 accessXTimeoutOptionsMask
 ** @param ushort                 accessXTimeoutOptionsValues
 ** @param /+const+/ ubyte       *perKeyRepeat
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_controls (xcb_connection_t      *c  /**< */,
                      xcb_xkb_device_spec_t  deviceSpec  /**< */,
                      ubyte                  affectInternalRealMods  /**< */,
                      ubyte                  internalRealMods  /**< */,
                      ubyte                  affectIgnoreLockRealMods  /**< */,
                      ubyte                  ignoreLockRealMods  /**< */,
                      ushort                 affectInternalVirtualMods  /**< */,
                      ushort                 internalVirtualMods  /**< */,
                      ushort                 affectIgnoreLockVirtualMods  /**< */,
                      ushort                 ignoreLockVirtualMods  /**< */,
                      ubyte                  mouseKeysDfltBtn  /**< */,
                      ubyte                  groupsWrap  /**< */,
                      ushort                 accessXOptions  /**< */,
                      uint                   affectEnabledControls  /**< */,
                      uint                   enabledControls  /**< */,
                      uint                   changeControls  /**< */,
                      ushort                 repeatDelay  /**< */,
                      ushort                 repeatInterval  /**< */,
                      ushort                 slowKeysDelay  /**< */,
                      ushort                 debounceDelay  /**< */,
                      ushort                 mouseKeysDelay  /**< */,
                      ushort                 mouseKeysInterval  /**< */,
                      ushort                 mouseKeysTimeToMax  /**< */,
                      ushort                 mouseKeysMaxSpeed  /**< */,
                      short                  mouseKeysCurve  /**< */,
                      ushort                 accessXTimeout  /**< */,
                      uint                   accessXTimeoutMask  /**< */,
                      uint                   accessXTimeoutValues  /**< */,
                      ushort                 accessXTimeoutOptionsMask  /**< */,
                      ushort                 accessXTimeoutOptionsValues  /**< */,
                      /+const+/ ubyte       *perKeyRepeat  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_map_cookie_t xcb_xkb_get_map
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ushort                 full
 ** @param ushort                 partial
 ** @param ubyte                  firstType
 ** @param ubyte                  nTypes
 ** @param xcb_keycode_t          firstKeySym
 ** @param ubyte                  nKeySyms
 ** @param xcb_keycode_t          firstKeyAction
 ** @param ubyte                  nKeyActions
 ** @param xcb_keycode_t          firstKeyBehavior
 ** @param ubyte                  nKeyBehaviors
 ** @param ushort                 virtualMods
 ** @param xcb_keycode_t          firstKeyExplicit
 ** @param ubyte                  nKeyExplicit
 ** @param xcb_keycode_t          firstModMapKey
 ** @param ubyte                  nModMapKeys
 ** @param xcb_keycode_t          firstVModMapKey
 ** @param ubyte                  nVModMapKeys
 ** @returns xcb_xkb_get_map_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_map_cookie_t
xcb_xkb_get_map (xcb_connection_t      *c  /**< */,
                 xcb_xkb_device_spec_t  deviceSpec  /**< */,
                 ushort                 full  /**< */,
                 ushort                 partial  /**< */,
                 ubyte                  firstType  /**< */,
                 ubyte                  nTypes  /**< */,
                 xcb_keycode_t          firstKeySym  /**< */,
                 ubyte                  nKeySyms  /**< */,
                 xcb_keycode_t          firstKeyAction  /**< */,
                 ubyte                  nKeyActions  /**< */,
                 xcb_keycode_t          firstKeyBehavior  /**< */,
                 ubyte                  nKeyBehaviors  /**< */,
                 ushort                 virtualMods  /**< */,
                 xcb_keycode_t          firstKeyExplicit  /**< */,
                 ubyte                  nKeyExplicit  /**< */,
                 xcb_keycode_t          firstModMapKey  /**< */,
                 ubyte                  nModMapKeys  /**< */,
                 xcb_keycode_t          firstVModMapKey  /**< */,
                 ubyte                  nVModMapKeys  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_map_cookie_t xcb_xkb_get_map_unchecked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ushort                 full
 ** @param ushort                 partial
 ** @param ubyte                  firstType
 ** @param ubyte                  nTypes
 ** @param xcb_keycode_t          firstKeySym
 ** @param ubyte                  nKeySyms
 ** @param xcb_keycode_t          firstKeyAction
 ** @param ubyte                  nKeyActions
 ** @param xcb_keycode_t          firstKeyBehavior
 ** @param ubyte                  nKeyBehaviors
 ** @param ushort                 virtualMods
 ** @param xcb_keycode_t          firstKeyExplicit
 ** @param ubyte                  nKeyExplicit
 ** @param xcb_keycode_t          firstModMapKey
 ** @param ubyte                  nModMapKeys
 ** @param xcb_keycode_t          firstVModMapKey
 ** @param ubyte                  nVModMapKeys
 ** @returns xcb_xkb_get_map_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_map_cookie_t
xcb_xkb_get_map_unchecked (xcb_connection_t      *c  /**< */,
                           xcb_xkb_device_spec_t  deviceSpec  /**< */,
                           ushort                 full  /**< */,
                           ushort                 partial  /**< */,
                           ubyte                  firstType  /**< */,
                           ubyte                  nTypes  /**< */,
                           xcb_keycode_t          firstKeySym  /**< */,
                           ubyte                  nKeySyms  /**< */,
                           xcb_keycode_t          firstKeyAction  /**< */,
                           ubyte                  nKeyActions  /**< */,
                           xcb_keycode_t          firstKeyBehavior  /**< */,
                           ubyte                  nKeyBehaviors  /**< */,
                           ushort                 virtualMods  /**< */,
                           xcb_keycode_t          firstKeyExplicit  /**< */,
                           ubyte                  nKeyExplicit  /**< */,
                           xcb_keycode_t          firstModMapKey  /**< */,
                           ubyte                  nModMapKeys  /**< */,
                           xcb_keycode_t          firstVModMapKey  /**< */,
                           ubyte                  nVModMapKeys  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_map_reply_t * xcb_xkb_get_map_reply
 ** 
 ** @param xcb_connection_t          *c
 ** @param xcb_xkb_get_map_cookie_t   cookie
 ** @param xcb_generic_error_t      **e
 ** @returns xcb_xkb_get_map_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_map_reply_t *
xcb_xkb_get_map_reply (xcb_connection_t          *c  /**< */,
                       xcb_xkb_get_map_cookie_t   cookie  /**< */,
                       xcb_generic_error_t      **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_map_checked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ushort                 present
 ** @param ushort                 flags
 ** @param xcb_keycode_t          minKeyCode
 ** @param xcb_keycode_t          maxKeyCode
 ** @param ubyte                  firstType
 ** @param ubyte                  nTypes
 ** @param xcb_keycode_t          firstKeySym
 ** @param ubyte                  nKeySyms
 ** @param ushort                 totalSyms
 ** @param xcb_keycode_t          firstKeyAction
 ** @param ubyte                  nKeyActions
 ** @param ushort                 totalActions
 ** @param xcb_keycode_t          firstKeyBehavior
 ** @param ubyte                  nKeyBehaviors
 ** @param ubyte                  totalKeyBehaviors
 ** @param xcb_keycode_t          firstKeyExplicit
 ** @param ubyte                  nKeyExplicit
 ** @param ubyte                  totalKeyExplicit
 ** @param xcb_keycode_t          firstModMapKey
 ** @param ubyte                  nModMapKeys
 ** @param ubyte                  totalModMapKeys
 ** @param xcb_keycode_t          firstVModMapKey
 ** @param ubyte                  nVModMapKeys
 ** @param ubyte                  totalVModMapKeys
 ** @param ushort                 virtualMods
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_map_checked (xcb_connection_t      *c  /**< */,
                         xcb_xkb_device_spec_t  deviceSpec  /**< */,
                         ushort                 present  /**< */,
                         ushort                 flags  /**< */,
                         xcb_keycode_t          minKeyCode  /**< */,
                         xcb_keycode_t          maxKeyCode  /**< */,
                         ubyte                  firstType  /**< */,
                         ubyte                  nTypes  /**< */,
                         xcb_keycode_t          firstKeySym  /**< */,
                         ubyte                  nKeySyms  /**< */,
                         ushort                 totalSyms  /**< */,
                         xcb_keycode_t          firstKeyAction  /**< */,
                         ubyte                  nKeyActions  /**< */,
                         ushort                 totalActions  /**< */,
                         xcb_keycode_t          firstKeyBehavior  /**< */,
                         ubyte                  nKeyBehaviors  /**< */,
                         ubyte                  totalKeyBehaviors  /**< */,
                         xcb_keycode_t          firstKeyExplicit  /**< */,
                         ubyte                  nKeyExplicit  /**< */,
                         ubyte                  totalKeyExplicit  /**< */,
                         xcb_keycode_t          firstModMapKey  /**< */,
                         ubyte                  nModMapKeys  /**< */,
                         ubyte                  totalModMapKeys  /**< */,
                         xcb_keycode_t          firstVModMapKey  /**< */,
                         ubyte                  nVModMapKeys  /**< */,
                         ubyte                  totalVModMapKeys  /**< */,
                         ushort                 virtualMods  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_map
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ushort                 present
 ** @param ushort                 flags
 ** @param xcb_keycode_t          minKeyCode
 ** @param xcb_keycode_t          maxKeyCode
 ** @param ubyte                  firstType
 ** @param ubyte                  nTypes
 ** @param xcb_keycode_t          firstKeySym
 ** @param ubyte                  nKeySyms
 ** @param ushort                 totalSyms
 ** @param xcb_keycode_t          firstKeyAction
 ** @param ubyte                  nKeyActions
 ** @param ushort                 totalActions
 ** @param xcb_keycode_t          firstKeyBehavior
 ** @param ubyte                  nKeyBehaviors
 ** @param ubyte                  totalKeyBehaviors
 ** @param xcb_keycode_t          firstKeyExplicit
 ** @param ubyte                  nKeyExplicit
 ** @param ubyte                  totalKeyExplicit
 ** @param xcb_keycode_t          firstModMapKey
 ** @param ubyte                  nModMapKeys
 ** @param ubyte                  totalModMapKeys
 ** @param xcb_keycode_t          firstVModMapKey
 ** @param ubyte                  nVModMapKeys
 ** @param ubyte                  totalVModMapKeys
 ** @param ushort                 virtualMods
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_map (xcb_connection_t      *c  /**< */,
                 xcb_xkb_device_spec_t  deviceSpec  /**< */,
                 ushort                 present  /**< */,
                 ushort                 flags  /**< */,
                 xcb_keycode_t          minKeyCode  /**< */,
                 xcb_keycode_t          maxKeyCode  /**< */,
                 ubyte                  firstType  /**< */,
                 ubyte                  nTypes  /**< */,
                 xcb_keycode_t          firstKeySym  /**< */,
                 ubyte                  nKeySyms  /**< */,
                 ushort                 totalSyms  /**< */,
                 xcb_keycode_t          firstKeyAction  /**< */,
                 ubyte                  nKeyActions  /**< */,
                 ushort                 totalActions  /**< */,
                 xcb_keycode_t          firstKeyBehavior  /**< */,
                 ubyte                  nKeyBehaviors  /**< */,
                 ubyte                  totalKeyBehaviors  /**< */,
                 xcb_keycode_t          firstKeyExplicit  /**< */,
                 ubyte                  nKeyExplicit  /**< */,
                 ubyte                  totalKeyExplicit  /**< */,
                 xcb_keycode_t          firstModMapKey  /**< */,
                 ubyte                  nModMapKeys  /**< */,
                 ubyte                  totalModMapKeys  /**< */,
                 xcb_keycode_t          firstVModMapKey  /**< */,
                 ubyte                  nVModMapKeys  /**< */,
                 ubyte                  totalVModMapKeys  /**< */,
                 ushort                 virtualMods  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_compat_map_cookie_t xcb_xkb_get_compat_map
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ubyte                  groups
 ** @param bool                   getAllSI
 ** @param ushort                 firstSI
 ** @param ushort                 nSI
 ** @returns xcb_xkb_get_compat_map_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_compat_map_cookie_t
xcb_xkb_get_compat_map (xcb_connection_t      *c  /**< */,
                        xcb_xkb_device_spec_t  deviceSpec  /**< */,
                        ubyte                  groups  /**< */,
                        bool                   getAllSI  /**< */,
                        ushort                 firstSI  /**< */,
                        ushort                 nSI  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_compat_map_cookie_t xcb_xkb_get_compat_map_unchecked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ubyte                  groups
 ** @param bool                   getAllSI
 ** @param ushort                 firstSI
 ** @param ushort                 nSI
 ** @returns xcb_xkb_get_compat_map_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_compat_map_cookie_t
xcb_xkb_get_compat_map_unchecked (xcb_connection_t      *c  /**< */,
                                  xcb_xkb_device_spec_t  deviceSpec  /**< */,
                                  ubyte                  groups  /**< */,
                                  bool                   getAllSI  /**< */,
                                  ushort                 firstSI  /**< */,
                                  ushort                 nSI  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_sym_interpret_t * xcb_xkb_get_compat_map_si_rtrn
 ** 
 ** @param /+const+/ xcb_xkb_get_compat_map_reply_t *R
 ** @returns xcb_xkb_sym_interpret_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_sym_interpret_t *
xcb_xkb_get_compat_map_si_rtrn (/+const+/ xcb_xkb_get_compat_map_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_compat_map_si_rtrn_length
 ** 
 ** @param /+const+/ xcb_xkb_get_compat_map_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_compat_map_si_rtrn_length (/+const+/ xcb_xkb_get_compat_map_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_sym_interpret_iterator_t xcb_xkb_get_compat_map_si_rtrn_iterator
 ** 
 ** @param /+const+/ xcb_xkb_get_compat_map_reply_t *R
 ** @returns xcb_xkb_sym_interpret_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_sym_interpret_iterator_t
xcb_xkb_get_compat_map_si_rtrn_iterator (/+const+/ xcb_xkb_get_compat_map_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_compat_map_reply_t * xcb_xkb_get_compat_map_reply
 ** 
 ** @param xcb_connection_t                 *c
 ** @param xcb_xkb_get_compat_map_cookie_t   cookie
 ** @param xcb_generic_error_t             **e
 ** @returns xcb_xkb_get_compat_map_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_compat_map_reply_t *
xcb_xkb_get_compat_map_reply (xcb_connection_t                 *c  /**< */,
                              xcb_xkb_get_compat_map_cookie_t   cookie  /**< */,
                              xcb_generic_error_t             **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_compat_map_checked
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_xkb_device_spec_t              deviceSpec
 ** @param bool                               recomputeActions
 ** @param bool                               truncateSI
 ** @param ubyte                              groups
 ** @param ushort                             firstSI
 ** @param ushort                             nSI
 ** @param /+const+/ xcb_xkb_sym_interpret_t *si
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_compat_map_checked (xcb_connection_t                  *c  /**< */,
                                xcb_xkb_device_spec_t              deviceSpec  /**< */,
                                bool                               recomputeActions  /**< */,
                                bool                               truncateSI  /**< */,
                                ubyte                              groups  /**< */,
                                ushort                             firstSI  /**< */,
                                ushort                             nSI  /**< */,
                                /+const+/ xcb_xkb_sym_interpret_t *si  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_compat_map
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_xkb_device_spec_t              deviceSpec
 ** @param bool                               recomputeActions
 ** @param bool                               truncateSI
 ** @param ubyte                              groups
 ** @param ushort                             firstSI
 ** @param ushort                             nSI
 ** @param /+const+/ xcb_xkb_sym_interpret_t *si
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_compat_map (xcb_connection_t                  *c  /**< */,
                        xcb_xkb_device_spec_t              deviceSpec  /**< */,
                        bool                               recomputeActions  /**< */,
                        bool                               truncateSI  /**< */,
                        ubyte                              groups  /**< */,
                        ushort                             firstSI  /**< */,
                        ushort                             nSI  /**< */,
                        /+const+/ xcb_xkb_sym_interpret_t *si  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_indicator_state_cookie_t xcb_xkb_get_indicator_state
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @returns xcb_xkb_get_indicator_state_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_indicator_state_cookie_t
xcb_xkb_get_indicator_state (xcb_connection_t      *c  /**< */,
                             xcb_xkb_device_spec_t  deviceSpec  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_indicator_state_cookie_t xcb_xkb_get_indicator_state_unchecked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @returns xcb_xkb_get_indicator_state_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_indicator_state_cookie_t
xcb_xkb_get_indicator_state_unchecked (xcb_connection_t      *c  /**< */,
                                       xcb_xkb_device_spec_t  deviceSpec  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_indicator_state_reply_t * xcb_xkb_get_indicator_state_reply
 ** 
 ** @param xcb_connection_t                      *c
 ** @param xcb_xkb_get_indicator_state_cookie_t   cookie
 ** @param xcb_generic_error_t                  **e
 ** @returns xcb_xkb_get_indicator_state_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_indicator_state_reply_t *
xcb_xkb_get_indicator_state_reply (xcb_connection_t                      *c  /**< */,
                                   xcb_xkb_get_indicator_state_cookie_t   cookie  /**< */,
                                   xcb_generic_error_t                  **e  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_indicator_map_cookie_t xcb_xkb_get_indicator_map
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param uint                   which
 ** @returns xcb_xkb_get_indicator_map_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_indicator_map_cookie_t
xcb_xkb_get_indicator_map (xcb_connection_t      *c  /**< */,
                           xcb_xkb_device_spec_t  deviceSpec  /**< */,
                           uint                   which  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_indicator_map_cookie_t xcb_xkb_get_indicator_map_unchecked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param uint                   which
 ** @returns xcb_xkb_get_indicator_map_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_indicator_map_cookie_t
xcb_xkb_get_indicator_map_unchecked (xcb_connection_t      *c  /**< */,
                                     xcb_xkb_device_spec_t  deviceSpec  /**< */,
                                     uint                   which  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_indicator_map_reply_t * xcb_xkb_get_indicator_map_reply
 ** 
 ** @param xcb_connection_t                    *c
 ** @param xcb_xkb_get_indicator_map_cookie_t   cookie
 ** @param xcb_generic_error_t                **e
 ** @returns xcb_xkb_get_indicator_map_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_indicator_map_reply_t *
xcb_xkb_get_indicator_map_reply (xcb_connection_t                    *c  /**< */,
                                 xcb_xkb_get_indicator_map_cookie_t   cookie  /**< */,
                                 xcb_generic_error_t                **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_indicator_map_checked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param uint                   which
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_indicator_map_checked (xcb_connection_t      *c  /**< */,
                                   xcb_xkb_device_spec_t  deviceSpec  /**< */,
                                   uint                   which  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_indicator_map
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param uint                   which
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_indicator_map (xcb_connection_t      *c  /**< */,
                           xcb_xkb_device_spec_t  deviceSpec  /**< */,
                           uint                   which  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_named_indicator_cookie_t xcb_xkb_get_named_indicator
 ** 
 ** @param xcb_connection_t         *c
 ** @param xcb_xkb_device_spec_t     deviceSpec
 ** @param xcb_xkb_led_class_spec_t  ledClass
 ** @param xcb_xkb_id_spec_t         ledID
 ** @param xcb_atom_t                indicator
 ** @returns xcb_xkb_get_named_indicator_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_named_indicator_cookie_t
xcb_xkb_get_named_indicator (xcb_connection_t         *c  /**< */,
                             xcb_xkb_device_spec_t     deviceSpec  /**< */,
                             xcb_xkb_led_class_spec_t  ledClass  /**< */,
                             xcb_xkb_id_spec_t         ledID  /**< */,
                             xcb_atom_t                indicator  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_named_indicator_cookie_t xcb_xkb_get_named_indicator_unchecked
 ** 
 ** @param xcb_connection_t         *c
 ** @param xcb_xkb_device_spec_t     deviceSpec
 ** @param xcb_xkb_led_class_spec_t  ledClass
 ** @param xcb_xkb_id_spec_t         ledID
 ** @param xcb_atom_t                indicator
 ** @returns xcb_xkb_get_named_indicator_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_named_indicator_cookie_t
xcb_xkb_get_named_indicator_unchecked (xcb_connection_t         *c  /**< */,
                                       xcb_xkb_device_spec_t     deviceSpec  /**< */,
                                       xcb_xkb_led_class_spec_t  ledClass  /**< */,
                                       xcb_xkb_id_spec_t         ledID  /**< */,
                                       xcb_atom_t                indicator  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_named_indicator_reply_t * xcb_xkb_get_named_indicator_reply
 ** 
 ** @param xcb_connection_t                      *c
 ** @param xcb_xkb_get_named_indicator_cookie_t   cookie
 ** @param xcb_generic_error_t                  **e
 ** @returns xcb_xkb_get_named_indicator_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_named_indicator_reply_t *
xcb_xkb_get_named_indicator_reply (xcb_connection_t                      *c  /**< */,
                                   xcb_xkb_get_named_indicator_cookie_t   cookie  /**< */,
                                   xcb_generic_error_t                  **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_named_indicator_checked
 ** 
 ** @param xcb_connection_t         *c
 ** @param xcb_xkb_device_spec_t     deviceSpec
 ** @param xcb_xkb_led_class_spec_t  ledClass
 ** @param xcb_xkb_id_spec_t         ledID
 ** @param xcb_atom_t                indicator
 ** @param bool                      setState
 ** @param bool                      on
 ** @param bool                      setMap
 ** @param bool                      createMap
 ** @param ubyte                     map_flags
 ** @param ubyte                     map_whichGroups
 ** @param ubyte                     map_groups
 ** @param ubyte                     map_whichMods
 ** @param ubyte                     map_realMods
 ** @param ushort                    map_vmods
 ** @param uint                      map_ctrls
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_named_indicator_checked (xcb_connection_t         *c  /**< */,
                                     xcb_xkb_device_spec_t     deviceSpec  /**< */,
                                     xcb_xkb_led_class_spec_t  ledClass  /**< */,
                                     xcb_xkb_id_spec_t         ledID  /**< */,
                                     xcb_atom_t                indicator  /**< */,
                                     bool                      setState  /**< */,
                                     bool                      on  /**< */,
                                     bool                      setMap  /**< */,
                                     bool                      createMap  /**< */,
                                     ubyte                     map_flags  /**< */,
                                     ubyte                     map_whichGroups  /**< */,
                                     ubyte                     map_groups  /**< */,
                                     ubyte                     map_whichMods  /**< */,
                                     ubyte                     map_realMods  /**< */,
                                     ushort                    map_vmods  /**< */,
                                     uint                      map_ctrls  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_named_indicator
 ** 
 ** @param xcb_connection_t         *c
 ** @param xcb_xkb_device_spec_t     deviceSpec
 ** @param xcb_xkb_led_class_spec_t  ledClass
 ** @param xcb_xkb_id_spec_t         ledID
 ** @param xcb_atom_t                indicator
 ** @param bool                      setState
 ** @param bool                      on
 ** @param bool                      setMap
 ** @param bool                      createMap
 ** @param ubyte                     map_flags
 ** @param ubyte                     map_whichGroups
 ** @param ubyte                     map_groups
 ** @param ubyte                     map_whichMods
 ** @param ubyte                     map_realMods
 ** @param ushort                    map_vmods
 ** @param uint                      map_ctrls
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_named_indicator (xcb_connection_t         *c  /**< */,
                             xcb_xkb_device_spec_t     deviceSpec  /**< */,
                             xcb_xkb_led_class_spec_t  ledClass  /**< */,
                             xcb_xkb_id_spec_t         ledID  /**< */,
                             xcb_atom_t                indicator  /**< */,
                             bool                      setState  /**< */,
                             bool                      on  /**< */,
                             bool                      setMap  /**< */,
                             bool                      createMap  /**< */,
                             ubyte                     map_flags  /**< */,
                             ubyte                     map_whichGroups  /**< */,
                             ubyte                     map_groups  /**< */,
                             ubyte                     map_whichMods  /**< */,
                             ubyte                     map_realMods  /**< */,
                             ushort                    map_vmods  /**< */,
                             uint                      map_ctrls  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_names_cookie_t xcb_xkb_get_names
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param uint                   which
 ** @returns xcb_xkb_get_names_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_names_cookie_t
xcb_xkb_get_names (xcb_connection_t      *c  /**< */,
                   xcb_xkb_device_spec_t  deviceSpec  /**< */,
                   uint                   which  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_names_cookie_t xcb_xkb_get_names_unchecked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param uint                   which
 ** @returns xcb_xkb_get_names_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_names_cookie_t
xcb_xkb_get_names_unchecked (xcb_connection_t      *c  /**< */,
                             xcb_xkb_device_spec_t  deviceSpec  /**< */,
                             uint                   which  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_names_reply_t * xcb_xkb_get_names_reply
 ** 
 ** @param xcb_connection_t            *c
 ** @param xcb_xkb_get_names_cookie_t   cookie
 ** @param xcb_generic_error_t        **e
 ** @returns xcb_xkb_get_names_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_names_reply_t *
xcb_xkb_get_names_reply (xcb_connection_t            *c  /**< */,
                         xcb_xkb_get_names_cookie_t   cookie  /**< */,
                         xcb_generic_error_t        **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_names_checked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ushort                 virtualMods
 ** @param uint                   which
 ** @param ubyte                  firstType
 ** @param ubyte                  nTypes
 ** @param ubyte                  firstKTLevelt
 ** @param ubyte                  nKTLevels
 ** @param uint                   indicators
 ** @param ubyte                  groupNames
 ** @param ubyte                  nRadioGroups
 ** @param xcb_keycode_t          firstKey
 ** @param ubyte                  nKeys
 ** @param ubyte                  nKeyAliases
 ** @param ushort                 totalKTLevelNames
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_names_checked (xcb_connection_t      *c  /**< */,
                           xcb_xkb_device_spec_t  deviceSpec  /**< */,
                           ushort                 virtualMods  /**< */,
                           uint                   which  /**< */,
                           ubyte                  firstType  /**< */,
                           ubyte                  nTypes  /**< */,
                           ubyte                  firstKTLevelt  /**< */,
                           ubyte                  nKTLevels  /**< */,
                           uint                   indicators  /**< */,
                           ubyte                  groupNames  /**< */,
                           ubyte                  nRadioGroups  /**< */,
                           xcb_keycode_t          firstKey  /**< */,
                           ubyte                  nKeys  /**< */,
                           ubyte                  nKeyAliases  /**< */,
                           ushort                 totalKTLevelNames  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_names
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ushort                 virtualMods
 ** @param uint                   which
 ** @param ubyte                  firstType
 ** @param ubyte                  nTypes
 ** @param ubyte                  firstKTLevelt
 ** @param ubyte                  nKTLevels
 ** @param uint                   indicators
 ** @param ubyte                  groupNames
 ** @param ubyte                  nRadioGroups
 ** @param xcb_keycode_t          firstKey
 ** @param ubyte                  nKeys
 ** @param ubyte                  nKeyAliases
 ** @param ushort                 totalKTLevelNames
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_names (xcb_connection_t      *c  /**< */,
                   xcb_xkb_device_spec_t  deviceSpec  /**< */,
                   ushort                 virtualMods  /**< */,
                   uint                   which  /**< */,
                   ubyte                  firstType  /**< */,
                   ubyte                  nTypes  /**< */,
                   ubyte                  firstKTLevelt  /**< */,
                   ubyte                  nKTLevels  /**< */,
                   uint                   indicators  /**< */,
                   ubyte                  groupNames  /**< */,
                   ubyte                  nRadioGroups  /**< */,
                   xcb_keycode_t          firstKey  /**< */,
                   ubyte                  nKeys  /**< */,
                   ubyte                  nKeyAliases  /**< */,
                   ushort                 totalKTLevelNames  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_per_client_flags_cookie_t xcb_xkb_per_client_flags
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param uint                   change
 ** @param uint                   value
 ** @param uint                   ctrlsToChange
 ** @param uint                   autoCtrls
 ** @param uint                   autoCtrlsValues
 ** @returns xcb_xkb_per_client_flags_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_per_client_flags_cookie_t
xcb_xkb_per_client_flags (xcb_connection_t      *c  /**< */,
                          xcb_xkb_device_spec_t  deviceSpec  /**< */,
                          uint                   change  /**< */,
                          uint                   value  /**< */,
                          uint                   ctrlsToChange  /**< */,
                          uint                   autoCtrls  /**< */,
                          uint                   autoCtrlsValues  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_per_client_flags_cookie_t xcb_xkb_per_client_flags_unchecked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param uint                   change
 ** @param uint                   value
 ** @param uint                   ctrlsToChange
 ** @param uint                   autoCtrls
 ** @param uint                   autoCtrlsValues
 ** @returns xcb_xkb_per_client_flags_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_per_client_flags_cookie_t
xcb_xkb_per_client_flags_unchecked (xcb_connection_t      *c  /**< */,
                                    xcb_xkb_device_spec_t  deviceSpec  /**< */,
                                    uint                   change  /**< */,
                                    uint                   value  /**< */,
                                    uint                   ctrlsToChange  /**< */,
                                    uint                   autoCtrls  /**< */,
                                    uint                   autoCtrlsValues  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_per_client_flags_reply_t * xcb_xkb_per_client_flags_reply
 ** 
 ** @param xcb_connection_t                   *c
 ** @param xcb_xkb_per_client_flags_cookie_t   cookie
 ** @param xcb_generic_error_t               **e
 ** @returns xcb_xkb_per_client_flags_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_per_client_flags_reply_t *
xcb_xkb_per_client_flags_reply (xcb_connection_t                   *c  /**< */,
                                xcb_xkb_per_client_flags_cookie_t   cookie  /**< */,
                                xcb_generic_error_t               **e  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_list_components_cookie_t xcb_xkb_list_components
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ushort                 maxNames
 ** @returns xcb_xkb_list_components_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_list_components_cookie_t
xcb_xkb_list_components (xcb_connection_t      *c  /**< */,
                         xcb_xkb_device_spec_t  deviceSpec  /**< */,
                         ushort                 maxNames  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_list_components_cookie_t xcb_xkb_list_components_unchecked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ushort                 maxNames
 ** @returns xcb_xkb_list_components_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_list_components_cookie_t
xcb_xkb_list_components_unchecked (xcb_connection_t      *c  /**< */,
                                   xcb_xkb_device_spec_t  deviceSpec  /**< */,
                                   ushort                 maxNames  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_list_components_keymaps_length
 ** 
 ** @param /+const+/ xcb_xkb_list_components_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_list_components_keymaps_length (/+const+/ xcb_xkb_list_components_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_listing_iterator_t xcb_xkb_list_components_keymaps_iterator
 ** 
 ** @param /+const+/ xcb_xkb_list_components_reply_t *R
 ** @returns xcb_xkb_listing_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_listing_iterator_t
xcb_xkb_list_components_keymaps_iterator (/+const+/ xcb_xkb_list_components_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_list_components_keycodes_length
 ** 
 ** @param /+const+/ xcb_xkb_list_components_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_list_components_keycodes_length (/+const+/ xcb_xkb_list_components_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_listing_iterator_t xcb_xkb_list_components_keycodes_iterator
 ** 
 ** @param /+const+/ xcb_xkb_list_components_reply_t *R
 ** @returns xcb_xkb_listing_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_listing_iterator_t
xcb_xkb_list_components_keycodes_iterator (/+const+/ xcb_xkb_list_components_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_list_components_types_length
 ** 
 ** @param /+const+/ xcb_xkb_list_components_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_list_components_types_length (/+const+/ xcb_xkb_list_components_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_listing_iterator_t xcb_xkb_list_components_types_iterator
 ** 
 ** @param /+const+/ xcb_xkb_list_components_reply_t *R
 ** @returns xcb_xkb_listing_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_listing_iterator_t
xcb_xkb_list_components_types_iterator (/+const+/ xcb_xkb_list_components_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_list_components_compat_maps_length
 ** 
 ** @param /+const+/ xcb_xkb_list_components_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_list_components_compat_maps_length (/+const+/ xcb_xkb_list_components_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_listing_iterator_t xcb_xkb_list_components_compat_maps_iterator
 ** 
 ** @param /+const+/ xcb_xkb_list_components_reply_t *R
 ** @returns xcb_xkb_listing_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_listing_iterator_t
xcb_xkb_list_components_compat_maps_iterator (/+const+/ xcb_xkb_list_components_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_list_components_symbols_length
 ** 
 ** @param /+const+/ xcb_xkb_list_components_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_list_components_symbols_length (/+const+/ xcb_xkb_list_components_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_listing_iterator_t xcb_xkb_list_components_symbols_iterator
 ** 
 ** @param /+const+/ xcb_xkb_list_components_reply_t *R
 ** @returns xcb_xkb_listing_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_listing_iterator_t
xcb_xkb_list_components_symbols_iterator (/+const+/ xcb_xkb_list_components_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_list_components_geometries_length
 ** 
 ** @param /+const+/ xcb_xkb_list_components_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_list_components_geometries_length (/+const+/ xcb_xkb_list_components_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_listing_iterator_t xcb_xkb_list_components_geometries_iterator
 ** 
 ** @param /+const+/ xcb_xkb_list_components_reply_t *R
 ** @returns xcb_xkb_listing_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_listing_iterator_t
xcb_xkb_list_components_geometries_iterator (/+const+/ xcb_xkb_list_components_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_list_components_reply_t * xcb_xkb_list_components_reply
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_xkb_list_components_cookie_t   cookie
 ** @param xcb_generic_error_t              **e
 ** @returns xcb_xkb_list_components_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_list_components_reply_t *
xcb_xkb_list_components_reply (xcb_connection_t                  *c  /**< */,
                               xcb_xkb_list_components_cookie_t   cookie  /**< */,
                               xcb_generic_error_t              **e  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_kbd_by_name_cookie_t xcb_xkb_get_kbd_by_name
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ushort                 need
 ** @param ushort                 want
 ** @param bool                   load
 ** @returns xcb_xkb_get_kbd_by_name_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_kbd_by_name_cookie_t
xcb_xkb_get_kbd_by_name (xcb_connection_t      *c  /**< */,
                         xcb_xkb_device_spec_t  deviceSpec  /**< */,
                         ushort                 need  /**< */,
                         ushort                 want  /**< */,
                         bool                   load  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_kbd_by_name_cookie_t xcb_xkb_get_kbd_by_name_unchecked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ushort                 need
 ** @param ushort                 want
 ** @param bool                   load
 ** @returns xcb_xkb_get_kbd_by_name_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_kbd_by_name_cookie_t
xcb_xkb_get_kbd_by_name_unchecked (xcb_connection_t      *c  /**< */,
                                   xcb_xkb_device_spec_t  deviceSpec  /**< */,
                                   ushort                 need  /**< */,
                                   ushort                 want  /**< */,
                                   bool                   load  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_sym_interpret_t * xcb_xkb_get_kbd_by_name_si_rtrn
 ** 
 ** @param /+const+/ xcb_xkb_get_kbd_by_name_reply_t *R
 ** @returns xcb_xkb_sym_interpret_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_sym_interpret_t *
xcb_xkb_get_kbd_by_name_si_rtrn (/+const+/ xcb_xkb_get_kbd_by_name_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_si_rtrn_length
 ** 
 ** @param /+const+/ xcb_xkb_get_kbd_by_name_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_si_rtrn_length (/+const+/ xcb_xkb_get_kbd_by_name_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_sym_interpret_iterator_t xcb_xkb_get_kbd_by_name_si_rtrn_iterator
 ** 
 ** @param /+const+/ xcb_xkb_get_kbd_by_name_reply_t *R
 ** @returns xcb_xkb_sym_interpret_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_sym_interpret_iterator_t
xcb_xkb_get_kbd_by_name_si_rtrn_iterator (/+const+/ xcb_xkb_get_kbd_by_name_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_indicator_map_t * xcb_xkb_get_kbd_by_name_maps
 ** 
 ** @param /+const+/ xcb_xkb_get_kbd_by_name_reply_t *R
 ** @returns xcb_xkb_indicator_map_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_indicator_map_t *
xcb_xkb_get_kbd_by_name_maps (/+const+/ xcb_xkb_get_kbd_by_name_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_maps_length
 ** 
 ** @param /+const+/ xcb_xkb_get_kbd_by_name_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_maps_length (/+const+/ xcb_xkb_get_kbd_by_name_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_indicator_map_iterator_t xcb_xkb_get_kbd_by_name_maps_iterator
 ** 
 ** @param /+const+/ xcb_xkb_get_kbd_by_name_reply_t *R
 ** @returns xcb_xkb_indicator_map_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_indicator_map_iterator_t
xcb_xkb_get_kbd_by_name_maps_iterator (/+const+/ xcb_xkb_get_kbd_by_name_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_kbd_by_name_reply_t * xcb_xkb_get_kbd_by_name_reply
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_xkb_get_kbd_by_name_cookie_t   cookie
 ** @param xcb_generic_error_t              **e
 ** @returns xcb_xkb_get_kbd_by_name_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_kbd_by_name_reply_t *
xcb_xkb_get_kbd_by_name_reply (xcb_connection_t                  *c  /**< */,
                               xcb_xkb_get_kbd_by_name_cookie_t   cookie  /**< */,
                               xcb_generic_error_t              **e  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_device_info_cookie_t xcb_xkb_get_device_info
 ** 
 ** @param xcb_connection_t         *c
 ** @param xcb_xkb_device_spec_t     deviceSpec
 ** @param ushort                    wanted
 ** @param bool                      allButtons
 ** @param ubyte                     firstButton
 ** @param ubyte                     nButtons
 ** @param xcb_xkb_led_class_spec_t  ledClass
 ** @param xcb_xkb_id_spec_t         ledID
 ** @returns xcb_xkb_get_device_info_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_device_info_cookie_t
xcb_xkb_get_device_info (xcb_connection_t         *c  /**< */,
                         xcb_xkb_device_spec_t     deviceSpec  /**< */,
                         ushort                    wanted  /**< */,
                         bool                      allButtons  /**< */,
                         ubyte                     firstButton  /**< */,
                         ubyte                     nButtons  /**< */,
                         xcb_xkb_led_class_spec_t  ledClass  /**< */,
                         xcb_xkb_id_spec_t         ledID  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_device_info_cookie_t xcb_xkb_get_device_info_unchecked
 ** 
 ** @param xcb_connection_t         *c
 ** @param xcb_xkb_device_spec_t     deviceSpec
 ** @param ushort                    wanted
 ** @param bool                      allButtons
 ** @param ubyte                     firstButton
 ** @param ubyte                     nButtons
 ** @param xcb_xkb_led_class_spec_t  ledClass
 ** @param xcb_xkb_id_spec_t         ledID
 ** @returns xcb_xkb_get_device_info_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_device_info_cookie_t
xcb_xkb_get_device_info_unchecked (xcb_connection_t         *c  /**< */,
                                   xcb_xkb_device_spec_t     deviceSpec  /**< */,
                                   ushort                    wanted  /**< */,
                                   bool                      allButtons  /**< */,
                                   ubyte                     firstButton  /**< */,
                                   ubyte                     nButtons  /**< */,
                                   xcb_xkb_led_class_spec_t  ledClass  /**< */,
                                   xcb_xkb_id_spec_t         ledID  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_string8_t * xcb_xkb_get_device_info_name
 ** 
 ** @param /+const+/ xcb_xkb_get_device_info_reply_t *R
 ** @returns xcb_xkb_string8_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_string8_t *
xcb_xkb_get_device_info_name (/+const+/ xcb_xkb_get_device_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_device_info_name_length
 ** 
 ** @param /+const+/ xcb_xkb_get_device_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_device_info_name_length (/+const+/ xcb_xkb_get_device_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_string8_iterator_t xcb_xkb_get_device_info_name_iterator
 ** 
 ** @param /+const+/ xcb_xkb_get_device_info_reply_t *R
 ** @returns xcb_xkb_string8_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_string8_iterator_t
xcb_xkb_get_device_info_name_iterator (/+const+/ xcb_xkb_get_device_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_action_t * xcb_xkb_get_device_info_btn_actions
 ** 
 ** @param /+const+/ xcb_xkb_get_device_info_reply_t *R
 ** @returns xcb_xkb_action_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_action_t *
xcb_xkb_get_device_info_btn_actions (/+const+/ xcb_xkb_get_device_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_device_info_btn_actions_length
 ** 
 ** @param /+const+/ xcb_xkb_get_device_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_device_info_btn_actions_length (/+const+/ xcb_xkb_get_device_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_action_iterator_t xcb_xkb_get_device_info_btn_actions_iterator
 ** 
 ** @param /+const+/ xcb_xkb_get_device_info_reply_t *R
 ** @returns xcb_xkb_action_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_action_iterator_t
xcb_xkb_get_device_info_btn_actions_iterator (/+const+/ xcb_xkb_get_device_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_device_led_info_t * xcb_xkb_get_device_info_leds
 ** 
 ** @param /+const+/ xcb_xkb_get_device_info_reply_t *R
 ** @returns xcb_xkb_device_led_info_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_device_led_info_t *
xcb_xkb_get_device_info_leds (/+const+/ xcb_xkb_get_device_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_device_info_leds_length
 ** 
 ** @param /+const+/ xcb_xkb_get_device_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_device_info_leds_length (/+const+/ xcb_xkb_get_device_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_device_led_info_iterator_t xcb_xkb_get_device_info_leds_iterator
 ** 
 ** @param /+const+/ xcb_xkb_get_device_info_reply_t *R
 ** @returns xcb_xkb_device_led_info_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_device_led_info_iterator_t
xcb_xkb_get_device_info_leds_iterator (/+const+/ xcb_xkb_get_device_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_device_info_reply_t * xcb_xkb_get_device_info_reply
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_xkb_get_device_info_cookie_t   cookie
 ** @param xcb_generic_error_t              **e
 ** @returns xcb_xkb_get_device_info_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_device_info_reply_t *
xcb_xkb_get_device_info_reply (xcb_connection_t                  *c  /**< */,
                               xcb_xkb_get_device_info_cookie_t   cookie  /**< */,
                               xcb_generic_error_t              **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_device_info_checked
 ** 
 ** @param xcb_connection_t                    *c
 ** @param xcb_xkb_device_spec_t                deviceSpec
 ** @param ubyte                                firstBtn
 ** @param ubyte                                nBtns
 ** @param ushort                               change
 ** @param ushort                               nDeviceLedFBs
 ** @param /+const+/ xcb_xkb_action_t          *btnActions
 ** @param /+const+/ xcb_xkb_device_led_info_t *leds
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_device_info_checked (xcb_connection_t                    *c  /**< */,
                                 xcb_xkb_device_spec_t                deviceSpec  /**< */,
                                 ubyte                                firstBtn  /**< */,
                                 ubyte                                nBtns  /**< */,
                                 ushort                               change  /**< */,
                                 ushort                               nDeviceLedFBs  /**< */,
                                 /+const+/ xcb_xkb_action_t          *btnActions  /**< */,
                                 /+const+/ xcb_xkb_device_led_info_t *leds  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_device_info
 ** 
 ** @param xcb_connection_t                    *c
 ** @param xcb_xkb_device_spec_t                deviceSpec
 ** @param ubyte                                firstBtn
 ** @param ubyte                                nBtns
 ** @param ushort                               change
 ** @param ushort                               nDeviceLedFBs
 ** @param /+const+/ xcb_xkb_action_t          *btnActions
 ** @param /+const+/ xcb_xkb_device_led_info_t *leds
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_device_info (xcb_connection_t                    *c  /**< */,
                         xcb_xkb_device_spec_t                deviceSpec  /**< */,
                         ubyte                                firstBtn  /**< */,
                         ubyte                                nBtns  /**< */,
                         ushort                               change  /**< */,
                         ushort                               nDeviceLedFBs  /**< */,
                         /+const+/ xcb_xkb_action_t          *btnActions  /**< */,
                         /+const+/ xcb_xkb_device_led_info_t *leds  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_set_debugging_flags_cookie_t xcb_xkb_set_debugging_flags
 ** 
 ** @param xcb_connection_t            *c
 ** @param ushort                       msgLength
 ** @param uint                         affectFlags
 ** @param uint                         flags
 ** @param uint                         affectCtrls
 ** @param uint                         ctrls
 ** @param /+const+/ xcb_xkb_string8_t *message
 ** @returns xcb_xkb_set_debugging_flags_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_set_debugging_flags_cookie_t
xcb_xkb_set_debugging_flags (xcb_connection_t            *c  /**< */,
                             ushort                       msgLength  /**< */,
                             uint                         affectFlags  /**< */,
                             uint                         flags  /**< */,
                             uint                         affectCtrls  /**< */,
                             uint                         ctrls  /**< */,
                             /+const+/ xcb_xkb_string8_t *message  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_set_debugging_flags_cookie_t xcb_xkb_set_debugging_flags_unchecked
 ** 
 ** @param xcb_connection_t            *c
 ** @param ushort                       msgLength
 ** @param uint                         affectFlags
 ** @param uint                         flags
 ** @param uint                         affectCtrls
 ** @param uint                         ctrls
 ** @param /+const+/ xcb_xkb_string8_t *message
 ** @returns xcb_xkb_set_debugging_flags_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_set_debugging_flags_cookie_t
xcb_xkb_set_debugging_flags_unchecked (xcb_connection_t            *c  /**< */,
                                       ushort                       msgLength  /**< */,
                                       uint                         affectFlags  /**< */,
                                       uint                         flags  /**< */,
                                       uint                         affectCtrls  /**< */,
                                       uint                         ctrls  /**< */,
                                       /+const+/ xcb_xkb_string8_t *message  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_set_debugging_flags_reply_t * xcb_xkb_set_debugging_flags_reply
 ** 
 ** @param xcb_connection_t                      *c
 ** @param xcb_xkb_set_debugging_flags_cookie_t   cookie
 ** @param xcb_generic_error_t                  **e
 ** @returns xcb_xkb_set_debugging_flags_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_set_debugging_flags_reply_t *
xcb_xkb_set_debugging_flags_reply (xcb_connection_t                      *c  /**< */,
                                   xcb_xkb_set_debugging_flags_cookie_t   cookie  /**< */,
                                   xcb_generic_error_t                  **e  /**< */);



/**
 * @}
 */
