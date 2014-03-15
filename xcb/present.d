/*
 * This file generated automatically from present.xml by c-client.xsl using XSLT.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_Present_API XCB Present API
 * @brief Present XCB Protocol Implementation.
 * @{
 **/


module xcb.present;

import xcb.xcb;
import xcb.xproto;
import xcb.randr;
import xcb.xfixes;
import xcb.sync;

const int XCB_PRESENT_MAJOR_VERSION =1;
const int XCB_PRESENT_MINOR_VERSION =0;
  
extern(C) extern xcb_extension_t xcb_present_id;

enum :int{
    XCB_PRESENT_EVENT_CONFIGURE_NOTIFY = 0,
    XCB_PRESENT_EVENT_COMPLETE_NOTIFY = 1,
    XCB_PRESENT_EVENT_IDLE_NOTIFY = 2,
    XCB_PRESENT_EVENT_REDIRECT_NOTIFY = 3
};

enum :int{
    XCB_PRESENT_EVENT_MASK_NO_EVENT = 0,
    XCB_PRESENT_EVENT_MASK_CONFIGURE_NOTIFY = (1 << 0),
    XCB_PRESENT_EVENT_MASK_COMPLETE_NOTIFY = (1 << 1),
    XCB_PRESENT_EVENT_MASK_IDLE_NOTIFY = (1 << 2),
    XCB_PRESENT_EVENT_MASK_REDIRECT_NOTIFY = (1 << 3)
};

enum :int{
    XCB_PRESENT_OPTION_NONE = 0,
    XCB_PRESENT_OPTION_ASYNC = (1 << 0),
    XCB_PRESENT_OPTION_COPY = (1 << 1),
    XCB_PRESENT_OPTION_UST = (1 << 2)
};

enum :int{
    XCB_PRESENT_CAPABILITY_NONE = 0,
    XCB_PRESENT_CAPABILITY_ASYNC = (1 << 0),
    XCB_PRESENT_CAPABILITY_FENCE = (1 << 1),
    XCB_PRESENT_CAPABILITY_UST = (1 << 2)
};

enum :int{
    XCB_PRESENT_COMPLETE_KIND_PIXMAP = 0,
    XCB_PRESENT_COMPLETE_KIND_NOTIFY_MSC = 1
};

enum :int{
    XCB_PRESENT_COMPLETE_MODE_COPY = 0,
    XCB_PRESENT_COMPLETE_MODE_FLIP = 1,
    XCB_PRESENT_COMPLETE_MODE_SKIP = 2
};

/**
 * @brief xcb_present_notify_t
 **/
struct xcb_present_notify_t {
    xcb_window_t window; /**<  */
    uint         serial; /**<  */
} ;

/**
 * @brief xcb_present_notify_iterator_t
 **/
struct xcb_present_notify_iterator_t {
    xcb_present_notify_t *data; /**<  */
    int                   rem; /**<  */
    int                   index; /**<  */
} ;

/**
 * @brief xcb_present_query_version_cookie_t
 **/
struct xcb_present_query_version_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_present_query_version. */
const uint XCB_PRESENT_QUERY_VERSION = 0;

/**
 * @brief xcb_present_query_version_request_t
 **/
struct xcb_present_query_version_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    uint   major_version; /**<  */
    uint   minor_version; /**<  */
} ;

/**
 * @brief xcb_present_query_version_reply_t
 **/
struct xcb_present_query_version_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   major_version; /**<  */
    uint   minor_version; /**<  */
} ;

/** Opcode for xcb_present_pixmap. */
const uint XCB_PRESENT_PIXMAP = 1;

/**
 * @brief xcb_present_pixmap_request_t
 **/
struct xcb_present_pixmap_request_t {
    ubyte               major_opcode; /**<  */
    ubyte               minor_opcode; /**<  */
    ushort              length; /**<  */
    xcb_window_t        window; /**<  */
    xcb_pixmap_t        pixmap; /**<  */
    uint                serial; /**<  */
    xcb_xfixes_region_t valid; /**<  */
    xcb_xfixes_region_t update; /**<  */
    short               x_off; /**<  */
    short               y_off; /**<  */
    xcb_randr_crtc_t    target_crtc; /**<  */
    xcb_sync_fence_t    wait_fence; /**<  */
    xcb_sync_fence_t    idle_fence; /**<  */
    uint                options; /**<  */
    ubyte               pad0[4]; /**<  */
    ulong               target_msc; /**<  */
    ulong               divisor; /**<  */
    ulong               remainder; /**<  */
} ;

/** Opcode for xcb_present_notify_msc. */
const uint XCB_PRESENT_NOTIFY_MSC = 2;

/**
 * @brief xcb_present_notify_msc_request_t
 **/
struct xcb_present_notify_msc_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
    uint         serial; /**<  */
    ubyte        pad0[4]; /**<  */
    ulong        target_msc; /**<  */
    ulong        divisor; /**<  */
    ulong        remainder; /**<  */
} ;

alias uint xcb_present_event_t;

/**
 * @brief xcb_present_event_iterator_t
 **/
struct xcb_present_event_iterator_t {
    xcb_present_event_t *data; /**<  */
    int                  rem; /**<  */
    int                  index; /**<  */
} ;

/** Opcode for xcb_present_select_input. */
const uint XCB_PRESENT_SELECT_INPUT = 3;

/**
 * @brief xcb_present_select_input_request_t
 **/
struct xcb_present_select_input_request_t {
    ubyte               major_opcode; /**<  */
    ubyte               minor_opcode; /**<  */
    ushort              length; /**<  */
    xcb_present_event_t eid; /**<  */
    xcb_window_t        window; /**<  */
    uint                event_mask; /**<  */
} ;

/**
 * @brief xcb_present_query_capabilities_cookie_t
 **/
struct xcb_present_query_capabilities_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_present_query_capabilities. */
const uint XCB_PRESENT_QUERY_CAPABILITIES = 4;

/**
 * @brief xcb_present_query_capabilities_request_t
 **/
struct xcb_present_query_capabilities_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    uint   target; /**<  */
} ;

/**
 * @brief xcb_present_query_capabilities_reply_t
 **/
struct xcb_present_query_capabilities_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   capabilities; /**<  */
} ;

/** Opcode for xcb_present_generic. */
const uint XCB_PRESENT_GENERIC = 0;

/**
 * @brief xcb_present_generic_event_t
 **/
struct xcb_present_generic_event_t {
    ubyte               response_type; /**<  */
    ubyte               extension; /**<  */
    ushort              sequence; /**<  */
    uint                length; /**<  */
    ushort              evtype; /**<  */
    ubyte               pad0[2]; /**<  */
    xcb_present_event_t event; /**<  */
} ;

/** Opcode for xcb_present_configure_notify. */
const uint XCB_PRESENT_CONFIGURE_NOTIFY = 0;

/**
 * @brief xcb_present_configure_notify_event_t
 **/
struct xcb_present_configure_notify_event_t {
    ubyte               response_type; /**<  */
    ubyte               pad0[2]; /**<  */
    ushort              sequence; /**<  */
    xcb_present_event_t event; /**<  */
    xcb_window_t        window; /**<  */
    short               x; /**<  */
    short               y; /**<  */
    ushort              width; /**<  */
    ushort              height; /**<  */
    short               off_x; /**<  */
    short               off_y; /**<  */
    ushort              pixmap_width; /**<  */
    ushort              pixmap_height; /**<  */
    uint                pixmap_flags; /**<  */
} ;

/** Opcode for xcb_present_complete_notify. */
const uint XCB_PRESENT_COMPLETE_NOTIFY = 1;

/**
 * @brief xcb_present_complete_notify_event_t
 **/
struct xcb_present_complete_notify_event_t {
    ubyte               response_type; /**<  */
    ubyte               kind; /**<  */
    ushort              sequence; /**<  */
    ubyte               mode; /**<  */
    xcb_present_event_t event; /**<  */
    xcb_window_t        window; /**<  */
    uint                serial; /**<  */
    ulong               ust; /**<  */
    ulong               msc; /**<  */
} ;

/** Opcode for xcb_present_idle_notify. */
const uint XCB_PRESENT_IDLE_NOTIFY = 2;

/**
 * @brief xcb_present_idle_notify_event_t
 **/
struct xcb_present_idle_notify_event_t {
    ubyte               response_type; /**<  */
    ubyte               pad0[2]; /**<  */
    ushort              sequence; /**<  */
    xcb_present_event_t event; /**<  */
    xcb_window_t        window; /**<  */
    uint                serial; /**<  */
    xcb_pixmap_t        pixmap; /**<  */
    xcb_sync_fence_t    idle_fence; /**<  */
} ;

/** Opcode for xcb_present_redirect_notify. */
const uint XCB_PRESENT_REDIRECT_NOTIFY = 3;

/**
 * @brief xcb_present_redirect_notify_event_t
 **/
struct xcb_present_redirect_notify_event_t {
    ubyte               response_type; /**<  */
    bool                update_window; /**<  */
    ushort              sequence; /**<  */
    ubyte               pad0; /**<  */
    xcb_present_event_t event; /**<  */
    xcb_window_t        event_window; /**<  */
    xcb_window_t        window; /**<  */
    xcb_pixmap_t        pixmap; /**<  */
    uint                serial; /**<  */
    xcb_xfixes_region_t valid_region; /**<  */
    xcb_xfixes_region_t update_region; /**<  */
    xcb_rectangle_t     valid_rect; /**<  */
    xcb_rectangle_t     update_rect; /**<  */
    short               x_off; /**<  */
    short               y_off; /**<  */
    xcb_randr_crtc_t    target_crtc; /**<  */
    xcb_sync_fence_t    wait_fence; /**<  */
    xcb_sync_fence_t    idle_fence; /**<  */
    uint                options; /**<  */
    ubyte               pad1[4]; /**<  */
    ulong               target_msc; /**<  */
    ulong               divisor; /**<  */
    ulong               remainder; /**<  */
} ;


/*****************************************************************************
 **
 ** void xcb_present_notify_next
 ** 
 ** @param xcb_present_notify_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_present_notify_next (xcb_present_notify_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_present_notify_end
 ** 
 ** @param xcb_present_notify_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_present_notify_end (xcb_present_notify_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_present_query_version_cookie_t xcb_present_query_version
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              major_version
 ** @param uint              minor_version
 ** @returns xcb_present_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_present_query_version_cookie_t
xcb_present_query_version (xcb_connection_t *c  /**< */,
                           uint              major_version  /**< */,
                           uint              minor_version  /**< */);


/*****************************************************************************
 **
 ** xcb_present_query_version_cookie_t xcb_present_query_version_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              major_version
 ** @param uint              minor_version
 ** @returns xcb_present_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_present_query_version_cookie_t
xcb_present_query_version_unchecked (xcb_connection_t *c  /**< */,
                                     uint              major_version  /**< */,
                                     uint              minor_version  /**< */);


/*****************************************************************************
 **
 ** xcb_present_query_version_reply_t * xcb_present_query_version_reply
 ** 
 ** @param xcb_connection_t                    *c
 ** @param xcb_present_query_version_cookie_t   cookie
 ** @param xcb_generic_error_t                **e
 ** @returns xcb_present_query_version_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_present_query_version_reply_t *
xcb_present_query_version_reply (xcb_connection_t                    *c  /**< */,
                                 xcb_present_query_version_cookie_t   cookie  /**< */,
                                 xcb_generic_error_t                **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_present_pixmap_checked
 ** 
 ** @param xcb_connection_t               *c
 ** @param xcb_window_t                    window
 ** @param xcb_pixmap_t                    pixmap
 ** @param uint                            serial
 ** @param xcb_xfixes_region_t             valid
 ** @param xcb_xfixes_region_t             update
 ** @param short                           x_off
 ** @param short                           y_off
 ** @param xcb_randr_crtc_t                target_crtc
 ** @param xcb_sync_fence_t                wait_fence
 ** @param xcb_sync_fence_t                idle_fence
 ** @param uint                            options
 ** @param ulong                           target_msc
 ** @param ulong                           divisor
 ** @param ulong                           remainder
 ** @param uint                            notifies_len
 ** @param /+const+/ xcb_present_notify_t *notifies
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_present_pixmap_checked (xcb_connection_t               *c  /**< */,
                            xcb_window_t                    window  /**< */,
                            xcb_pixmap_t                    pixmap  /**< */,
                            uint                            serial  /**< */,
                            xcb_xfixes_region_t             valid  /**< */,
                            xcb_xfixes_region_t             update  /**< */,
                            short                           x_off  /**< */,
                            short                           y_off  /**< */,
                            xcb_randr_crtc_t                target_crtc  /**< */,
                            xcb_sync_fence_t                wait_fence  /**< */,
                            xcb_sync_fence_t                idle_fence  /**< */,
                            uint                            options  /**< */,
                            ulong                           target_msc  /**< */,
                            ulong                           divisor  /**< */,
                            ulong                           remainder  /**< */,
                            uint                            notifies_len  /**< */,
                            /+const+/ xcb_present_notify_t *notifies  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_present_pixmap
 ** 
 ** @param xcb_connection_t               *c
 ** @param xcb_window_t                    window
 ** @param xcb_pixmap_t                    pixmap
 ** @param uint                            serial
 ** @param xcb_xfixes_region_t             valid
 ** @param xcb_xfixes_region_t             update
 ** @param short                           x_off
 ** @param short                           y_off
 ** @param xcb_randr_crtc_t                target_crtc
 ** @param xcb_sync_fence_t                wait_fence
 ** @param xcb_sync_fence_t                idle_fence
 ** @param uint                            options
 ** @param ulong                           target_msc
 ** @param ulong                           divisor
 ** @param ulong                           remainder
 ** @param uint                            notifies_len
 ** @param /+const+/ xcb_present_notify_t *notifies
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_present_pixmap (xcb_connection_t               *c  /**< */,
                    xcb_window_t                    window  /**< */,
                    xcb_pixmap_t                    pixmap  /**< */,
                    uint                            serial  /**< */,
                    xcb_xfixes_region_t             valid  /**< */,
                    xcb_xfixes_region_t             update  /**< */,
                    short                           x_off  /**< */,
                    short                           y_off  /**< */,
                    xcb_randr_crtc_t                target_crtc  /**< */,
                    xcb_sync_fence_t                wait_fence  /**< */,
                    xcb_sync_fence_t                idle_fence  /**< */,
                    uint                            options  /**< */,
                    ulong                           target_msc  /**< */,
                    ulong                           divisor  /**< */,
                    ulong                           remainder  /**< */,
                    uint                            notifies_len  /**< */,
                    /+const+/ xcb_present_notify_t *notifies  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_present_notify_msc_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param uint              serial
 ** @param ulong             target_msc
 ** @param ulong             divisor
 ** @param ulong             remainder
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_present_notify_msc_checked (xcb_connection_t *c  /**< */,
                                xcb_window_t      window  /**< */,
                                uint              serial  /**< */,
                                ulong             target_msc  /**< */,
                                ulong             divisor  /**< */,
                                ulong             remainder  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_present_notify_msc
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param uint              serial
 ** @param ulong             target_msc
 ** @param ulong             divisor
 ** @param ulong             remainder
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_present_notify_msc (xcb_connection_t *c  /**< */,
                        xcb_window_t      window  /**< */,
                        uint              serial  /**< */,
                        ulong             target_msc  /**< */,
                        ulong             divisor  /**< */,
                        ulong             remainder  /**< */);


/*****************************************************************************
 **
 ** void xcb_present_event_next
 ** 
 ** @param xcb_present_event_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_present_event_next (xcb_present_event_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_present_event_end
 ** 
 ** @param xcb_present_event_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_present_event_end (xcb_present_event_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_present_select_input_checked
 ** 
 ** @param xcb_connection_t    *c
 ** @param xcb_present_event_t  eid
 ** @param xcb_window_t         window
 ** @param uint                 event_mask
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_present_select_input_checked (xcb_connection_t    *c  /**< */,
                                  xcb_present_event_t  eid  /**< */,
                                  xcb_window_t         window  /**< */,
                                  uint                 event_mask  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_present_select_input
 ** 
 ** @param xcb_connection_t    *c
 ** @param xcb_present_event_t  eid
 ** @param xcb_window_t         window
 ** @param uint                 event_mask
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_present_select_input (xcb_connection_t    *c  /**< */,
                          xcb_present_event_t  eid  /**< */,
                          xcb_window_t         window  /**< */,
                          uint                 event_mask  /**< */);


/*****************************************************************************
 **
 ** xcb_present_query_capabilities_cookie_t xcb_present_query_capabilities
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              target
 ** @returns xcb_present_query_capabilities_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_present_query_capabilities_cookie_t
xcb_present_query_capabilities (xcb_connection_t *c  /**< */,
                                uint              target  /**< */);


/*****************************************************************************
 **
 ** xcb_present_query_capabilities_cookie_t xcb_present_query_capabilities_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              target
 ** @returns xcb_present_query_capabilities_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_present_query_capabilities_cookie_t
xcb_present_query_capabilities_unchecked (xcb_connection_t *c  /**< */,
                                          uint              target  /**< */);


/*****************************************************************************
 **
 ** xcb_present_query_capabilities_reply_t * xcb_present_query_capabilities_reply
 ** 
 ** @param xcb_connection_t                         *c
 ** @param xcb_present_query_capabilities_cookie_t   cookie
 ** @param xcb_generic_error_t                     **e
 ** @returns xcb_present_query_capabilities_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_present_query_capabilities_reply_t *
xcb_present_query_capabilities_reply (xcb_connection_t                         *c  /**< */,
                                      xcb_present_query_capabilities_cookie_t   cookie  /**< */,
                                      xcb_generic_error_t                     **e  /**< */);



/**
 * @}
 */
