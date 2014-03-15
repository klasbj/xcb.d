/*
 * This file generated automatically from dri3.xml by c-client.xsl using XSLT.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_DRI3_API XCB DRI3 API
 * @brief DRI3 XCB Protocol Implementation.
 * @{
 **/


module xcb.dri3;

import xcb.xcb;
import xcb.xproto;

const int XCB_DRI3_MAJOR_VERSION =1;
const int XCB_DRI3_MINOR_VERSION =0;
  
extern(C) extern xcb_extension_t xcb_dri_3_id;

/**
 * @brief xcb_dri_3_query_version_cookie_t
 **/
struct xcb_dri_3_query_version_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_dri_3_query_version. */
const uint XCB_DRI_3_QUERY_VERSION = 0;

/**
 * @brief xcb_dri_3_query_version_request_t
 **/
struct xcb_dri_3_query_version_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    uint   major_version; /**<  */
    uint   minor_version; /**<  */
} ;

/**
 * @brief xcb_dri_3_query_version_reply_t
 **/
struct xcb_dri_3_query_version_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   major_version; /**<  */
    uint   minor_version; /**<  */
} ;

/**
 * @brief xcb_dri_3_open_cookie_t
 **/
struct xcb_dri_3_open_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_dri_3_open. */
const uint XCB_DRI_3_OPEN = 1;

/**
 * @brief xcb_dri_3_open_request_t
 **/
struct xcb_dri_3_open_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          minor_opcode; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
    uint           provider; /**<  */
} ;

/**
 * @brief xcb_dri_3_open_reply_t
 **/
struct xcb_dri_3_open_reply_t {
    ubyte  response_type; /**<  */
    ubyte  nfd; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  pad0[24]; /**<  */
} ;

/** Opcode for xcb_dri_3_pixmap_from_buffer. */
const uint XCB_DRI_3_PIXMAP_FROM_BUFFER = 2;

/**
 * @brief xcb_dri_3_pixmap_from_buffer_request_t
 **/
struct xcb_dri_3_pixmap_from_buffer_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          minor_opcode; /**<  */
    ushort         length; /**<  */
    xcb_pixmap_t   pixmap; /**<  */
    xcb_drawable_t drawable; /**<  */
    uint           size; /**<  */
    ushort         width; /**<  */
    ushort         height; /**<  */
    ushort         stride; /**<  */
    ubyte          depth; /**<  */
    ubyte          bpp; /**<  */
} ;

/**
 * @brief xcb_dri_3_buffer_from_pixmap_cookie_t
 **/
struct xcb_dri_3_buffer_from_pixmap_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_dri_3_buffer_from_pixmap. */
const uint XCB_DRI_3_BUFFER_FROM_PIXMAP = 3;

/**
 * @brief xcb_dri_3_buffer_from_pixmap_request_t
 **/
struct xcb_dri_3_buffer_from_pixmap_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_pixmap_t pixmap; /**<  */
} ;

/**
 * @brief xcb_dri_3_buffer_from_pixmap_reply_t
 **/
struct xcb_dri_3_buffer_from_pixmap_reply_t {
    ubyte  response_type; /**<  */
    ubyte  nfd; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   size; /**<  */
    ushort width; /**<  */
    ushort height; /**<  */
    ushort stride; /**<  */
    ubyte  depth; /**<  */
    ubyte  bpp; /**<  */
    ubyte  pad0[12]; /**<  */
} ;

/** Opcode for xcb_dri_3_fence_from_fd. */
const uint XCB_DRI_3_FENCE_FROM_FD = 4;

/**
 * @brief xcb_dri_3_fence_from_fd_request_t
 **/
struct xcb_dri_3_fence_from_fd_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          minor_opcode; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
    uint           fence; /**<  */
    bool           initially_triggered; /**<  */
    ubyte          pad0[3]; /**<  */
} ;

/**
 * @brief xcb_dri_3_fd_from_fence_cookie_t
 **/
struct xcb_dri_3_fd_from_fence_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_dri_3_fd_from_fence. */
const uint XCB_DRI_3_FD_FROM_FENCE = 5;

/**
 * @brief xcb_dri_3_fd_from_fence_request_t
 **/
struct xcb_dri_3_fd_from_fence_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          minor_opcode; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
    uint           fence; /**<  */
} ;

/**
 * @brief xcb_dri_3_fd_from_fence_reply_t
 **/
struct xcb_dri_3_fd_from_fence_reply_t {
    ubyte  response_type; /**<  */
    ubyte  nfd; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  pad0[24]; /**<  */
} ;


/*****************************************************************************
 **
 ** xcb_dri_3_query_version_cookie_t xcb_dri_3_query_version
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              major_version
 ** @param uint              minor_version
 ** @returns xcb_dri_3_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_3_query_version_cookie_t
xcb_dri_3_query_version (xcb_connection_t *c  /**< */,
                         uint              major_version  /**< */,
                         uint              minor_version  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_3_query_version_cookie_t xcb_dri_3_query_version_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              major_version
 ** @param uint              minor_version
 ** @returns xcb_dri_3_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_3_query_version_cookie_t
xcb_dri_3_query_version_unchecked (xcb_connection_t *c  /**< */,
                                   uint              major_version  /**< */,
                                   uint              minor_version  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_3_query_version_reply_t * xcb_dri_3_query_version_reply
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_dri_3_query_version_cookie_t   cookie
 ** @param xcb_generic_error_t              **e
 ** @returns xcb_dri_3_query_version_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_dri_3_query_version_reply_t *
xcb_dri_3_query_version_reply (xcb_connection_t                  *c  /**< */,
                               xcb_dri_3_query_version_cookie_t   cookie  /**< */,
                               xcb_generic_error_t              **e  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_3_open_cookie_t xcb_dri_3_open
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param uint              provider
 ** @returns xcb_dri_3_open_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_3_open_cookie_t
xcb_dri_3_open (xcb_connection_t *c  /**< */,
                xcb_drawable_t    drawable  /**< */,
                uint              provider  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_3_open_cookie_t xcb_dri_3_open_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param uint              provider
 ** @returns xcb_dri_3_open_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_3_open_cookie_t
xcb_dri_3_open_unchecked (xcb_connection_t *c  /**< */,
                          xcb_drawable_t    drawable  /**< */,
                          uint              provider  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_3_open_reply_t * xcb_dri_3_open_reply
 ** 
 ** @param xcb_connection_t         *c
 ** @param xcb_dri_3_open_cookie_t   cookie
 ** @param xcb_generic_error_t     **e
 ** @returns xcb_dri_3_open_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_dri_3_open_reply_t *
xcb_dri_3_open_reply (xcb_connection_t         *c  /**< */,
                      xcb_dri_3_open_cookie_t   cookie  /**< */,
                      xcb_generic_error_t     **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_dri_3_pixmap_from_buffer_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_pixmap_t      pixmap
 ** @param xcb_drawable_t    drawable
 ** @param uint              size
 ** @param ushort            width
 ** @param ushort            height
 ** @param ushort            stride
 ** @param ubyte             depth
 ** @param ubyte             bpp
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_dri_3_pixmap_from_buffer_checked (xcb_connection_t *c  /**< */,
                                      xcb_pixmap_t      pixmap  /**< */,
                                      xcb_drawable_t    drawable  /**< */,
                                      uint              size  /**< */,
                                      ushort            width  /**< */,
                                      ushort            height  /**< */,
                                      ushort            stride  /**< */,
                                      ubyte             depth  /**< */,
                                      ubyte             bpp  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_dri_3_pixmap_from_buffer
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_pixmap_t      pixmap
 ** @param xcb_drawable_t    drawable
 ** @param uint              size
 ** @param ushort            width
 ** @param ushort            height
 ** @param ushort            stride
 ** @param ubyte             depth
 ** @param ubyte             bpp
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_dri_3_pixmap_from_buffer (xcb_connection_t *c  /**< */,
                              xcb_pixmap_t      pixmap  /**< */,
                              xcb_drawable_t    drawable  /**< */,
                              uint              size  /**< */,
                              ushort            width  /**< */,
                              ushort            height  /**< */,
                              ushort            stride  /**< */,
                              ubyte             depth  /**< */,
                              ubyte             bpp  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_3_buffer_from_pixmap_cookie_t xcb_dri_3_buffer_from_pixmap
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_pixmap_t      pixmap
 ** @returns xcb_dri_3_buffer_from_pixmap_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_3_buffer_from_pixmap_cookie_t
xcb_dri_3_buffer_from_pixmap (xcb_connection_t *c  /**< */,
                              xcb_pixmap_t      pixmap  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_3_buffer_from_pixmap_cookie_t xcb_dri_3_buffer_from_pixmap_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_pixmap_t      pixmap
 ** @returns xcb_dri_3_buffer_from_pixmap_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_3_buffer_from_pixmap_cookie_t
xcb_dri_3_buffer_from_pixmap_unchecked (xcb_connection_t *c  /**< */,
                                        xcb_pixmap_t      pixmap  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_3_buffer_from_pixmap_reply_t * xcb_dri_3_buffer_from_pixmap_reply
 ** 
 ** @param xcb_connection_t                       *c
 ** @param xcb_dri_3_buffer_from_pixmap_cookie_t   cookie
 ** @param xcb_generic_error_t                   **e
 ** @returns xcb_dri_3_buffer_from_pixmap_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_dri_3_buffer_from_pixmap_reply_t *
xcb_dri_3_buffer_from_pixmap_reply (xcb_connection_t                       *c  /**< */,
                                    xcb_dri_3_buffer_from_pixmap_cookie_t   cookie  /**< */,
                                    xcb_generic_error_t                   **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_dri_3_fence_from_fd_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param uint              fence
 ** @param bool              initially_triggered
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_dri_3_fence_from_fd_checked (xcb_connection_t *c  /**< */,
                                 xcb_drawable_t    drawable  /**< */,
                                 uint              fence  /**< */,
                                 bool              initially_triggered  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_dri_3_fence_from_fd
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param uint              fence
 ** @param bool              initially_triggered
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_dri_3_fence_from_fd (xcb_connection_t *c  /**< */,
                         xcb_drawable_t    drawable  /**< */,
                         uint              fence  /**< */,
                         bool              initially_triggered  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_3_fd_from_fence_cookie_t xcb_dri_3_fd_from_fence
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param uint              fence
 ** @returns xcb_dri_3_fd_from_fence_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_3_fd_from_fence_cookie_t
xcb_dri_3_fd_from_fence (xcb_connection_t *c  /**< */,
                         xcb_drawable_t    drawable  /**< */,
                         uint              fence  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_3_fd_from_fence_cookie_t xcb_dri_3_fd_from_fence_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param uint              fence
 ** @returns xcb_dri_3_fd_from_fence_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_dri_3_fd_from_fence_cookie_t
xcb_dri_3_fd_from_fence_unchecked (xcb_connection_t *c  /**< */,
                                   xcb_drawable_t    drawable  /**< */,
                                   uint              fence  /**< */);


/*****************************************************************************
 **
 ** xcb_dri_3_fd_from_fence_reply_t * xcb_dri_3_fd_from_fence_reply
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_dri_3_fd_from_fence_cookie_t   cookie
 ** @param xcb_generic_error_t              **e
 ** @returns xcb_dri_3_fd_from_fence_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_dri_3_fd_from_fence_reply_t *
xcb_dri_3_fd_from_fence_reply (xcb_connection_t                  *c  /**< */,
                               xcb_dri_3_fd_from_fence_cookie_t   cookie  /**< */,
                               xcb_generic_error_t              **e  /**< */);



/**
 * @}
 */
