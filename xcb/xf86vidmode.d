/*
 * This file generated automatically from xf86vidmode.xml by c-client.xsl using XSLT.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_XF86VidMode_API XCB XF86VidMode API
 * @brief XF86VidMode XCB Protocol Implementation.
 * @{
 **/


module xcb.xf86vidmode;

import xcb.xcb;

const int XCB_XF86VIDMODE_MAJOR_VERSION =2;
const int XCB_XF86VIDMODE_MINOR_VERSION =2;
  
extern(C) extern xcb_extension_t xcb_xf_86_vid_mode_id;

alias uint xcb_xf_86_vid_mode_syncrange_t;

/**
 * @brief xcb_xf_86_vid_mode_syncrange_iterator_t
 **/
struct xcb_xf_86_vid_mode_syncrange_iterator_t {
    xcb_xf_86_vid_mode_syncrange_t *data; /**<  */
    int                             rem; /**<  */
    int                             index; /**<  */
} ;

alias uint xcb_xf_86_vid_mode_dotclock_t;

/**
 * @brief xcb_xf_86_vid_mode_dotclock_iterator_t
 **/
struct xcb_xf_86_vid_mode_dotclock_iterator_t {
    xcb_xf_86_vid_mode_dotclock_t *data; /**<  */
    int                            rem; /**<  */
    int                            index; /**<  */
} ;

enum :int{
    XCB_XF_86_VID_MODE_MODE_FLAG_POSITIVE_H_SYNC = (1 << 0),
    XCB_XF_86_VID_MODE_MODE_FLAG_NEGATIVE_H_SYNC = (1 << 1),
    XCB_XF_86_VID_MODE_MODE_FLAG_POSITIVE_V_SYNC = (1 << 2),
    XCB_XF_86_VID_MODE_MODE_FLAG_NEGATIVE_V_SYNC = (1 << 3),
    XCB_XF_86_VID_MODE_MODE_FLAG_INTERLACE = (1 << 4),
    XCB_XF_86_VID_MODE_MODE_FLAG_COMPOSITE_SYNC = (1 << 5),
    XCB_XF_86_VID_MODE_MODE_FLAG_POSITIVE_C_SYNC = (1 << 6),
    XCB_XF_86_VID_MODE_MODE_FLAG_NEGATIVE_C_SYNC = (1 << 7),
    XCB_XF_86_VID_MODE_MODE_FLAG_H_SKEW = (1 << 8),
    XCB_XF_86_VID_MODE_MODE_FLAG_BROADCAST = (1 << 9),
    XCB_XF_86_VID_MODE_MODE_FLAG_PIXMUX = (1 << 10),
    XCB_XF_86_VID_MODE_MODE_FLAG_DOUBLE_CLOCK = (1 << 11),
    XCB_XF_86_VID_MODE_MODE_FLAG_HALF_CLOCK = (1 << 12)
};

enum :int{
    XCB_XF_86_VID_MODE_CLOCK_FLAG_PROGRAMABLE = (1 << 0)
};

enum :int{
    XCB_XF_86_VID_MODE_PERMISSION_READ = (1 << 0),
    XCB_XF_86_VID_MODE_PERMISSION_WRITE = (1 << 1)
};

/**
 * @brief xcb_xf_86_vid_mode_mode_info_t
 **/
struct xcb_xf_86_vid_mode_mode_info_t {
    xcb_xf_86_vid_mode_dotclock_t dotclock; /**<  */
    ushort                        hdisplay; /**<  */
    ushort                        hsyncstart; /**<  */
    ushort                        hsyncend; /**<  */
    ushort                        htotal; /**<  */
    uint                          hskew; /**<  */
    ushort                        vdisplay; /**<  */
    ushort                        vsyncstart; /**<  */
    ushort                        vsyncend; /**<  */
    ushort                        vtotal; /**<  */
    ubyte                         pad0[4]; /**<  */
    uint                          flags; /**<  */
    ubyte                         pad1[12]; /**<  */
    uint                          privsize; /**<  */
} ;

/**
 * @brief xcb_xf_86_vid_mode_mode_info_iterator_t
 **/
struct xcb_xf_86_vid_mode_mode_info_iterator_t {
    xcb_xf_86_vid_mode_mode_info_t *data; /**<  */
    int                             rem; /**<  */
    int                             index; /**<  */
} ;

/**
 * @brief xcb_xf_86_vid_mode_query_version_cookie_t
 **/
struct xcb_xf_86_vid_mode_query_version_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_xf_86_vid_mode_query_version. */
const uint XCB_XF_86_VID_MODE_QUERY_VERSION = 0;

/**
 * @brief xcb_xf_86_vid_mode_query_version_request_t
 **/
struct xcb_xf_86_vid_mode_query_version_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
} ;

/**
 * @brief xcb_xf_86_vid_mode_query_version_reply_t
 **/
struct xcb_xf_86_vid_mode_query_version_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort major_version; /**<  */
    ushort minor_version; /**<  */
} ;

/**
 * @brief xcb_xf_86_vid_mode_get_mode_line_cookie_t
 **/
struct xcb_xf_86_vid_mode_get_mode_line_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_xf_86_vid_mode_get_mode_line. */
const uint XCB_XF_86_VID_MODE_GET_MODE_LINE = 1;

/**
 * @brief xcb_xf_86_vid_mode_get_mode_line_request_t
 **/
struct xcb_xf_86_vid_mode_get_mode_line_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort screen; /**<  */
    ubyte  pad0[2]; /**<  */
} ;

/**
 * @brief xcb_xf_86_vid_mode_get_mode_line_reply_t
 **/
struct xcb_xf_86_vid_mode_get_mode_line_reply_t {
    ubyte                         response_type; /**<  */
    ubyte                         pad0; /**<  */
    ushort                        sequence; /**<  */
    uint                          length; /**<  */
    xcb_xf_86_vid_mode_dotclock_t dotclock; /**<  */
    ushort                        hdisplay; /**<  */
    ushort                        hsyncstart; /**<  */
    ushort                        hsyncend; /**<  */
    ushort                        htotal; /**<  */
    ushort                        hskew; /**<  */
    ushort                        vdisplay; /**<  */
    ushort                        vsyncstart; /**<  */
    ushort                        vsyncend; /**<  */
    ushort                        vtotal; /**<  */
    ubyte                         pad1[2]; /**<  */
    uint                          flags; /**<  */
    ubyte                         pad2[12]; /**<  */
    uint                          privsize; /**<  */
} ;

/** Opcode for xcb_xf_86_vid_mode_mod_mode_line. */
const uint XCB_XF_86_VID_MODE_MOD_MODE_LINE = 2;

/**
 * @brief xcb_xf_86_vid_mode_mod_mode_line_request_t
 **/
struct xcb_xf_86_vid_mode_mod_mode_line_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    uint   screen; /**<  */
    ushort hdisplay; /**<  */
    ushort hsyncstart; /**<  */
    ushort hsyncend; /**<  */
    ushort htotal; /**<  */
    ushort hskew; /**<  */
    ushort vdisplay; /**<  */
    ushort vsyncstart; /**<  */
    ushort vsyncend; /**<  */
    ushort vtotal; /**<  */
    ubyte  pad0[2]; /**<  */
    uint   flags; /**<  */
    ubyte  pad1[12]; /**<  */
    uint   privsize; /**<  */
} ;

/** Opcode for xcb_xf_86_vid_mode_switch_mode. */
const uint XCB_XF_86_VID_MODE_SWITCH_MODE = 3;

/**
 * @brief xcb_xf_86_vid_mode_switch_mode_request_t
 **/
struct xcb_xf_86_vid_mode_switch_mode_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort screen; /**<  */
    ushort zoom; /**<  */
} ;

/**
 * @brief xcb_xf_86_vid_mode_get_monitor_cookie_t
 **/
struct xcb_xf_86_vid_mode_get_monitor_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_xf_86_vid_mode_get_monitor. */
const uint XCB_XF_86_VID_MODE_GET_MONITOR = 4;

/**
 * @brief xcb_xf_86_vid_mode_get_monitor_request_t
 **/
struct xcb_xf_86_vid_mode_get_monitor_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort screen; /**<  */
    ubyte  pad0[2]; /**<  */
} ;

/**
 * @brief xcb_xf_86_vid_mode_get_monitor_reply_t
 **/
struct xcb_xf_86_vid_mode_get_monitor_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  vendor_length; /**<  */
    ubyte  model_length; /**<  */
    ubyte  num_hsync; /**<  */
    ubyte  num_vsync; /**<  */
    ubyte  pad1[20]; /**<  */
} ;

/** Opcode for xcb_xf_86_vid_mode_lock_mode_switch. */
const uint XCB_XF_86_VID_MODE_LOCK_MODE_SWITCH = 5;

/**
 * @brief xcb_xf_86_vid_mode_lock_mode_switch_request_t
 **/
struct xcb_xf_86_vid_mode_lock_mode_switch_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort screen; /**<  */
    ushort lock; /**<  */
} ;

/**
 * @brief xcb_xf_86_vid_mode_get_all_mode_lines_cookie_t
 **/
struct xcb_xf_86_vid_mode_get_all_mode_lines_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_xf_86_vid_mode_get_all_mode_lines. */
const uint XCB_XF_86_VID_MODE_GET_ALL_MODE_LINES = 6;

/**
 * @brief xcb_xf_86_vid_mode_get_all_mode_lines_request_t
 **/
struct xcb_xf_86_vid_mode_get_all_mode_lines_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort screen; /**<  */
    ubyte  pad0[2]; /**<  */
} ;

/**
 * @brief xcb_xf_86_vid_mode_get_all_mode_lines_reply_t
 **/
struct xcb_xf_86_vid_mode_get_all_mode_lines_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   modecount; /**<  */
    ubyte  pad1[20]; /**<  */
} ;

/** Opcode for xcb_xf_86_vid_mode_add_mode_line. */
const uint XCB_XF_86_VID_MODE_ADD_MODE_LINE = 7;

/**
 * @brief xcb_xf_86_vid_mode_add_mode_line_request_t
 **/
struct xcb_xf_86_vid_mode_add_mode_line_request_t {
    ubyte                         major_opcode; /**<  */
    ubyte                         minor_opcode; /**<  */
    ushort                        length; /**<  */
    uint                          screen; /**<  */
    xcb_xf_86_vid_mode_dotclock_t dotclock; /**<  */
    ushort                        hdisplay; /**<  */
    ushort                        hsyncstart; /**<  */
    ushort                        hsyncend; /**<  */
    ushort                        htotal; /**<  */
    ushort                        hskew; /**<  */
    ushort                        vdisplay; /**<  */
    ushort                        vsyncstart; /**<  */
    ushort                        vsyncend; /**<  */
    ushort                        vtotal; /**<  */
    ubyte                         pad0[2]; /**<  */
    uint                          flags; /**<  */
    ubyte                         pad1[12]; /**<  */
    uint                          privsize; /**<  */
    xcb_xf_86_vid_mode_dotclock_t after_dotclock; /**<  */
    ushort                        after_hdisplay; /**<  */
    ushort                        after_hsyncstart; /**<  */
    ushort                        after_hsyncend; /**<  */
    ushort                        after_htotal; /**<  */
    ushort                        after_hskew; /**<  */
    ushort                        after_vdisplay; /**<  */
    ushort                        after_vsyncstart; /**<  */
    ushort                        after_vsyncend; /**<  */
    ushort                        after_vtotal; /**<  */
    ubyte                         pad2[2]; /**<  */
    uint                          after_flags; /**<  */
    ubyte                         pad3[12]; /**<  */
} ;

/** Opcode for xcb_xf_86_vid_mode_delete_mode_line. */
const uint XCB_XF_86_VID_MODE_DELETE_MODE_LINE = 8;

/**
 * @brief xcb_xf_86_vid_mode_delete_mode_line_request_t
 **/
struct xcb_xf_86_vid_mode_delete_mode_line_request_t {
    ubyte                         major_opcode; /**<  */
    ubyte                         minor_opcode; /**<  */
    ushort                        length; /**<  */
    uint                          screen; /**<  */
    xcb_xf_86_vid_mode_dotclock_t dotclock; /**<  */
    ushort                        hdisplay; /**<  */
    ushort                        hsyncstart; /**<  */
    ushort                        hsyncend; /**<  */
    ushort                        htotal; /**<  */
    ushort                        hskew; /**<  */
    ushort                        vdisplay; /**<  */
    ushort                        vsyncstart; /**<  */
    ushort                        vsyncend; /**<  */
    ushort                        vtotal; /**<  */
    ubyte                         pad0[2]; /**<  */
    uint                          flags; /**<  */
    ubyte                         pad1[12]; /**<  */
    uint                          privsize; /**<  */
} ;

/**
 * @brief xcb_xf_86_vid_mode_validate_mode_line_cookie_t
 **/
struct xcb_xf_86_vid_mode_validate_mode_line_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_xf_86_vid_mode_validate_mode_line. */
const uint XCB_XF_86_VID_MODE_VALIDATE_MODE_LINE = 9;

/**
 * @brief xcb_xf_86_vid_mode_validate_mode_line_request_t
 **/
struct xcb_xf_86_vid_mode_validate_mode_line_request_t {
    ubyte                         major_opcode; /**<  */
    ubyte                         minor_opcode; /**<  */
    ushort                        length; /**<  */
    uint                          screen; /**<  */
    xcb_xf_86_vid_mode_dotclock_t dotclock; /**<  */
    ushort                        hdisplay; /**<  */
    ushort                        hsyncstart; /**<  */
    ushort                        hsyncend; /**<  */
    ushort                        htotal; /**<  */
    ushort                        hskew; /**<  */
    ushort                        vdisplay; /**<  */
    ushort                        vsyncstart; /**<  */
    ushort                        vsyncend; /**<  */
    ushort                        vtotal; /**<  */
    ubyte                         pad0[2]; /**<  */
    uint                          flags; /**<  */
    ubyte                         pad1[12]; /**<  */
    uint                          privsize; /**<  */
} ;

/**
 * @brief xcb_xf_86_vid_mode_validate_mode_line_reply_t
 **/
struct xcb_xf_86_vid_mode_validate_mode_line_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   status; /**<  */
    ubyte  pad1[20]; /**<  */
} ;

/** Opcode for xcb_xf_86_vid_mode_switch_to_mode. */
const uint XCB_XF_86_VID_MODE_SWITCH_TO_MODE = 10;

/**
 * @brief xcb_xf_86_vid_mode_switch_to_mode_request_t
 **/
struct xcb_xf_86_vid_mode_switch_to_mode_request_t {
    ubyte                         major_opcode; /**<  */
    ubyte                         minor_opcode; /**<  */
    ushort                        length; /**<  */
    uint                          screen; /**<  */
    xcb_xf_86_vid_mode_dotclock_t dotclock; /**<  */
    ushort                        hdisplay; /**<  */
    ushort                        hsyncstart; /**<  */
    ushort                        hsyncend; /**<  */
    ushort                        htotal; /**<  */
    ushort                        hskew; /**<  */
    ushort                        vdisplay; /**<  */
    ushort                        vsyncstart; /**<  */
    ushort                        vsyncend; /**<  */
    ushort                        vtotal; /**<  */
    ubyte                         pad0[2]; /**<  */
    uint                          flags; /**<  */
    ubyte                         pad1[12]; /**<  */
    uint                          privsize; /**<  */
} ;

/**
 * @brief xcb_xf_86_vid_mode_get_view_port_cookie_t
 **/
struct xcb_xf_86_vid_mode_get_view_port_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_xf_86_vid_mode_get_view_port. */
const uint XCB_XF_86_VID_MODE_GET_VIEW_PORT = 11;

/**
 * @brief xcb_xf_86_vid_mode_get_view_port_request_t
 **/
struct xcb_xf_86_vid_mode_get_view_port_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort screen; /**<  */
    ubyte  pad0[2]; /**<  */
} ;

/**
 * @brief xcb_xf_86_vid_mode_get_view_port_reply_t
 **/
struct xcb_xf_86_vid_mode_get_view_port_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   x; /**<  */
    uint   y; /**<  */
    ubyte  pad1[16]; /**<  */
} ;

/** Opcode for xcb_xf_86_vid_mode_set_view_port. */
const uint XCB_XF_86_VID_MODE_SET_VIEW_PORT = 12;

/**
 * @brief xcb_xf_86_vid_mode_set_view_port_request_t
 **/
struct xcb_xf_86_vid_mode_set_view_port_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort screen; /**<  */
    ubyte  pad0[2]; /**<  */
    uint   x; /**<  */
    uint   y; /**<  */
} ;

/**
 * @brief xcb_xf_86_vid_mode_get_dot_clocks_cookie_t
 **/
struct xcb_xf_86_vid_mode_get_dot_clocks_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_xf_86_vid_mode_get_dot_clocks. */
const uint XCB_XF_86_VID_MODE_GET_DOT_CLOCKS = 13;

/**
 * @brief xcb_xf_86_vid_mode_get_dot_clocks_request_t
 **/
struct xcb_xf_86_vid_mode_get_dot_clocks_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort screen; /**<  */
    ubyte  pad0[2]; /**<  */
} ;

/**
 * @brief xcb_xf_86_vid_mode_get_dot_clocks_reply_t
 **/
struct xcb_xf_86_vid_mode_get_dot_clocks_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   flags; /**<  */
    uint   clocks; /**<  */
    uint   maxclocks; /**<  */
    ubyte  pad1[12]; /**<  */
} ;

/** Opcode for xcb_xf_86_vid_mode_set_client_version. */
const uint XCB_XF_86_VID_MODE_SET_CLIENT_VERSION = 14;

/**
 * @brief xcb_xf_86_vid_mode_set_client_version_request_t
 **/
struct xcb_xf_86_vid_mode_set_client_version_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort major; /**<  */
    ushort minor; /**<  */
} ;

/** Opcode for xcb_xf_86_vid_mode_set_gamma. */
const uint XCB_XF_86_VID_MODE_SET_GAMMA = 15;

/**
 * @brief xcb_xf_86_vid_mode_set_gamma_request_t
 **/
struct xcb_xf_86_vid_mode_set_gamma_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort screen; /**<  */
    ubyte  pad0[2]; /**<  */
    uint   red; /**<  */
    uint   green; /**<  */
    uint   blue; /**<  */
    ubyte  pad1[12]; /**<  */
} ;

/**
 * @brief xcb_xf_86_vid_mode_get_gamma_cookie_t
 **/
struct xcb_xf_86_vid_mode_get_gamma_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_xf_86_vid_mode_get_gamma. */
const uint XCB_XF_86_VID_MODE_GET_GAMMA = 16;

/**
 * @brief xcb_xf_86_vid_mode_get_gamma_request_t
 **/
struct xcb_xf_86_vid_mode_get_gamma_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort screen; /**<  */
    ubyte  pad0[26]; /**<  */
} ;

/**
 * @brief xcb_xf_86_vid_mode_get_gamma_reply_t
 **/
struct xcb_xf_86_vid_mode_get_gamma_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   red; /**<  */
    uint   green; /**<  */
    uint   blue; /**<  */
    ubyte  pad1[12]; /**<  */
} ;

/**
 * @brief xcb_xf_86_vid_mode_get_gamma_ramp_cookie_t
 **/
struct xcb_xf_86_vid_mode_get_gamma_ramp_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_xf_86_vid_mode_get_gamma_ramp. */
const uint XCB_XF_86_VID_MODE_GET_GAMMA_RAMP = 17;

/**
 * @brief xcb_xf_86_vid_mode_get_gamma_ramp_request_t
 **/
struct xcb_xf_86_vid_mode_get_gamma_ramp_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort screen; /**<  */
    ushort size; /**<  */
} ;

/**
 * @brief xcb_xf_86_vid_mode_get_gamma_ramp_reply_t
 **/
struct xcb_xf_86_vid_mode_get_gamma_ramp_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort size; /**<  */
    ubyte  pad1[22]; /**<  */
} ;

/** Opcode for xcb_xf_86_vid_mode_set_gamma_ramp. */
const uint XCB_XF_86_VID_MODE_SET_GAMMA_RAMP = 18;

/**
 * @brief xcb_xf_86_vid_mode_set_gamma_ramp_request_t
 **/
struct xcb_xf_86_vid_mode_set_gamma_ramp_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort screen; /**<  */
    ushort size; /**<  */
} ;

/**
 * @brief xcb_xf_86_vid_mode_get_gamma_ramp_size_cookie_t
 **/
struct xcb_xf_86_vid_mode_get_gamma_ramp_size_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_xf_86_vid_mode_get_gamma_ramp_size. */
const uint XCB_XF_86_VID_MODE_GET_GAMMA_RAMP_SIZE = 19;

/**
 * @brief xcb_xf_86_vid_mode_get_gamma_ramp_size_request_t
 **/
struct xcb_xf_86_vid_mode_get_gamma_ramp_size_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort screen; /**<  */
    ubyte  pad0[2]; /**<  */
} ;

/**
 * @brief xcb_xf_86_vid_mode_get_gamma_ramp_size_reply_t
 **/
struct xcb_xf_86_vid_mode_get_gamma_ramp_size_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort size; /**<  */
    ubyte  pad1[22]; /**<  */
} ;

/**
 * @brief xcb_xf_86_vid_mode_get_permissions_cookie_t
 **/
struct xcb_xf_86_vid_mode_get_permissions_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_xf_86_vid_mode_get_permissions. */
const uint XCB_XF_86_VID_MODE_GET_PERMISSIONS = 20;

/**
 * @brief xcb_xf_86_vid_mode_get_permissions_request_t
 **/
struct xcb_xf_86_vid_mode_get_permissions_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort screen; /**<  */
    ubyte  pad0[2]; /**<  */
} ;

/**
 * @brief xcb_xf_86_vid_mode_get_permissions_reply_t
 **/
struct xcb_xf_86_vid_mode_get_permissions_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   permissions; /**<  */
    ubyte  pad1[20]; /**<  */
} ;

/** Opcode for xcb_xf_86_vid_mode_bad_clock. */
const uint XCB_XF_86_VID_MODE_BAD_CLOCK = 0;

/**
 * @brief xcb_xf_86_vid_mode_bad_clock_error_t
 **/
struct xcb_xf_86_vid_mode_bad_clock_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
} ;

/** Opcode for xcb_xf_86_vid_mode_bad_h_timings. */
const uint XCB_XF_86_VID_MODE_BAD_H_TIMINGS = 1;

/**
 * @brief xcb_xf_86_vid_mode_bad_h_timings_error_t
 **/
struct xcb_xf_86_vid_mode_bad_h_timings_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
} ;

/** Opcode for xcb_xf_86_vid_mode_bad_v_timings. */
const uint XCB_XF_86_VID_MODE_BAD_V_TIMINGS = 2;

/**
 * @brief xcb_xf_86_vid_mode_bad_v_timings_error_t
 **/
struct xcb_xf_86_vid_mode_bad_v_timings_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
} ;

/** Opcode for xcb_xf_86_vid_mode_mode_unsuitable. */
const uint XCB_XF_86_VID_MODE_MODE_UNSUITABLE = 3;

/**
 * @brief xcb_xf_86_vid_mode_mode_unsuitable_error_t
 **/
struct xcb_xf_86_vid_mode_mode_unsuitable_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
} ;

/** Opcode for xcb_xf_86_vid_mode_extension_disabled. */
const uint XCB_XF_86_VID_MODE_EXTENSION_DISABLED = 4;

/**
 * @brief xcb_xf_86_vid_mode_extension_disabled_error_t
 **/
struct xcb_xf_86_vid_mode_extension_disabled_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
} ;

/** Opcode for xcb_xf_86_vid_mode_client_not_local. */
const uint XCB_XF_86_VID_MODE_CLIENT_NOT_LOCAL = 5;

/**
 * @brief xcb_xf_86_vid_mode_client_not_local_error_t
 **/
struct xcb_xf_86_vid_mode_client_not_local_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
} ;

/** Opcode for xcb_xf_86_vid_mode_zoom_locked. */
const uint XCB_XF_86_VID_MODE_ZOOM_LOCKED = 6;

/**
 * @brief xcb_xf_86_vid_mode_zoom_locked_error_t
 **/
struct xcb_xf_86_vid_mode_zoom_locked_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
} ;


/*****************************************************************************
 **
 ** void xcb_xf_86_vid_mode_syncrange_next
 ** 
 ** @param xcb_xf_86_vid_mode_syncrange_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xf_86_vid_mode_syncrange_next (xcb_xf_86_vid_mode_syncrange_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xf_86_vid_mode_syncrange_end
 ** 
 ** @param xcb_xf_86_vid_mode_syncrange_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xf_86_vid_mode_syncrange_end (xcb_xf_86_vid_mode_syncrange_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xf_86_vid_mode_dotclock_next
 ** 
 ** @param xcb_xf_86_vid_mode_dotclock_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xf_86_vid_mode_dotclock_next (xcb_xf_86_vid_mode_dotclock_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xf_86_vid_mode_dotclock_end
 ** 
 ** @param xcb_xf_86_vid_mode_dotclock_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xf_86_vid_mode_dotclock_end (xcb_xf_86_vid_mode_dotclock_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_xf_86_vid_mode_mode_info_next
 ** 
 ** @param xcb_xf_86_vid_mode_mode_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xf_86_vid_mode_mode_info_next (xcb_xf_86_vid_mode_mode_info_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xf_86_vid_mode_mode_info_end
 ** 
 ** @param xcb_xf_86_vid_mode_mode_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xf_86_vid_mode_mode_info_end (xcb_xf_86_vid_mode_mode_info_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_query_version_cookie_t xcb_xf_86_vid_mode_query_version
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_xf_86_vid_mode_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_query_version_cookie_t
xcb_xf_86_vid_mode_query_version (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_query_version_cookie_t xcb_xf_86_vid_mode_query_version_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_xf_86_vid_mode_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_query_version_cookie_t
xcb_xf_86_vid_mode_query_version_unchecked (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_query_version_reply_t * xcb_xf_86_vid_mode_query_version_reply
 ** 
 ** @param xcb_connection_t                           *c
 ** @param xcb_xf_86_vid_mode_query_version_cookie_t   cookie
 ** @param xcb_generic_error_t                       **e
 ** @returns xcb_xf_86_vid_mode_query_version_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_query_version_reply_t *
xcb_xf_86_vid_mode_query_version_reply (xcb_connection_t                           *c  /**< */,
                                        xcb_xf_86_vid_mode_query_version_cookie_t   cookie  /**< */,
                                        xcb_generic_error_t                       **e  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_get_mode_line_cookie_t xcb_xf_86_vid_mode_get_mode_line
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf_86_vid_mode_get_mode_line_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_get_mode_line_cookie_t
xcb_xf_86_vid_mode_get_mode_line (xcb_connection_t *c  /**< */,
                                  ushort            screen  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_get_mode_line_cookie_t xcb_xf_86_vid_mode_get_mode_line_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf_86_vid_mode_get_mode_line_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_get_mode_line_cookie_t
xcb_xf_86_vid_mode_get_mode_line_unchecked (xcb_connection_t *c  /**< */,
                                            ushort            screen  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_xf_86_vid_mode_get_mode_line_private
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_mode_line_reply_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
extern(C) ubyte *
xcb_xf_86_vid_mode_get_mode_line_private (/+const+/ xcb_xf_86_vid_mode_get_mode_line_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xf_86_vid_mode_get_mode_line_private_length
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_mode_line_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xf_86_vid_mode_get_mode_line_private_length (/+const+/ xcb_xf_86_vid_mode_get_mode_line_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xf_86_vid_mode_get_mode_line_private_end
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_mode_line_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xf_86_vid_mode_get_mode_line_private_end (/+const+/ xcb_xf_86_vid_mode_get_mode_line_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_get_mode_line_reply_t * xcb_xf_86_vid_mode_get_mode_line_reply
 ** 
 ** @param xcb_connection_t                           *c
 ** @param xcb_xf_86_vid_mode_get_mode_line_cookie_t   cookie
 ** @param xcb_generic_error_t                       **e
 ** @returns xcb_xf_86_vid_mode_get_mode_line_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_get_mode_line_reply_t *
xcb_xf_86_vid_mode_get_mode_line_reply (xcb_connection_t                           *c  /**< */,
                                        xcb_xf_86_vid_mode_get_mode_line_cookie_t   cookie  /**< */,
                                        xcb_generic_error_t                       **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xf_86_vid_mode_mod_mode_line_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              screen
 ** @param ushort            hdisplay
 ** @param ushort            hsyncstart
 ** @param ushort            hsyncend
 ** @param ushort            htotal
 ** @param ushort            hskew
 ** @param ushort            vdisplay
 ** @param ushort            vsyncstart
 ** @param ushort            vsyncend
 ** @param ushort            vtotal
 ** @param uint              flags
 ** @param uint              privsize
 ** @param /+const+/ ubyte  *private
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf_86_vid_mode_mod_mode_line_checked (xcb_connection_t *c  /**< */,
                                          uint              screen  /**< */,
                                          ushort            hdisplay  /**< */,
                                          ushort            hsyncstart  /**< */,
                                          ushort            hsyncend  /**< */,
                                          ushort            htotal  /**< */,
                                          ushort            hskew  /**< */,
                                          ushort            vdisplay  /**< */,
                                          ushort            vsyncstart  /**< */,
                                          ushort            vsyncend  /**< */,
                                          ushort            vtotal  /**< */,
                                          uint              flags  /**< */,
                                          uint              privsize  /**< */,
                                          /+const+/ ubyte  *private  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xf_86_vid_mode_mod_mode_line
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              screen
 ** @param ushort            hdisplay
 ** @param ushort            hsyncstart
 ** @param ushort            hsyncend
 ** @param ushort            htotal
 ** @param ushort            hskew
 ** @param ushort            vdisplay
 ** @param ushort            vsyncstart
 ** @param ushort            vsyncend
 ** @param ushort            vtotal
 ** @param uint              flags
 ** @param uint              privsize
 ** @param /+const+/ ubyte  *private
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf_86_vid_mode_mod_mode_line (xcb_connection_t *c  /**< */,
                                  uint              screen  /**< */,
                                  ushort            hdisplay  /**< */,
                                  ushort            hsyncstart  /**< */,
                                  ushort            hsyncend  /**< */,
                                  ushort            htotal  /**< */,
                                  ushort            hskew  /**< */,
                                  ushort            vdisplay  /**< */,
                                  ushort            vsyncstart  /**< */,
                                  ushort            vsyncend  /**< */,
                                  ushort            vtotal  /**< */,
                                  uint              flags  /**< */,
                                  uint              privsize  /**< */,
                                  /+const+/ ubyte  *private  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xf_86_vid_mode_switch_mode_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @param ushort            zoom
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf_86_vid_mode_switch_mode_checked (xcb_connection_t *c  /**< */,
                                        ushort            screen  /**< */,
                                        ushort            zoom  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xf_86_vid_mode_switch_mode
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @param ushort            zoom
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf_86_vid_mode_switch_mode (xcb_connection_t *c  /**< */,
                                ushort            screen  /**< */,
                                ushort            zoom  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_get_monitor_cookie_t xcb_xf_86_vid_mode_get_monitor
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf_86_vid_mode_get_monitor_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_get_monitor_cookie_t
xcb_xf_86_vid_mode_get_monitor (xcb_connection_t *c  /**< */,
                                ushort            screen  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_get_monitor_cookie_t xcb_xf_86_vid_mode_get_monitor_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf_86_vid_mode_get_monitor_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_get_monitor_cookie_t
xcb_xf_86_vid_mode_get_monitor_unchecked (xcb_connection_t *c  /**< */,
                                          ushort            screen  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_syncrange_t * xcb_xf_86_vid_mode_get_monitor_hsync
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R
 ** @returns xcb_xf_86_vid_mode_syncrange_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_syncrange_t *
xcb_xf_86_vid_mode_get_monitor_hsync (/+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xf_86_vid_mode_get_monitor_hsync_length
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xf_86_vid_mode_get_monitor_hsync_length (/+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_syncrange_iterator_t xcb_xf_86_vid_mode_get_monitor_hsync_iterator
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R
 ** @returns xcb_xf_86_vid_mode_syncrange_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_syncrange_iterator_t
xcb_xf_86_vid_mode_get_monitor_hsync_iterator (/+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_syncrange_t * xcb_xf_86_vid_mode_get_monitor_vsync
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R
 ** @returns xcb_xf_86_vid_mode_syncrange_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_syncrange_t *
xcb_xf_86_vid_mode_get_monitor_vsync (/+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xf_86_vid_mode_get_monitor_vsync_length
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xf_86_vid_mode_get_monitor_vsync_length (/+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_syncrange_iterator_t xcb_xf_86_vid_mode_get_monitor_vsync_iterator
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R
 ** @returns xcb_xf_86_vid_mode_syncrange_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_syncrange_iterator_t
xcb_xf_86_vid_mode_get_monitor_vsync_iterator (/+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** char * xcb_xf_86_vid_mode_get_monitor_vendor
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
extern(C) char *
xcb_xf_86_vid_mode_get_monitor_vendor (/+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xf_86_vid_mode_get_monitor_vendor_length
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xf_86_vid_mode_get_monitor_vendor_length (/+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xf_86_vid_mode_get_monitor_vendor_end
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xf_86_vid_mode_get_monitor_vendor_end (/+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** void * xcb_xf_86_vid_mode_get_monitor_alignment_pad
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R
 ** @returns void *
 **
 *****************************************************************************/
 
extern(C) void *
xcb_xf_86_vid_mode_get_monitor_alignment_pad (/+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xf_86_vid_mode_get_monitor_alignment_pad_length
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xf_86_vid_mode_get_monitor_alignment_pad_length (/+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xf_86_vid_mode_get_monitor_alignment_pad_end
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xf_86_vid_mode_get_monitor_alignment_pad_end (/+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** char * xcb_xf_86_vid_mode_get_monitor_model
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
extern(C) char *
xcb_xf_86_vid_mode_get_monitor_model (/+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xf_86_vid_mode_get_monitor_model_length
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xf_86_vid_mode_get_monitor_model_length (/+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xf_86_vid_mode_get_monitor_model_end
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xf_86_vid_mode_get_monitor_model_end (/+const+/ xcb_xf_86_vid_mode_get_monitor_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_get_monitor_reply_t * xcb_xf_86_vid_mode_get_monitor_reply
 ** 
 ** @param xcb_connection_t                         *c
 ** @param xcb_xf_86_vid_mode_get_monitor_cookie_t   cookie
 ** @param xcb_generic_error_t                     **e
 ** @returns xcb_xf_86_vid_mode_get_monitor_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_get_monitor_reply_t *
xcb_xf_86_vid_mode_get_monitor_reply (xcb_connection_t                         *c  /**< */,
                                      xcb_xf_86_vid_mode_get_monitor_cookie_t   cookie  /**< */,
                                      xcb_generic_error_t                     **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xf_86_vid_mode_lock_mode_switch_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @param ushort            lock
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf_86_vid_mode_lock_mode_switch_checked (xcb_connection_t *c  /**< */,
                                             ushort            screen  /**< */,
                                             ushort            lock  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xf_86_vid_mode_lock_mode_switch
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @param ushort            lock
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf_86_vid_mode_lock_mode_switch (xcb_connection_t *c  /**< */,
                                     ushort            screen  /**< */,
                                     ushort            lock  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_get_all_mode_lines_cookie_t xcb_xf_86_vid_mode_get_all_mode_lines
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf_86_vid_mode_get_all_mode_lines_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_get_all_mode_lines_cookie_t
xcb_xf_86_vid_mode_get_all_mode_lines (xcb_connection_t *c  /**< */,
                                       ushort            screen  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_get_all_mode_lines_cookie_t xcb_xf_86_vid_mode_get_all_mode_lines_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf_86_vid_mode_get_all_mode_lines_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_get_all_mode_lines_cookie_t
xcb_xf_86_vid_mode_get_all_mode_lines_unchecked (xcb_connection_t *c  /**< */,
                                                 ushort            screen  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_mode_info_t * xcb_xf_86_vid_mode_get_all_mode_lines_modeinfo
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_all_mode_lines_reply_t *R
 ** @returns xcb_xf_86_vid_mode_mode_info_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_mode_info_t *
xcb_xf_86_vid_mode_get_all_mode_lines_modeinfo (/+const+/ xcb_xf_86_vid_mode_get_all_mode_lines_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xf_86_vid_mode_get_all_mode_lines_modeinfo_length
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_all_mode_lines_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xf_86_vid_mode_get_all_mode_lines_modeinfo_length (/+const+/ xcb_xf_86_vid_mode_get_all_mode_lines_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_mode_info_iterator_t xcb_xf_86_vid_mode_get_all_mode_lines_modeinfo_iterator
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_all_mode_lines_reply_t *R
 ** @returns xcb_xf_86_vid_mode_mode_info_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_mode_info_iterator_t
xcb_xf_86_vid_mode_get_all_mode_lines_modeinfo_iterator (/+const+/ xcb_xf_86_vid_mode_get_all_mode_lines_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_get_all_mode_lines_reply_t * xcb_xf_86_vid_mode_get_all_mode_lines_reply
 ** 
 ** @param xcb_connection_t                                *c
 ** @param xcb_xf_86_vid_mode_get_all_mode_lines_cookie_t   cookie
 ** @param xcb_generic_error_t                            **e
 ** @returns xcb_xf_86_vid_mode_get_all_mode_lines_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_get_all_mode_lines_reply_t *
xcb_xf_86_vid_mode_get_all_mode_lines_reply (xcb_connection_t                                *c  /**< */,
                                             xcb_xf_86_vid_mode_get_all_mode_lines_cookie_t   cookie  /**< */,
                                             xcb_generic_error_t                            **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xf_86_vid_mode_add_mode_line_checked
 ** 
 ** @param xcb_connection_t              *c
 ** @param uint                           screen
 ** @param xcb_xf_86_vid_mode_dotclock_t  dotclock
 ** @param ushort                         hdisplay
 ** @param ushort                         hsyncstart
 ** @param ushort                         hsyncend
 ** @param ushort                         htotal
 ** @param ushort                         hskew
 ** @param ushort                         vdisplay
 ** @param ushort                         vsyncstart
 ** @param ushort                         vsyncend
 ** @param ushort                         vtotal
 ** @param uint                           flags
 ** @param uint                           privsize
 ** @param xcb_xf_86_vid_mode_dotclock_t  after_dotclock
 ** @param ushort                         after_hdisplay
 ** @param ushort                         after_hsyncstart
 ** @param ushort                         after_hsyncend
 ** @param ushort                         after_htotal
 ** @param ushort                         after_hskew
 ** @param ushort                         after_vdisplay
 ** @param ushort                         after_vsyncstart
 ** @param ushort                         after_vsyncend
 ** @param ushort                         after_vtotal
 ** @param uint                           after_flags
 ** @param /+const+/ ubyte               *private
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf_86_vid_mode_add_mode_line_checked (xcb_connection_t              *c  /**< */,
                                          uint                           screen  /**< */,
                                          xcb_xf_86_vid_mode_dotclock_t  dotclock  /**< */,
                                          ushort                         hdisplay  /**< */,
                                          ushort                         hsyncstart  /**< */,
                                          ushort                         hsyncend  /**< */,
                                          ushort                         htotal  /**< */,
                                          ushort                         hskew  /**< */,
                                          ushort                         vdisplay  /**< */,
                                          ushort                         vsyncstart  /**< */,
                                          ushort                         vsyncend  /**< */,
                                          ushort                         vtotal  /**< */,
                                          uint                           flags  /**< */,
                                          uint                           privsize  /**< */,
                                          xcb_xf_86_vid_mode_dotclock_t  after_dotclock  /**< */,
                                          ushort                         after_hdisplay  /**< */,
                                          ushort                         after_hsyncstart  /**< */,
                                          ushort                         after_hsyncend  /**< */,
                                          ushort                         after_htotal  /**< */,
                                          ushort                         after_hskew  /**< */,
                                          ushort                         after_vdisplay  /**< */,
                                          ushort                         after_vsyncstart  /**< */,
                                          ushort                         after_vsyncend  /**< */,
                                          ushort                         after_vtotal  /**< */,
                                          uint                           after_flags  /**< */,
                                          /+const+/ ubyte               *private  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xf_86_vid_mode_add_mode_line
 ** 
 ** @param xcb_connection_t              *c
 ** @param uint                           screen
 ** @param xcb_xf_86_vid_mode_dotclock_t  dotclock
 ** @param ushort                         hdisplay
 ** @param ushort                         hsyncstart
 ** @param ushort                         hsyncend
 ** @param ushort                         htotal
 ** @param ushort                         hskew
 ** @param ushort                         vdisplay
 ** @param ushort                         vsyncstart
 ** @param ushort                         vsyncend
 ** @param ushort                         vtotal
 ** @param uint                           flags
 ** @param uint                           privsize
 ** @param xcb_xf_86_vid_mode_dotclock_t  after_dotclock
 ** @param ushort                         after_hdisplay
 ** @param ushort                         after_hsyncstart
 ** @param ushort                         after_hsyncend
 ** @param ushort                         after_htotal
 ** @param ushort                         after_hskew
 ** @param ushort                         after_vdisplay
 ** @param ushort                         after_vsyncstart
 ** @param ushort                         after_vsyncend
 ** @param ushort                         after_vtotal
 ** @param uint                           after_flags
 ** @param /+const+/ ubyte               *private
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf_86_vid_mode_add_mode_line (xcb_connection_t              *c  /**< */,
                                  uint                           screen  /**< */,
                                  xcb_xf_86_vid_mode_dotclock_t  dotclock  /**< */,
                                  ushort                         hdisplay  /**< */,
                                  ushort                         hsyncstart  /**< */,
                                  ushort                         hsyncend  /**< */,
                                  ushort                         htotal  /**< */,
                                  ushort                         hskew  /**< */,
                                  ushort                         vdisplay  /**< */,
                                  ushort                         vsyncstart  /**< */,
                                  ushort                         vsyncend  /**< */,
                                  ushort                         vtotal  /**< */,
                                  uint                           flags  /**< */,
                                  uint                           privsize  /**< */,
                                  xcb_xf_86_vid_mode_dotclock_t  after_dotclock  /**< */,
                                  ushort                         after_hdisplay  /**< */,
                                  ushort                         after_hsyncstart  /**< */,
                                  ushort                         after_hsyncend  /**< */,
                                  ushort                         after_htotal  /**< */,
                                  ushort                         after_hskew  /**< */,
                                  ushort                         after_vdisplay  /**< */,
                                  ushort                         after_vsyncstart  /**< */,
                                  ushort                         after_vsyncend  /**< */,
                                  ushort                         after_vtotal  /**< */,
                                  uint                           after_flags  /**< */,
                                  /+const+/ ubyte               *private  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xf_86_vid_mode_delete_mode_line_checked
 ** 
 ** @param xcb_connection_t              *c
 ** @param uint                           screen
 ** @param xcb_xf_86_vid_mode_dotclock_t  dotclock
 ** @param ushort                         hdisplay
 ** @param ushort                         hsyncstart
 ** @param ushort                         hsyncend
 ** @param ushort                         htotal
 ** @param ushort                         hskew
 ** @param ushort                         vdisplay
 ** @param ushort                         vsyncstart
 ** @param ushort                         vsyncend
 ** @param ushort                         vtotal
 ** @param uint                           flags
 ** @param uint                           privsize
 ** @param /+const+/ ubyte               *private
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf_86_vid_mode_delete_mode_line_checked (xcb_connection_t              *c  /**< */,
                                             uint                           screen  /**< */,
                                             xcb_xf_86_vid_mode_dotclock_t  dotclock  /**< */,
                                             ushort                         hdisplay  /**< */,
                                             ushort                         hsyncstart  /**< */,
                                             ushort                         hsyncend  /**< */,
                                             ushort                         htotal  /**< */,
                                             ushort                         hskew  /**< */,
                                             ushort                         vdisplay  /**< */,
                                             ushort                         vsyncstart  /**< */,
                                             ushort                         vsyncend  /**< */,
                                             ushort                         vtotal  /**< */,
                                             uint                           flags  /**< */,
                                             uint                           privsize  /**< */,
                                             /+const+/ ubyte               *private  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xf_86_vid_mode_delete_mode_line
 ** 
 ** @param xcb_connection_t              *c
 ** @param uint                           screen
 ** @param xcb_xf_86_vid_mode_dotclock_t  dotclock
 ** @param ushort                         hdisplay
 ** @param ushort                         hsyncstart
 ** @param ushort                         hsyncend
 ** @param ushort                         htotal
 ** @param ushort                         hskew
 ** @param ushort                         vdisplay
 ** @param ushort                         vsyncstart
 ** @param ushort                         vsyncend
 ** @param ushort                         vtotal
 ** @param uint                           flags
 ** @param uint                           privsize
 ** @param /+const+/ ubyte               *private
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf_86_vid_mode_delete_mode_line (xcb_connection_t              *c  /**< */,
                                     uint                           screen  /**< */,
                                     xcb_xf_86_vid_mode_dotclock_t  dotclock  /**< */,
                                     ushort                         hdisplay  /**< */,
                                     ushort                         hsyncstart  /**< */,
                                     ushort                         hsyncend  /**< */,
                                     ushort                         htotal  /**< */,
                                     ushort                         hskew  /**< */,
                                     ushort                         vdisplay  /**< */,
                                     ushort                         vsyncstart  /**< */,
                                     ushort                         vsyncend  /**< */,
                                     ushort                         vtotal  /**< */,
                                     uint                           flags  /**< */,
                                     uint                           privsize  /**< */,
                                     /+const+/ ubyte               *private  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_validate_mode_line_cookie_t xcb_xf_86_vid_mode_validate_mode_line
 ** 
 ** @param xcb_connection_t              *c
 ** @param uint                           screen
 ** @param xcb_xf_86_vid_mode_dotclock_t  dotclock
 ** @param ushort                         hdisplay
 ** @param ushort                         hsyncstart
 ** @param ushort                         hsyncend
 ** @param ushort                         htotal
 ** @param ushort                         hskew
 ** @param ushort                         vdisplay
 ** @param ushort                         vsyncstart
 ** @param ushort                         vsyncend
 ** @param ushort                         vtotal
 ** @param uint                           flags
 ** @param uint                           privsize
 ** @param /+const+/ ubyte               *private
 ** @returns xcb_xf_86_vid_mode_validate_mode_line_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_validate_mode_line_cookie_t
xcb_xf_86_vid_mode_validate_mode_line (xcb_connection_t              *c  /**< */,
                                       uint                           screen  /**< */,
                                       xcb_xf_86_vid_mode_dotclock_t  dotclock  /**< */,
                                       ushort                         hdisplay  /**< */,
                                       ushort                         hsyncstart  /**< */,
                                       ushort                         hsyncend  /**< */,
                                       ushort                         htotal  /**< */,
                                       ushort                         hskew  /**< */,
                                       ushort                         vdisplay  /**< */,
                                       ushort                         vsyncstart  /**< */,
                                       ushort                         vsyncend  /**< */,
                                       ushort                         vtotal  /**< */,
                                       uint                           flags  /**< */,
                                       uint                           privsize  /**< */,
                                       /+const+/ ubyte               *private  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_validate_mode_line_cookie_t xcb_xf_86_vid_mode_validate_mode_line_unchecked
 ** 
 ** @param xcb_connection_t              *c
 ** @param uint                           screen
 ** @param xcb_xf_86_vid_mode_dotclock_t  dotclock
 ** @param ushort                         hdisplay
 ** @param ushort                         hsyncstart
 ** @param ushort                         hsyncend
 ** @param ushort                         htotal
 ** @param ushort                         hskew
 ** @param ushort                         vdisplay
 ** @param ushort                         vsyncstart
 ** @param ushort                         vsyncend
 ** @param ushort                         vtotal
 ** @param uint                           flags
 ** @param uint                           privsize
 ** @param /+const+/ ubyte               *private
 ** @returns xcb_xf_86_vid_mode_validate_mode_line_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_validate_mode_line_cookie_t
xcb_xf_86_vid_mode_validate_mode_line_unchecked (xcb_connection_t              *c  /**< */,
                                                 uint                           screen  /**< */,
                                                 xcb_xf_86_vid_mode_dotclock_t  dotclock  /**< */,
                                                 ushort                         hdisplay  /**< */,
                                                 ushort                         hsyncstart  /**< */,
                                                 ushort                         hsyncend  /**< */,
                                                 ushort                         htotal  /**< */,
                                                 ushort                         hskew  /**< */,
                                                 ushort                         vdisplay  /**< */,
                                                 ushort                         vsyncstart  /**< */,
                                                 ushort                         vsyncend  /**< */,
                                                 ushort                         vtotal  /**< */,
                                                 uint                           flags  /**< */,
                                                 uint                           privsize  /**< */,
                                                 /+const+/ ubyte               *private  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_validate_mode_line_reply_t * xcb_xf_86_vid_mode_validate_mode_line_reply
 ** 
 ** @param xcb_connection_t                                *c
 ** @param xcb_xf_86_vid_mode_validate_mode_line_cookie_t   cookie
 ** @param xcb_generic_error_t                            **e
 ** @returns xcb_xf_86_vid_mode_validate_mode_line_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_validate_mode_line_reply_t *
xcb_xf_86_vid_mode_validate_mode_line_reply (xcb_connection_t                                *c  /**< */,
                                             xcb_xf_86_vid_mode_validate_mode_line_cookie_t   cookie  /**< */,
                                             xcb_generic_error_t                            **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xf_86_vid_mode_switch_to_mode_checked
 ** 
 ** @param xcb_connection_t              *c
 ** @param uint                           screen
 ** @param xcb_xf_86_vid_mode_dotclock_t  dotclock
 ** @param ushort                         hdisplay
 ** @param ushort                         hsyncstart
 ** @param ushort                         hsyncend
 ** @param ushort                         htotal
 ** @param ushort                         hskew
 ** @param ushort                         vdisplay
 ** @param ushort                         vsyncstart
 ** @param ushort                         vsyncend
 ** @param ushort                         vtotal
 ** @param uint                           flags
 ** @param uint                           privsize
 ** @param /+const+/ ubyte               *private
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf_86_vid_mode_switch_to_mode_checked (xcb_connection_t              *c  /**< */,
                                           uint                           screen  /**< */,
                                           xcb_xf_86_vid_mode_dotclock_t  dotclock  /**< */,
                                           ushort                         hdisplay  /**< */,
                                           ushort                         hsyncstart  /**< */,
                                           ushort                         hsyncend  /**< */,
                                           ushort                         htotal  /**< */,
                                           ushort                         hskew  /**< */,
                                           ushort                         vdisplay  /**< */,
                                           ushort                         vsyncstart  /**< */,
                                           ushort                         vsyncend  /**< */,
                                           ushort                         vtotal  /**< */,
                                           uint                           flags  /**< */,
                                           uint                           privsize  /**< */,
                                           /+const+/ ubyte               *private  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xf_86_vid_mode_switch_to_mode
 ** 
 ** @param xcb_connection_t              *c
 ** @param uint                           screen
 ** @param xcb_xf_86_vid_mode_dotclock_t  dotclock
 ** @param ushort                         hdisplay
 ** @param ushort                         hsyncstart
 ** @param ushort                         hsyncend
 ** @param ushort                         htotal
 ** @param ushort                         hskew
 ** @param ushort                         vdisplay
 ** @param ushort                         vsyncstart
 ** @param ushort                         vsyncend
 ** @param ushort                         vtotal
 ** @param uint                           flags
 ** @param uint                           privsize
 ** @param /+const+/ ubyte               *private
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf_86_vid_mode_switch_to_mode (xcb_connection_t              *c  /**< */,
                                   uint                           screen  /**< */,
                                   xcb_xf_86_vid_mode_dotclock_t  dotclock  /**< */,
                                   ushort                         hdisplay  /**< */,
                                   ushort                         hsyncstart  /**< */,
                                   ushort                         hsyncend  /**< */,
                                   ushort                         htotal  /**< */,
                                   ushort                         hskew  /**< */,
                                   ushort                         vdisplay  /**< */,
                                   ushort                         vsyncstart  /**< */,
                                   ushort                         vsyncend  /**< */,
                                   ushort                         vtotal  /**< */,
                                   uint                           flags  /**< */,
                                   uint                           privsize  /**< */,
                                   /+const+/ ubyte               *private  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_get_view_port_cookie_t xcb_xf_86_vid_mode_get_view_port
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf_86_vid_mode_get_view_port_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_get_view_port_cookie_t
xcb_xf_86_vid_mode_get_view_port (xcb_connection_t *c  /**< */,
                                  ushort            screen  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_get_view_port_cookie_t xcb_xf_86_vid_mode_get_view_port_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf_86_vid_mode_get_view_port_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_get_view_port_cookie_t
xcb_xf_86_vid_mode_get_view_port_unchecked (xcb_connection_t *c  /**< */,
                                            ushort            screen  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_get_view_port_reply_t * xcb_xf_86_vid_mode_get_view_port_reply
 ** 
 ** @param xcb_connection_t                           *c
 ** @param xcb_xf_86_vid_mode_get_view_port_cookie_t   cookie
 ** @param xcb_generic_error_t                       **e
 ** @returns xcb_xf_86_vid_mode_get_view_port_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_get_view_port_reply_t *
xcb_xf_86_vid_mode_get_view_port_reply (xcb_connection_t                           *c  /**< */,
                                        xcb_xf_86_vid_mode_get_view_port_cookie_t   cookie  /**< */,
                                        xcb_generic_error_t                       **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xf_86_vid_mode_set_view_port_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @param uint              x
 ** @param uint              y
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf_86_vid_mode_set_view_port_checked (xcb_connection_t *c  /**< */,
                                          ushort            screen  /**< */,
                                          uint              x  /**< */,
                                          uint              y  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xf_86_vid_mode_set_view_port
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @param uint              x
 ** @param uint              y
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf_86_vid_mode_set_view_port (xcb_connection_t *c  /**< */,
                                  ushort            screen  /**< */,
                                  uint              x  /**< */,
                                  uint              y  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_get_dot_clocks_cookie_t xcb_xf_86_vid_mode_get_dot_clocks
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf_86_vid_mode_get_dot_clocks_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_get_dot_clocks_cookie_t
xcb_xf_86_vid_mode_get_dot_clocks (xcb_connection_t *c  /**< */,
                                   ushort            screen  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_get_dot_clocks_cookie_t xcb_xf_86_vid_mode_get_dot_clocks_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf_86_vid_mode_get_dot_clocks_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_get_dot_clocks_cookie_t
xcb_xf_86_vid_mode_get_dot_clocks_unchecked (xcb_connection_t *c  /**< */,
                                             ushort            screen  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_xf_86_vid_mode_get_dot_clocks_clock
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_dot_clocks_reply_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
extern(C) uint *
xcb_xf_86_vid_mode_get_dot_clocks_clock (/+const+/ xcb_xf_86_vid_mode_get_dot_clocks_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xf_86_vid_mode_get_dot_clocks_clock_length
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_dot_clocks_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xf_86_vid_mode_get_dot_clocks_clock_length (/+const+/ xcb_xf_86_vid_mode_get_dot_clocks_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xf_86_vid_mode_get_dot_clocks_clock_end
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_dot_clocks_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xf_86_vid_mode_get_dot_clocks_clock_end (/+const+/ xcb_xf_86_vid_mode_get_dot_clocks_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_get_dot_clocks_reply_t * xcb_xf_86_vid_mode_get_dot_clocks_reply
 ** 
 ** @param xcb_connection_t                            *c
 ** @param xcb_xf_86_vid_mode_get_dot_clocks_cookie_t   cookie
 ** @param xcb_generic_error_t                        **e
 ** @returns xcb_xf_86_vid_mode_get_dot_clocks_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_get_dot_clocks_reply_t *
xcb_xf_86_vid_mode_get_dot_clocks_reply (xcb_connection_t                            *c  /**< */,
                                         xcb_xf_86_vid_mode_get_dot_clocks_cookie_t   cookie  /**< */,
                                         xcb_generic_error_t                        **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xf_86_vid_mode_set_client_version_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            major
 ** @param ushort            minor
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf_86_vid_mode_set_client_version_checked (xcb_connection_t *c  /**< */,
                                               ushort            major  /**< */,
                                               ushort            minor  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xf_86_vid_mode_set_client_version
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            major
 ** @param ushort            minor
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf_86_vid_mode_set_client_version (xcb_connection_t *c  /**< */,
                                       ushort            major  /**< */,
                                       ushort            minor  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xf_86_vid_mode_set_gamma_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @param uint              red
 ** @param uint              green
 ** @param uint              blue
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf_86_vid_mode_set_gamma_checked (xcb_connection_t *c  /**< */,
                                      ushort            screen  /**< */,
                                      uint              red  /**< */,
                                      uint              green  /**< */,
                                      uint              blue  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xf_86_vid_mode_set_gamma
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @param uint              red
 ** @param uint              green
 ** @param uint              blue
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf_86_vid_mode_set_gamma (xcb_connection_t *c  /**< */,
                              ushort            screen  /**< */,
                              uint              red  /**< */,
                              uint              green  /**< */,
                              uint              blue  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_get_gamma_cookie_t xcb_xf_86_vid_mode_get_gamma
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf_86_vid_mode_get_gamma_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_get_gamma_cookie_t
xcb_xf_86_vid_mode_get_gamma (xcb_connection_t *c  /**< */,
                              ushort            screen  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_get_gamma_cookie_t xcb_xf_86_vid_mode_get_gamma_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf_86_vid_mode_get_gamma_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_get_gamma_cookie_t
xcb_xf_86_vid_mode_get_gamma_unchecked (xcb_connection_t *c  /**< */,
                                        ushort            screen  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_get_gamma_reply_t * xcb_xf_86_vid_mode_get_gamma_reply
 ** 
 ** @param xcb_connection_t                       *c
 ** @param xcb_xf_86_vid_mode_get_gamma_cookie_t   cookie
 ** @param xcb_generic_error_t                   **e
 ** @returns xcb_xf_86_vid_mode_get_gamma_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_get_gamma_reply_t *
xcb_xf_86_vid_mode_get_gamma_reply (xcb_connection_t                       *c  /**< */,
                                    xcb_xf_86_vid_mode_get_gamma_cookie_t   cookie  /**< */,
                                    xcb_generic_error_t                   **e  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_get_gamma_ramp_cookie_t xcb_xf_86_vid_mode_get_gamma_ramp
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @param ushort            size
 ** @returns xcb_xf_86_vid_mode_get_gamma_ramp_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_get_gamma_ramp_cookie_t
xcb_xf_86_vid_mode_get_gamma_ramp (xcb_connection_t *c  /**< */,
                                   ushort            screen  /**< */,
                                   ushort            size  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_get_gamma_ramp_cookie_t xcb_xf_86_vid_mode_get_gamma_ramp_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @param ushort            size
 ** @returns xcb_xf_86_vid_mode_get_gamma_ramp_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_get_gamma_ramp_cookie_t
xcb_xf_86_vid_mode_get_gamma_ramp_unchecked (xcb_connection_t *c  /**< */,
                                             ushort            screen  /**< */,
                                             ushort            size  /**< */);


/*****************************************************************************
 **
 ** ushort * xcb_xf_86_vid_mode_get_gamma_ramp_red
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_gamma_ramp_reply_t *R
 ** @returns ushort *
 **
 *****************************************************************************/
 
extern(C) ushort *
xcb_xf_86_vid_mode_get_gamma_ramp_red (/+const+/ xcb_xf_86_vid_mode_get_gamma_ramp_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xf_86_vid_mode_get_gamma_ramp_red_length
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_gamma_ramp_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xf_86_vid_mode_get_gamma_ramp_red_length (/+const+/ xcb_xf_86_vid_mode_get_gamma_ramp_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xf_86_vid_mode_get_gamma_ramp_red_end
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_gamma_ramp_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xf_86_vid_mode_get_gamma_ramp_red_end (/+const+/ xcb_xf_86_vid_mode_get_gamma_ramp_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** ushort * xcb_xf_86_vid_mode_get_gamma_ramp_green
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_gamma_ramp_reply_t *R
 ** @returns ushort *
 **
 *****************************************************************************/
 
extern(C) ushort *
xcb_xf_86_vid_mode_get_gamma_ramp_green (/+const+/ xcb_xf_86_vid_mode_get_gamma_ramp_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xf_86_vid_mode_get_gamma_ramp_green_length
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_gamma_ramp_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xf_86_vid_mode_get_gamma_ramp_green_length (/+const+/ xcb_xf_86_vid_mode_get_gamma_ramp_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xf_86_vid_mode_get_gamma_ramp_green_end
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_gamma_ramp_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xf_86_vid_mode_get_gamma_ramp_green_end (/+const+/ xcb_xf_86_vid_mode_get_gamma_ramp_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** ushort * xcb_xf_86_vid_mode_get_gamma_ramp_blue
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_gamma_ramp_reply_t *R
 ** @returns ushort *
 **
 *****************************************************************************/
 
extern(C) ushort *
xcb_xf_86_vid_mode_get_gamma_ramp_blue (/+const+/ xcb_xf_86_vid_mode_get_gamma_ramp_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xf_86_vid_mode_get_gamma_ramp_blue_length
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_gamma_ramp_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xf_86_vid_mode_get_gamma_ramp_blue_length (/+const+/ xcb_xf_86_vid_mode_get_gamma_ramp_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xf_86_vid_mode_get_gamma_ramp_blue_end
 ** 
 ** @param /+const+/ xcb_xf_86_vid_mode_get_gamma_ramp_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xf_86_vid_mode_get_gamma_ramp_blue_end (/+const+/ xcb_xf_86_vid_mode_get_gamma_ramp_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_get_gamma_ramp_reply_t * xcb_xf_86_vid_mode_get_gamma_ramp_reply
 ** 
 ** @param xcb_connection_t                            *c
 ** @param xcb_xf_86_vid_mode_get_gamma_ramp_cookie_t   cookie
 ** @param xcb_generic_error_t                        **e
 ** @returns xcb_xf_86_vid_mode_get_gamma_ramp_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_get_gamma_ramp_reply_t *
xcb_xf_86_vid_mode_get_gamma_ramp_reply (xcb_connection_t                            *c  /**< */,
                                         xcb_xf_86_vid_mode_get_gamma_ramp_cookie_t   cookie  /**< */,
                                         xcb_generic_error_t                        **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xf_86_vid_mode_set_gamma_ramp_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @param ushort            size
 ** @param /+const+/ ushort *red
 ** @param /+const+/ ushort *green
 ** @param /+const+/ ushort *blue
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf_86_vid_mode_set_gamma_ramp_checked (xcb_connection_t *c  /**< */,
                                           ushort            screen  /**< */,
                                           ushort            size  /**< */,
                                           /+const+/ ushort *red  /**< */,
                                           /+const+/ ushort *green  /**< */,
                                           /+const+/ ushort *blue  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xf_86_vid_mode_set_gamma_ramp
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @param ushort            size
 ** @param /+const+/ ushort *red
 ** @param /+const+/ ushort *green
 ** @param /+const+/ ushort *blue
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf_86_vid_mode_set_gamma_ramp (xcb_connection_t *c  /**< */,
                                   ushort            screen  /**< */,
                                   ushort            size  /**< */,
                                   /+const+/ ushort *red  /**< */,
                                   /+const+/ ushort *green  /**< */,
                                   /+const+/ ushort *blue  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_get_gamma_ramp_size_cookie_t xcb_xf_86_vid_mode_get_gamma_ramp_size
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf_86_vid_mode_get_gamma_ramp_size_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_get_gamma_ramp_size_cookie_t
xcb_xf_86_vid_mode_get_gamma_ramp_size (xcb_connection_t *c  /**< */,
                                        ushort            screen  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_get_gamma_ramp_size_cookie_t xcb_xf_86_vid_mode_get_gamma_ramp_size_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf_86_vid_mode_get_gamma_ramp_size_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_get_gamma_ramp_size_cookie_t
xcb_xf_86_vid_mode_get_gamma_ramp_size_unchecked (xcb_connection_t *c  /**< */,
                                                  ushort            screen  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_get_gamma_ramp_size_reply_t * xcb_xf_86_vid_mode_get_gamma_ramp_size_reply
 ** 
 ** @param xcb_connection_t                                 *c
 ** @param xcb_xf_86_vid_mode_get_gamma_ramp_size_cookie_t   cookie
 ** @param xcb_generic_error_t                             **e
 ** @returns xcb_xf_86_vid_mode_get_gamma_ramp_size_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_get_gamma_ramp_size_reply_t *
xcb_xf_86_vid_mode_get_gamma_ramp_size_reply (xcb_connection_t                                 *c  /**< */,
                                              xcb_xf_86_vid_mode_get_gamma_ramp_size_cookie_t   cookie  /**< */,
                                              xcb_generic_error_t                             **e  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_get_permissions_cookie_t xcb_xf_86_vid_mode_get_permissions
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf_86_vid_mode_get_permissions_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_get_permissions_cookie_t
xcb_xf_86_vid_mode_get_permissions (xcb_connection_t *c  /**< */,
                                    ushort            screen  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_get_permissions_cookie_t xcb_xf_86_vid_mode_get_permissions_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf_86_vid_mode_get_permissions_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_get_permissions_cookie_t
xcb_xf_86_vid_mode_get_permissions_unchecked (xcb_connection_t *c  /**< */,
                                              ushort            screen  /**< */);


/*****************************************************************************
 **
 ** xcb_xf_86_vid_mode_get_permissions_reply_t * xcb_xf_86_vid_mode_get_permissions_reply
 ** 
 ** @param xcb_connection_t                             *c
 ** @param xcb_xf_86_vid_mode_get_permissions_cookie_t   cookie
 ** @param xcb_generic_error_t                         **e
 ** @returns xcb_xf_86_vid_mode_get_permissions_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xf_86_vid_mode_get_permissions_reply_t *
xcb_xf_86_vid_mode_get_permissions_reply (xcb_connection_t                             *c  /**< */,
                                          xcb_xf_86_vid_mode_get_permissions_cookie_t   cookie  /**< */,
                                          xcb_generic_error_t                         **e  /**< */);



/**
 * @}
 */
