/*
 * This file generated automatically from ge.xml by c-client.xsl using XSLT.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_GenericEvent_API XCB GenericEvent API
 * @brief GenericEvent XCB Protocol Implementation.
 * @{
 **/


module xcb.ge;

import xcb.xcb;

const int XCB_GENERICEVENT_MAJOR_VERSION =1;
const int XCB_GENERICEVENT_MINOR_VERSION =0;
  
extern(C) extern xcb_extension_t xcb_generic_event_id;

/**
 * @brief xcb_generic_event_query_version_cookie_t
 **/
struct xcb_generic_event_query_version_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_generic_event_query_version. */
const uint XCB_GENERIC_EVENT_QUERY_VERSION = 0;

/**
 * @brief xcb_generic_event_query_version_request_t
 **/
struct xcb_generic_event_query_version_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort client_major_version; /**<  */
    ushort client_minor_version; /**<  */
} ;

/**
 * @brief xcb_generic_event_query_version_reply_t
 **/
struct xcb_generic_event_query_version_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort major_version; /**<  */
    ushort minor_version; /**<  */
    ubyte  pad1[20]; /**<  */
} ;


/*****************************************************************************
 **
 ** xcb_generic_event_query_version_cookie_t xcb_generic_event_query_version
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            client_major_version
 ** @param ushort            client_minor_version
 ** @returns xcb_generic_event_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_event_query_version_cookie_t
xcb_generic_event_query_version (xcb_connection_t *c  /**< */,
                                 ushort            client_major_version  /**< */,
                                 ushort            client_minor_version  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_event_query_version_cookie_t xcb_generic_event_query_version_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            client_major_version
 ** @param ushort            client_minor_version
 ** @returns xcb_generic_event_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_event_query_version_cookie_t
xcb_generic_event_query_version_unchecked (xcb_connection_t *c  /**< */,
                                           ushort            client_major_version  /**< */,
                                           ushort            client_minor_version  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_event_query_version_reply_t * xcb_generic_event_query_version_reply
 ** 
 ** @param xcb_connection_t                          *c
 ** @param xcb_generic_event_query_version_cookie_t   cookie
 ** @param xcb_generic_error_t                      **e
 ** @returns xcb_generic_event_query_version_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_generic_event_query_version_reply_t *
xcb_generic_event_query_version_reply (xcb_connection_t                          *c  /**< */,
                                       xcb_generic_event_query_version_cookie_t   cookie  /**< */,
                                       xcb_generic_error_t                      **e  /**< */);



/**
 * @}
 */
