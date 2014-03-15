/*
 * This file generated automatically from dri2.xml by c-client.xsl using XSLT.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_DRI2_API XCB DRI2 API
 * @brief DRI2 XCB Protocol Implementation.
 * @{
 **/


module xcb.dri2;

import xcb.xcb;
import xcb.xproto;

const int XCB_DRI2_MAJOR_VERSION =1;
const int XCB_DRI2_MINOR_VERSION =4;
  
extern(C) extern xcb_extension_t xcb_dri_2_id;

enum :int{
    XCB_DRI_2_ATTACHMENT_BUFFER_FRONT_LEFT = 0,
    XCB_DRI_2_ATTACHMENT_BUFFER_BACK_LEFT = 1,
    XCB_DRI_2_ATTACHMENT_BUFFER_FRONT_RIGHT = 2,
    XCB_DRI_2_ATTACHMENT_BUFFER_BACK_RIGHT = 3,
    XCB_DRI_2_ATTACHMENT_BUFFER_DEPTH = 4,
    XCB_DRI_2_ATTACHMENT_BUFFER_STENCIL = 5,
    XCB_DRI_2_ATTACHMENT_BUFFER_ACCUM = 6,
    XCB_DRI_2_ATTACHMENT_BUFFER_FAKE_FRONT_LEFT = 7,
    XCB_DRI_2_ATTACHMENT_BUFFER_FAKE_FRONT_RIGHT = 8,
    XCB_DRI_2_ATTACHMENT_BUFFER_DEPTH_STENCIL = 9,
    XCB_DRI_2_ATTACHMENT_BUFFER_HIZ = 10
};

enum :int{
    XCB_DRI_2_DRIVER_TYPE_DRI = 0,
    XCB_DRI_2_DRIVER_TYPE_VDPAU = 1
};

enum :int{
    XCB_DRI_2_EVENT_TYPE_EXCHANGE_COMPLETE = 1,
    XCB_DRI_2_EVENT_TYPE_BLIT_COMPLETE = 2,
    XCB_DRI_2_EVENT_TYPE_FLIP_COMPLETE = 3
};

/**
 * @brief xcb_dri_2_dri_2_buffer_t
 **/
struct xcb_dri_2_dri_2_buffer_t {
    uint attachment; /**<  */
    uint name; /**<  */
    uint pitch; /**<  */
    uint cpp; /**<  */
    uint flags; /**<  */
} ;

/**
 * @brief xcb_dri_2_dri_2_buffer_iterator_t
 **/
struct xcb_dri_2_dri_2_buffer_iterator_t {
    xcb_dri_2_dri_2_buffer_t *data; /**<  */
    int                       rem; /**<  */
    int                       index; /**<  */
} ;

/**
 * @brief xcb_dri_2_attach_format_t
 **/
struct xcb_dri_2_attach_format_t {
    uint attachment; /**<  */
    uint format; /**<  */
} ;

/**
 * @brief xcb_dri_2_attach_format_iterator_t
 **/
struct xcb_dri_2_attach_format_iterator_t {
    xcb_dri_2_attach_format_t *data; /**<  */
    int                        rem; /**<  */
    int                        index; /**<  */
} ;

/**
 * @brief xcb_dri_2_query_version_cookie_t
 **/
struct xcb_dri_2_query_version_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_dri_2_query_version. */
const uint XCB_DRI_2_QUERY_VERSION = 0;

/**
 * @brief xcb_dri_2_query_version_request_t
 **/
struct xcb_dri_2_query_version_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    uint   major_version; /**<  */
    uint   minor_version; /**<  */
} ;

/**
 * @brief xcb_dri_2_query_version_reply_t
 **/
struct xcb_dri_2_query_version_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   major_version; /**<  */
    uint   minor_version; /**<  */
} ;

/**
 * @brief xcb_dri_2_connect_cookie_t
 **/
struct xcb_dri_2_connect_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_dri_2_connect. */
const uint XCB_DRI_2_CONNECT = 1;

/**
 * @brief xcb_dri_2_connect_request_t
 **/
struct xcb_dri_2_connect_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
    uint         driver_type; /**<  */
} ;

/**
 * @brief xcb_dri_2_connect_reply_t
 **/
struct xcb_dri_2_connect_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   driver_name_length; /**<  */
    uint   device_name_length; /**<  */
    ubyte  pad1[16]; /**<  */
} ;

/**
 * @brief xcb_dri_2_authenticate_cookie_t
 **/
struct xcb_dri_2_authenticate_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_dri_2_authenticate. */
const uint XCB_DRI_2_AUTHENTICATE = 2;

/**
 * @brief xcb_dri_2_authenticate_request_t
 **/
struct xcb_dri_2_authenticate_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
    uint         magic; /**<  */
} ;

/**
 * @brief xcb_dri_2_authenticate_reply_t
 **/
struct xcb_dri_2_authenticate_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   authenticated; /**<  */
} ;

/** Opcode for xcb_dri_2_create_drawable. */
const uint XCB_DRI_2_CREATE_DRAWABLE = 3;

/**
 * @brief xcb_dri_2_create_drawable_request_t
 **/
struct xcb_dri_2_create_drawable_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          minor_opcode; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
} ;

/** Opcode for xcb_dri_2_destroy_drawable. */
const uint XCB_DRI_2_DESTROY_DRAWABLE = 4;

/**
 * @brief xcb_dri_2_destroy_drawable_request_t
 **/
struct xcb_dri_2_destroy_drawable_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          minor_opcode; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
} ;

/**
 * @brief xcb_dri_2_get_buffers_cookie_t
 **/
struct xcb_dri_2_get_buffers_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_dri_2_get_buffers. */
const uint XCB_DRI_2_GET_BUFFERS = 5;

/**
 * @brief xcb_dri_2_get_buffers_request_t
 **/
struct xcb_dri_2_get_buffers_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          minor_opcode; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
    uint           count; /**<  */
} ;

/**
 * @brief xcb_dri_2_get_buffers_reply_t
 **/
struct xcb_dri_2_get_buffers_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   width; /**<  */
    uint   height; /**<  */
    uint   count; /**<  */
    ubyte  pad1[12]; /**<  */
} ;

/**
 * @brief xcb_dri_2_copy_region_cookie_t
 **/
struct xcb_dri_2_copy_region_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_dri_2_copy_region. */
const uint XCB_DRI_2_COPY_REGION = 6;

/**
 * @brief xcb_dri_2_copy_region_request_t
 **/
struct xcb_dri_2_copy_region_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          minor_opcode; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
    uint           region; /**<  */
    uint           dest; /**<  */
    uint           src; /**<  */
} ;

/**
 * @brief xcb_dri_2_copy_region_reply_t
 **/
struct xcb_dri_2_copy_region_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
} ;

/**
 * @brief xcb_dri_2_get_buffers_with_format_cookie_t
 **/
struct xcb_dri_2_get_buffers_with_format_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_dri_2_get_buffers_with_format. */
const uint XCB_DRI_2_GET_BUFFERS_WITH_FORMAT = 7;

/**
 * @brief xcb_dri_2_get_buffers_with_format_request_t
 **/
struct xcb_dri_2_get_buffers_with_format_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          minor_opcode; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
    uint           count; /**<  */
} ;

/**
 * @brief xcb_dri_2_get_buffers_with_format_reply_t
 **/
struct xcb_dri_2_get_buffers_with_format_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   width; /**<  */
    uint   height; /**<  */
    uint   count; /**<  */
    ubyte  pad1[12]; /**<  */
} ;

/**
 * @brief xcb_dri_2_swap_buffers_cookie_t
 **/
struct xcb_dri_2_swap_buffers_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_dri_2_swap_buffers. */
const uint XCB_DRI_2_SWAP_BUFFERS = 8;

/**
 * @brief xcb_dri_2_swap_buffers_request_t
 **/
struct xcb_dri_2_swap_buffers_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          minor_opcode; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
    uint           target_msc_hi; /**<  */
    uint           target_msc_lo; /**<  */
    uint           divisor_hi; /**<  */
    uint           divisor_lo; /**<  */
    uint           remainder_hi; /**<  */
    uint           remainder_lo; /**<  */
} ;

/**
 * @brief xcb_dri_2_swap_buffers_reply_t
 **/
struct xcb_dri_2_swap_buffers_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   swap_hi; /**<  */
    uint   swap_lo; /**<  */
} ;

/**
 * @brief xcb_dri_2_get_msc_cookie_t
 **/
struct xcb_dri_2_get_msc_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_dri_2_get_msc. */
const uint XCB_DRI_2_GET_MSC = 9;

/**
 * @brief xcb_dri_2_get_msc_request_t
 **/
struct xcb_dri_2_get_msc_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          minor_opcode; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
} ;

/**
 * @brief xcb_dri_2_get_msc_reply_t
 **/
struct xcb_dri_2_get_msc_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   ust_hi; /**<  */
    uint   ust_lo; /**<  */
    uint   msc_hi; /**<  */
    uint   msc_lo; /**<  */
    uint   sbc_hi; /**<  */
    uint   sbc_lo; /**<  */
} ;

/**
 * @brief xcb_dri_2_wait_msc_cookie_t
 **/
struct xcb_dri_2_wait_msc_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_dri_2_wait_msc. */
const uint XCB_DRI_2_WAIT_MSC = 10;

/**
 * @brief xcb_dri_2_wait_msc_request_t
 **/
struct xcb_dri_2_wait_msc_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          minor_opcode; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
    uint           target_msc_hi; /**<  */
    uint           target_msc_lo; /**<  */
    uint           divisor_hi; /**<  */
    uint           divisor_lo; /**<  */
    uint           remainder_hi; /**<  */
    uint           remainder_lo; /**<  */
} ;

/**
 * @brief xcb_dri_2_wait_msc_reply_t
 **/
struct xcb_dri_2_wait_msc_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   ust_hi; /**<  */
    uint   ust_lo; /**<  */
    uint   msc_hi; /**<  */
    uint   msc_lo; /**<  */
    uint   sbc_hi; /**<  */
    uint   sbc_lo; /**<  */
} ;

/**
 * @brief xcb_dri_2_wait_sbc_cookie_t
 **/
struct xcb_dri_2_wait_sbc_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_dri_2_wait_sbc. */
const uint XCB_DRI_2_WAIT_SBC = 11;

/**
 * @brief xcb_dri_2_wait_sbc_request_t
 **/
struct xcb_dri_2_wait_sbc_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          minor_opcode; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
    uint           target_sbc_hi; /**<  */
    uint           target_sbc_lo; /**<  */
} ;

/**
 * @brief xcb_dri_2_wait_sbc_reply_t
 **/
struct xcb_dri_2_wait_sbc_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   ust_hi; /**<  */
    uint   ust_lo; /**<  */
    uint   msc_hi; /**<  */
    uint   msc_lo; /**<  */
    uint   sbc_hi; /**<  */
    uint   sbc_lo; /**<  */
} ;

/** Opcode for xcb_dri_2_swap_interval. */
const uint XCB_DRI_2_SWAP_INTERVAL = 12;

/**
 * @brief xcb_dri_2_swap_interval_request_t
 **/
struct xcb_dri_2_swap_interval_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          minor_opcode; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
    uint           interval; /**<  */
} ;

/**
 * @brief xcb_dri_2_get_param_cookie_t
 **/
struct xcb_dri_2_get_param_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_dri_2_get_param. */
const uint XCB_DRI_2_GET_PARAM = 13;

/**
 * @brief xcb_dri_2_get_param_request_t
 **/
struct xcb_dri_2_get_param_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          minor_opcode; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
    uint           param; /**<  */
} ;

/**
 * @brief xcb_dri_2_get_param_reply_t
 **/
struct xcb_dri_2_get_param_reply_t {
    ubyte  response_type; /**<  */
    bool   is_param_recognized; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   value_hi; /**<  */
    uint   value_lo; /**<  */
} ;

/** Opcode for xcb_dri_2_buffer_swap_complete. */
const uint XCB_DRI_2_BUFFER_SWAP_COMPLETE = 0;

/**
 * @brief xcb_dri_2_buffer_swap_complete_event_t
 **/
struct xcb_dri_2_buffer_swap_complete_event_t {
    ubyte          response_type; /**<  */
    ubyte          pad0; /**<  */
    ushort         sequence; /**<  */
    ushort         event_type; /**<  */
    ubyte          pad1[2]; /**<  */
    xcb_drawable_t drawable; /**<  */
    uint           ust_hi; /**<  */
    uint           ust_lo; /**<  */
    uint           msc_hi; /**<  */
    uint           msc_lo; /**<  */
    uint           sbc; /**<  */
} ;

/** Opcode for xcb_dri_2_invalidate_buffers. */
const uint XCB_DRI_2_INVALIDATE_BUFFERS = 1;

/**
 * @brief xcb_dri_2_invalidate_buffers_event_t
 **/
struct xcb_dri_2_invalidate_buffers_event_t {
    ubyte          response_type; /**<  */
    ubyte          pad0; /**<  */
    ushort         sequence; /**<  */
    xcb_drawable_t drawable; /**<  */
} ;


/*****************************************************************************
 **
 ** void xcb_dri_2_dri_2_buffer_next
 ** 
 ** @param xcb_dri_2_dri_2_buffer_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_dri_2_dri_2_buffer_next (xcb_dri_2_dri_2_buffer_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_dri_2_dri_2_buffer_end
 ** 
 ** @param xcb_dri_2_dri_2_buffer_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_dri_2_dri_2_buffer_end (xcb_dri_2_dri_2_buffer_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_dri_2_attach_format_next
 ** 
 ** @param xcb_dri_2_attach_format_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_dri_2_attach_format_next (xcb_dri_2_attach_format_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_dri_2_attach_format_end
 ** 
 ** @param xcb_dri_2_attach_format_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_dri_2_attach_format_end (xcb_dri_2_attach_format_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_query_version_cookie_t xcb_dri_2_query_version
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              major_version
 ** @param uint              minor_version
 ** @returns xcb_dri_2_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_query_version_cookie_t
xcb_dri_2_query_version (xcb_connection_t *c  /**< */,
                         uint              major_version  /**< */,
                         uint              minor_version  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_query_version_cookie_t xcb_dri_2_query_version_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              major_version
 ** @param uint              minor_version
 ** @returns xcb_dri_2_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_query_version_cookie_t
xcb_dri_2_query_version_unchecked (xcb_connection_t *c  /**< */,
                                   uint              major_version  /**< */,
                                   uint              minor_version  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_query_version_reply_t * xcb_dri_2_query_version_reply
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_dri_2_query_version_cookie_t   cookie
 ** @param xcb_generic_error_t              **e
 ** @returns xcb_dri_2_query_version_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_query_version_reply_t *
xcb_dri_2_query_version_reply (xcb_connection_t                  *c  /**< */,
                               xcb_dri_2_query_version_cookie_t   cookie  /**< */,
                               xcb_generic_error_t              **e  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_connect_cookie_t xcb_dri_2_connect
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param uint              driver_type
 ** @returns xcb_dri_2_connect_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_connect_cookie_t
xcb_dri_2_connect (xcb_connection_t *c  /**< */,
                   xcb_window_t      window  /**< */,
                   uint              driver_type  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_connect_cookie_t xcb_dri_2_connect_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param uint              driver_type
 ** @returns xcb_dri_2_connect_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_connect_cookie_t
xcb_dri_2_connect_unchecked (xcb_connection_t *c  /**< */,
                             xcb_window_t      window  /**< */,
                             uint              driver_type  /**< */);


/*****************************************************************************
 **
 ** char * xcb_dri_2_connect_driver_name
 ** 
 ** @param /+const+/ xcb_dri_2_connect_reply_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
extern(C) char *
xcb_dri_2_connect_driver_name (/+const+/ xcb_dri_2_connect_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_dri_2_connect_driver_name_length
 ** 
 ** @param /+const+/ xcb_dri_2_connect_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_dri_2_connect_driver_name_length (/+const+/ xcb_dri_2_connect_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_dri_2_connect_driver_name_end
 ** 
 ** @param /+const+/ xcb_dri_2_connect_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_dri_2_connect_driver_name_end (/+const+/ xcb_dri_2_connect_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** void * xcb_dri_2_connect_alignment_pad
 ** 
 ** @param /+const+/ xcb_dri_2_connect_reply_t *R
 ** @returns void *
 **
 *****************************************************************************/
 
extern(C) void *
xcb_dri_2_connect_alignment_pad (/+const+/ xcb_dri_2_connect_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_dri_2_connect_alignment_pad_length
 ** 
 ** @param /+const+/ xcb_dri_2_connect_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_dri_2_connect_alignment_pad_length (/+const+/ xcb_dri_2_connect_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_dri_2_connect_alignment_pad_end
 ** 
 ** @param /+const+/ xcb_dri_2_connect_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_dri_2_connect_alignment_pad_end (/+const+/ xcb_dri_2_connect_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** char * xcb_dri_2_connect_device_name
 ** 
 ** @param /+const+/ xcb_dri_2_connect_reply_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
extern(C) char *
xcb_dri_2_connect_device_name (/+const+/ xcb_dri_2_connect_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_dri_2_connect_device_name_length
 ** 
 ** @param /+const+/ xcb_dri_2_connect_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_dri_2_connect_device_name_length (/+const+/ xcb_dri_2_connect_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_dri_2_connect_device_name_end
 ** 
 ** @param /+const+/ xcb_dri_2_connect_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_dri_2_connect_device_name_end (/+const+/ xcb_dri_2_connect_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_connect_reply_t * xcb_dri_2_connect_reply
 ** 
 ** @param xcb_connection_t            *c
 ** @param xcb_dri_2_connect_cookie_t   cookie
 ** @param xcb_generic_error_t        **e
 ** @returns xcb_dri_2_connect_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_connect_reply_t *
xcb_dri_2_connect_reply (xcb_connection_t            *c  /**< */,
                         xcb_dri_2_connect_cookie_t   cookie  /**< */,
                         xcb_generic_error_t        **e  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_authenticate_cookie_t xcb_dri_2_authenticate
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param uint              magic
 ** @returns xcb_dri_2_authenticate_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_authenticate_cookie_t
xcb_dri_2_authenticate (xcb_connection_t *c  /**< */,
                        xcb_window_t      window  /**< */,
                        uint              magic  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_authenticate_cookie_t xcb_dri_2_authenticate_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param uint              magic
 ** @returns xcb_dri_2_authenticate_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_authenticate_cookie_t
xcb_dri_2_authenticate_unchecked (xcb_connection_t *c  /**< */,
                                  xcb_window_t      window  /**< */,
                                  uint              magic  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_authenticate_reply_t * xcb_dri_2_authenticate_reply
 ** 
 ** @param xcb_connection_t                 *c
 ** @param xcb_dri_2_authenticate_cookie_t   cookie
 ** @param xcb_generic_error_t             **e
 ** @returns xcb_dri_2_authenticate_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_authenticate_reply_t *
xcb_dri_2_authenticate_reply (xcb_connection_t                 *c  /**< */,
                              xcb_dri_2_authenticate_cookie_t   cookie  /**< */,
                              xcb_generic_error_t             **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_dri_2_create_drawable_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_dri_2_create_drawable_checked (xcb_connection_t *c  /**< */,
                                   xcb_drawable_t    drawable  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_dri_2_create_drawable
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_dri_2_create_drawable (xcb_connection_t *c  /**< */,
                           xcb_drawable_t    drawable  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_dri_2_destroy_drawable_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_dri_2_destroy_drawable_checked (xcb_connection_t *c  /**< */,
                                    xcb_drawable_t    drawable  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_dri_2_destroy_drawable
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_dri_2_destroy_drawable (xcb_connection_t *c  /**< */,
                            xcb_drawable_t    drawable  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_get_buffers_cookie_t xcb_dri_2_get_buffers
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param uint              count
 ** @param uint              attachments_len
 ** @param /+const+/ uint   *attachments
 ** @returns xcb_dri_2_get_buffers_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_get_buffers_cookie_t
xcb_dri_2_get_buffers (xcb_connection_t *c  /**< */,
                       xcb_drawable_t    drawable  /**< */,
                       uint              count  /**< */,
                       uint              attachments_len  /**< */,
                       /+const+/ uint   *attachments  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_get_buffers_cookie_t xcb_dri_2_get_buffers_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param uint              count
 ** @param uint              attachments_len
 ** @param /+const+/ uint   *attachments
 ** @returns xcb_dri_2_get_buffers_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_get_buffers_cookie_t
xcb_dri_2_get_buffers_unchecked (xcb_connection_t *c  /**< */,
                                 xcb_drawable_t    drawable  /**< */,
                                 uint              count  /**< */,
                                 uint              attachments_len  /**< */,
                                 /+const+/ uint   *attachments  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_dri_2_buffer_t * xcb_dri_2_get_buffers_buffers
 ** 
 ** @param /+const+/ xcb_dri_2_get_buffers_reply_t *R
 ** @returns xcb_dri_2_dri_2_buffer_t *
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_dri_2_buffer_t *
xcb_dri_2_get_buffers_buffers (/+const+/ xcb_dri_2_get_buffers_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_dri_2_get_buffers_buffers_length
 ** 
 ** @param /+const+/ xcb_dri_2_get_buffers_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_dri_2_get_buffers_buffers_length (/+const+/ xcb_dri_2_get_buffers_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_dri_2_buffer_iterator_t xcb_dri_2_get_buffers_buffers_iterator
 ** 
 ** @param /+const+/ xcb_dri_2_get_buffers_reply_t *R
 ** @returns xcb_dri_2_dri_2_buffer_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_dri_2_buffer_iterator_t
xcb_dri_2_get_buffers_buffers_iterator (/+const+/ xcb_dri_2_get_buffers_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_get_buffers_reply_t * xcb_dri_2_get_buffers_reply
 ** 
 ** @param xcb_connection_t                *c
 ** @param xcb_dri_2_get_buffers_cookie_t   cookie
 ** @param xcb_generic_error_t            **e
 ** @returns xcb_dri_2_get_buffers_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_get_buffers_reply_t *
xcb_dri_2_get_buffers_reply (xcb_connection_t                *c  /**< */,
                             xcb_dri_2_get_buffers_cookie_t   cookie  /**< */,
                             xcb_generic_error_t            **e  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_copy_region_cookie_t xcb_dri_2_copy_region
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param uint              region
 ** @param uint              dest
 ** @param uint              src
 ** @returns xcb_dri_2_copy_region_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_copy_region_cookie_t
xcb_dri_2_copy_region (xcb_connection_t *c  /**< */,
                       xcb_drawable_t    drawable  /**< */,
                       uint              region  /**< */,
                       uint              dest  /**< */,
                       uint              src  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_copy_region_cookie_t xcb_dri_2_copy_region_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param uint              region
 ** @param uint              dest
 ** @param uint              src
 ** @returns xcb_dri_2_copy_region_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_copy_region_cookie_t
xcb_dri_2_copy_region_unchecked (xcb_connection_t *c  /**< */,
                                 xcb_drawable_t    drawable  /**< */,
                                 uint              region  /**< */,
                                 uint              dest  /**< */,
                                 uint              src  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_copy_region_reply_t * xcb_dri_2_copy_region_reply
 ** 
 ** @param xcb_connection_t                *c
 ** @param xcb_dri_2_copy_region_cookie_t   cookie
 ** @param xcb_generic_error_t            **e
 ** @returns xcb_dri_2_copy_region_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_copy_region_reply_t *
xcb_dri_2_copy_region_reply (xcb_connection_t                *c  /**< */,
                             xcb_dri_2_copy_region_cookie_t   cookie  /**< */,
                             xcb_generic_error_t            **e  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_get_buffers_with_format_cookie_t xcb_dri_2_get_buffers_with_format
 ** 
 ** @param xcb_connection_t                    *c
 ** @param xcb_drawable_t                       drawable
 ** @param uint                                 count
 ** @param uint                                 attachments_len
 ** @param /+const+/ xcb_dri_2_attach_format_t *attachments
 ** @returns xcb_dri_2_get_buffers_with_format_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_get_buffers_with_format_cookie_t
xcb_dri_2_get_buffers_with_format (xcb_connection_t                    *c  /**< */,
                                   xcb_drawable_t                       drawable  /**< */,
                                   uint                                 count  /**< */,
                                   uint                                 attachments_len  /**< */,
                                   /+const+/ xcb_dri_2_attach_format_t *attachments  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_get_buffers_with_format_cookie_t xcb_dri_2_get_buffers_with_format_unchecked
 ** 
 ** @param xcb_connection_t                    *c
 ** @param xcb_drawable_t                       drawable
 ** @param uint                                 count
 ** @param uint                                 attachments_len
 ** @param /+const+/ xcb_dri_2_attach_format_t *attachments
 ** @returns xcb_dri_2_get_buffers_with_format_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_get_buffers_with_format_cookie_t
xcb_dri_2_get_buffers_with_format_unchecked (xcb_connection_t                    *c  /**< */,
                                             xcb_drawable_t                       drawable  /**< */,
                                             uint                                 count  /**< */,
                                             uint                                 attachments_len  /**< */,
                                             /+const+/ xcb_dri_2_attach_format_t *attachments  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_dri_2_buffer_t * xcb_dri_2_get_buffers_with_format_buffers
 ** 
 ** @param /+const+/ xcb_dri_2_get_buffers_with_format_reply_t *R
 ** @returns xcb_dri_2_dri_2_buffer_t *
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_dri_2_buffer_t *
xcb_dri_2_get_buffers_with_format_buffers (/+const+/ xcb_dri_2_get_buffers_with_format_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_dri_2_get_buffers_with_format_buffers_length
 ** 
 ** @param /+const+/ xcb_dri_2_get_buffers_with_format_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_dri_2_get_buffers_with_format_buffers_length (/+const+/ xcb_dri_2_get_buffers_with_format_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_dri_2_buffer_iterator_t xcb_dri_2_get_buffers_with_format_buffers_iterator
 ** 
 ** @param /+const+/ xcb_dri_2_get_buffers_with_format_reply_t *R
 ** @returns xcb_dri_2_dri_2_buffer_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_dri_2_buffer_iterator_t
xcb_dri_2_get_buffers_with_format_buffers_iterator (/+const+/ xcb_dri_2_get_buffers_with_format_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_get_buffers_with_format_reply_t * xcb_dri_2_get_buffers_with_format_reply
 ** 
 ** @param xcb_connection_t                            *c
 ** @param xcb_dri_2_get_buffers_with_format_cookie_t   cookie
 ** @param xcb_generic_error_t                        **e
 ** @returns xcb_dri_2_get_buffers_with_format_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_get_buffers_with_format_reply_t *
xcb_dri_2_get_buffers_with_format_reply (xcb_connection_t                            *c  /**< */,
                                         xcb_dri_2_get_buffers_with_format_cookie_t   cookie  /**< */,
                                         xcb_generic_error_t                        **e  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_swap_buffers_cookie_t xcb_dri_2_swap_buffers
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param uint              target_msc_hi
 ** @param uint              target_msc_lo
 ** @param uint              divisor_hi
 ** @param uint              divisor_lo
 ** @param uint              remainder_hi
 ** @param uint              remainder_lo
 ** @returns xcb_dri_2_swap_buffers_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_swap_buffers_cookie_t
xcb_dri_2_swap_buffers (xcb_connection_t *c  /**< */,
                        xcb_drawable_t    drawable  /**< */,
                        uint              target_msc_hi  /**< */,
                        uint              target_msc_lo  /**< */,
                        uint              divisor_hi  /**< */,
                        uint              divisor_lo  /**< */,
                        uint              remainder_hi  /**< */,
                        uint              remainder_lo  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_swap_buffers_cookie_t xcb_dri_2_swap_buffers_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param uint              target_msc_hi
 ** @param uint              target_msc_lo
 ** @param uint              divisor_hi
 ** @param uint              divisor_lo
 ** @param uint              remainder_hi
 ** @param uint              remainder_lo
 ** @returns xcb_dri_2_swap_buffers_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_swap_buffers_cookie_t
xcb_dri_2_swap_buffers_unchecked (xcb_connection_t *c  /**< */,
                                  xcb_drawable_t    drawable  /**< */,
                                  uint              target_msc_hi  /**< */,
                                  uint              target_msc_lo  /**< */,
                                  uint              divisor_hi  /**< */,
                                  uint              divisor_lo  /**< */,
                                  uint              remainder_hi  /**< */,
                                  uint              remainder_lo  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_swap_buffers_reply_t * xcb_dri_2_swap_buffers_reply
 ** 
 ** @param xcb_connection_t                 *c
 ** @param xcb_dri_2_swap_buffers_cookie_t   cookie
 ** @param xcb_generic_error_t             **e
 ** @returns xcb_dri_2_swap_buffers_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_swap_buffers_reply_t *
xcb_dri_2_swap_buffers_reply (xcb_connection_t                 *c  /**< */,
                              xcb_dri_2_swap_buffers_cookie_t   cookie  /**< */,
                              xcb_generic_error_t             **e  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_get_msc_cookie_t xcb_dri_2_get_msc
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @returns xcb_dri_2_get_msc_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_get_msc_cookie_t
xcb_dri_2_get_msc (xcb_connection_t *c  /**< */,
                   xcb_drawable_t    drawable  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_get_msc_cookie_t xcb_dri_2_get_msc_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @returns xcb_dri_2_get_msc_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_get_msc_cookie_t
xcb_dri_2_get_msc_unchecked (xcb_connection_t *c  /**< */,
                             xcb_drawable_t    drawable  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_get_msc_reply_t * xcb_dri_2_get_msc_reply
 ** 
 ** @param xcb_connection_t            *c
 ** @param xcb_dri_2_get_msc_cookie_t   cookie
 ** @param xcb_generic_error_t        **e
 ** @returns xcb_dri_2_get_msc_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_get_msc_reply_t *
xcb_dri_2_get_msc_reply (xcb_connection_t            *c  /**< */,
                         xcb_dri_2_get_msc_cookie_t   cookie  /**< */,
                         xcb_generic_error_t        **e  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_wait_msc_cookie_t xcb_dri_2_wait_msc
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param uint              target_msc_hi
 ** @param uint              target_msc_lo
 ** @param uint              divisor_hi
 ** @param uint              divisor_lo
 ** @param uint              remainder_hi
 ** @param uint              remainder_lo
 ** @returns xcb_dri_2_wait_msc_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_wait_msc_cookie_t
xcb_dri_2_wait_msc (xcb_connection_t *c  /**< */,
                    xcb_drawable_t    drawable  /**< */,
                    uint              target_msc_hi  /**< */,
                    uint              target_msc_lo  /**< */,
                    uint              divisor_hi  /**< */,
                    uint              divisor_lo  /**< */,
                    uint              remainder_hi  /**< */,
                    uint              remainder_lo  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_wait_msc_cookie_t xcb_dri_2_wait_msc_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param uint              target_msc_hi
 ** @param uint              target_msc_lo
 ** @param uint              divisor_hi
 ** @param uint              divisor_lo
 ** @param uint              remainder_hi
 ** @param uint              remainder_lo
 ** @returns xcb_dri_2_wait_msc_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_wait_msc_cookie_t
xcb_dri_2_wait_msc_unchecked (xcb_connection_t *c  /**< */,
                              xcb_drawable_t    drawable  /**< */,
                              uint              target_msc_hi  /**< */,
                              uint              target_msc_lo  /**< */,
                              uint              divisor_hi  /**< */,
                              uint              divisor_lo  /**< */,
                              uint              remainder_hi  /**< */,
                              uint              remainder_lo  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_wait_msc_reply_t * xcb_dri_2_wait_msc_reply
 ** 
 ** @param xcb_connection_t             *c
 ** @param xcb_dri_2_wait_msc_cookie_t   cookie
 ** @param xcb_generic_error_t         **e
 ** @returns xcb_dri_2_wait_msc_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_wait_msc_reply_t *
xcb_dri_2_wait_msc_reply (xcb_connection_t             *c  /**< */,
                          xcb_dri_2_wait_msc_cookie_t   cookie  /**< */,
                          xcb_generic_error_t         **e  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_wait_sbc_cookie_t xcb_dri_2_wait_sbc
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param uint              target_sbc_hi
 ** @param uint              target_sbc_lo
 ** @returns xcb_dri_2_wait_sbc_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_wait_sbc_cookie_t
xcb_dri_2_wait_sbc (xcb_connection_t *c  /**< */,
                    xcb_drawable_t    drawable  /**< */,
                    uint              target_sbc_hi  /**< */,
                    uint              target_sbc_lo  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_wait_sbc_cookie_t xcb_dri_2_wait_sbc_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param uint              target_sbc_hi
 ** @param uint              target_sbc_lo
 ** @returns xcb_dri_2_wait_sbc_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_wait_sbc_cookie_t
xcb_dri_2_wait_sbc_unchecked (xcb_connection_t *c  /**< */,
                              xcb_drawable_t    drawable  /**< */,
                              uint              target_sbc_hi  /**< */,
                              uint              target_sbc_lo  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_wait_sbc_reply_t * xcb_dri_2_wait_sbc_reply
 ** 
 ** @param xcb_connection_t             *c
 ** @param xcb_dri_2_wait_sbc_cookie_t   cookie
 ** @param xcb_generic_error_t         **e
 ** @returns xcb_dri_2_wait_sbc_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_wait_sbc_reply_t *
xcb_dri_2_wait_sbc_reply (xcb_connection_t             *c  /**< */,
                          xcb_dri_2_wait_sbc_cookie_t   cookie  /**< */,
                          xcb_generic_error_t         **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_dri_2_swap_interval_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param uint              interval
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_dri_2_swap_interval_checked (xcb_connection_t *c  /**< */,
                                 xcb_drawable_t    drawable  /**< */,
                                 uint              interval  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_dri_2_swap_interval
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param uint              interval
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_dri_2_swap_interval (xcb_connection_t *c  /**< */,
                         xcb_drawable_t    drawable  /**< */,
                         uint              interval  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_get_param_cookie_t xcb_dri_2_get_param
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param uint              param
 ** @returns xcb_dri_2_get_param_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_get_param_cookie_t
xcb_dri_2_get_param (xcb_connection_t *c  /**< */,
                     xcb_drawable_t    drawable  /**< */,
                     uint              param  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_get_param_cookie_t xcb_dri_2_get_param_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param uint              param
 ** @returns xcb_dri_2_get_param_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_get_param_cookie_t
xcb_dri_2_get_param_unchecked (xcb_connection_t *c  /**< */,
                               xcb_drawable_t    drawable  /**< */,
                               uint              param  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_2_get_param_reply_t * xcb_dri_2_get_param_reply
 ** 
 ** @param xcb_connection_t              *c
 ** @param xcb_dri_2_get_param_cookie_t   cookie
 ** @param xcb_generic_error_t          **e
 ** @returns xcb_dri_2_get_param_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_dri_2_get_param_reply_t *
xcb_dri_2_get_param_reply (xcb_connection_t              *c  /**< */,
                           xcb_dri_2_get_param_cookie_t   cookie  /**< */,
                           xcb_generic_error_t          **e  /**< */);



/**
 * @}
 */
