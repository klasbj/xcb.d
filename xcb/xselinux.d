/*
 * This file generated automatically from xselinux.xml by c-client.xsl using XSLT.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_SELinux_API XCB SELinux API
 * @brief SELinux XCB Protocol Implementation.
 * @{
 **/


module xcb.xselinux;

import xcb.xcb;
import xcb.xproto;

const int XCB_SELINUX_MAJOR_VERSION =1;
const int XCB_SELINUX_MINOR_VERSION =0;
  
extern(C) extern xcb_extension_t xcb_se_linux_id;

/**
 * @brief xcb_se_linux_query_version_cookie_t
 **/
struct xcb_se_linux_query_version_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_se_linux_query_version. */
const uint XCB_SE_LINUX_QUERY_VERSION = 0;

/**
 * @brief xcb_se_linux_query_version_request_t
 **/
struct xcb_se_linux_query_version_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  client_major; /**<  */
    ubyte  client_minor; /**<  */
} ;

/**
 * @brief xcb_se_linux_query_version_reply_t
 **/
struct xcb_se_linux_query_version_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort server_major; /**<  */
    ushort server_minor; /**<  */
} ;

/** Opcode for xcb_se_linux_set_device_create_context. */
const uint XCB_SE_LINUX_SET_DEVICE_CREATE_CONTEXT = 1;

/**
 * @brief xcb_se_linux_set_device_create_context_request_t
 **/
struct xcb_se_linux_set_device_create_context_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    uint   context_len; /**<  */
} ;

/**
 * @brief xcb_se_linux_get_device_create_context_cookie_t
 **/
struct xcb_se_linux_get_device_create_context_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_se_linux_get_device_create_context. */
const uint XCB_SE_LINUX_GET_DEVICE_CREATE_CONTEXT = 2;

/**
 * @brief xcb_se_linux_get_device_create_context_request_t
 **/
struct xcb_se_linux_get_device_create_context_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
} ;

/**
 * @brief xcb_se_linux_get_device_create_context_reply_t
 **/
struct xcb_se_linux_get_device_create_context_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   context_len; /**<  */
    ubyte  pad1[20]; /**<  */
} ;

/** Opcode for xcb_se_linux_set_device_context. */
const uint XCB_SE_LINUX_SET_DEVICE_CONTEXT = 3;

/**
 * @brief xcb_se_linux_set_device_context_request_t
 **/
struct xcb_se_linux_set_device_context_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    uint   device; /**<  */
    uint   context_len; /**<  */
} ;

/**
 * @brief xcb_se_linux_get_device_context_cookie_t
 **/
struct xcb_se_linux_get_device_context_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_se_linux_get_device_context. */
const uint XCB_SE_LINUX_GET_DEVICE_CONTEXT = 4;

/**
 * @brief xcb_se_linux_get_device_context_request_t
 **/
struct xcb_se_linux_get_device_context_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    uint   device; /**<  */
} ;

/**
 * @brief xcb_se_linux_get_device_context_reply_t
 **/
struct xcb_se_linux_get_device_context_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   context_len; /**<  */
    ubyte  pad1[20]; /**<  */
} ;

/** Opcode for xcb_se_linux_set_window_create_context. */
const uint XCB_SE_LINUX_SET_WINDOW_CREATE_CONTEXT = 5;

/**
 * @brief xcb_se_linux_set_window_create_context_request_t
 **/
struct xcb_se_linux_set_window_create_context_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    uint   context_len; /**<  */
} ;

/**
 * @brief xcb_se_linux_get_window_create_context_cookie_t
 **/
struct xcb_se_linux_get_window_create_context_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_se_linux_get_window_create_context. */
const uint XCB_SE_LINUX_GET_WINDOW_CREATE_CONTEXT = 6;

/**
 * @brief xcb_se_linux_get_window_create_context_request_t
 **/
struct xcb_se_linux_get_window_create_context_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
} ;

/**
 * @brief xcb_se_linux_get_window_create_context_reply_t
 **/
struct xcb_se_linux_get_window_create_context_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   context_len; /**<  */
    ubyte  pad1[20]; /**<  */
} ;

/**
 * @brief xcb_se_linux_get_window_context_cookie_t
 **/
struct xcb_se_linux_get_window_context_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_se_linux_get_window_context. */
const uint XCB_SE_LINUX_GET_WINDOW_CONTEXT = 7;

/**
 * @brief xcb_se_linux_get_window_context_request_t
 **/
struct xcb_se_linux_get_window_context_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
} ;

/**
 * @brief xcb_se_linux_get_window_context_reply_t
 **/
struct xcb_se_linux_get_window_context_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   context_len; /**<  */
    ubyte  pad1[20]; /**<  */
} ;

/**
 * @brief xcb_se_linux_list_item_t
 **/
struct xcb_se_linux_list_item_t {
    xcb_atom_t name; /**<  */
    uint       object_context_len; /**<  */
    uint       data_context_len; /**<  */
} ;

/**
 * @brief xcb_se_linux_list_item_iterator_t
 **/
struct xcb_se_linux_list_item_iterator_t {
    xcb_se_linux_list_item_t *data; /**<  */
    int                       rem; /**<  */
    int                       index; /**<  */
} ;

/** Opcode for xcb_se_linux_set_property_create_context. */
const uint XCB_SE_LINUX_SET_PROPERTY_CREATE_CONTEXT = 8;

/**
 * @brief xcb_se_linux_set_property_create_context_request_t
 **/
struct xcb_se_linux_set_property_create_context_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    uint   context_len; /**<  */
} ;

/**
 * @brief xcb_se_linux_get_property_create_context_cookie_t
 **/
struct xcb_se_linux_get_property_create_context_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_se_linux_get_property_create_context. */
const uint XCB_SE_LINUX_GET_PROPERTY_CREATE_CONTEXT = 9;

/**
 * @brief xcb_se_linux_get_property_create_context_request_t
 **/
struct xcb_se_linux_get_property_create_context_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
} ;

/**
 * @brief xcb_se_linux_get_property_create_context_reply_t
 **/
struct xcb_se_linux_get_property_create_context_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   context_len; /**<  */
    ubyte  pad1[20]; /**<  */
} ;

/** Opcode for xcb_se_linux_set_property_use_context. */
const uint XCB_SE_LINUX_SET_PROPERTY_USE_CONTEXT = 10;

/**
 * @brief xcb_se_linux_set_property_use_context_request_t
 **/
struct xcb_se_linux_set_property_use_context_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    uint   context_len; /**<  */
} ;

/**
 * @brief xcb_se_linux_get_property_use_context_cookie_t
 **/
struct xcb_se_linux_get_property_use_context_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_se_linux_get_property_use_context. */
const uint XCB_SE_LINUX_GET_PROPERTY_USE_CONTEXT = 11;

/**
 * @brief xcb_se_linux_get_property_use_context_request_t
 **/
struct xcb_se_linux_get_property_use_context_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
} ;

/**
 * @brief xcb_se_linux_get_property_use_context_reply_t
 **/
struct xcb_se_linux_get_property_use_context_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   context_len; /**<  */
    ubyte  pad1[20]; /**<  */
} ;

/**
 * @brief xcb_se_linux_get_property_context_cookie_t
 **/
struct xcb_se_linux_get_property_context_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_se_linux_get_property_context. */
const uint XCB_SE_LINUX_GET_PROPERTY_CONTEXT = 12;

/**
 * @brief xcb_se_linux_get_property_context_request_t
 **/
struct xcb_se_linux_get_property_context_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
    xcb_atom_t   property; /**<  */
} ;

/**
 * @brief xcb_se_linux_get_property_context_reply_t
 **/
struct xcb_se_linux_get_property_context_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   context_len; /**<  */
    ubyte  pad1[20]; /**<  */
} ;

/**
 * @brief xcb_se_linux_get_property_data_context_cookie_t
 **/
struct xcb_se_linux_get_property_data_context_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_se_linux_get_property_data_context. */
const uint XCB_SE_LINUX_GET_PROPERTY_DATA_CONTEXT = 13;

/**
 * @brief xcb_se_linux_get_property_data_context_request_t
 **/
struct xcb_se_linux_get_property_data_context_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
    xcb_atom_t   property; /**<  */
} ;

/**
 * @brief xcb_se_linux_get_property_data_context_reply_t
 **/
struct xcb_se_linux_get_property_data_context_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   context_len; /**<  */
    ubyte  pad1[20]; /**<  */
} ;

/**
 * @brief xcb_se_linux_list_properties_cookie_t
 **/
struct xcb_se_linux_list_properties_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_se_linux_list_properties. */
const uint XCB_SE_LINUX_LIST_PROPERTIES = 14;

/**
 * @brief xcb_se_linux_list_properties_request_t
 **/
struct xcb_se_linux_list_properties_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
} ;

/**
 * @brief xcb_se_linux_list_properties_reply_t
 **/
struct xcb_se_linux_list_properties_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   properties_len; /**<  */
    ubyte  pad1[20]; /**<  */
} ;

/** Opcode for xcb_se_linux_set_selection_create_context. */
const uint XCB_SE_LINUX_SET_SELECTION_CREATE_CONTEXT = 15;

/**
 * @brief xcb_se_linux_set_selection_create_context_request_t
 **/
struct xcb_se_linux_set_selection_create_context_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    uint   context_len; /**<  */
} ;

/**
 * @brief xcb_se_linux_get_selection_create_context_cookie_t
 **/
struct xcb_se_linux_get_selection_create_context_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_se_linux_get_selection_create_context. */
const uint XCB_SE_LINUX_GET_SELECTION_CREATE_CONTEXT = 16;

/**
 * @brief xcb_se_linux_get_selection_create_context_request_t
 **/
struct xcb_se_linux_get_selection_create_context_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
} ;

/**
 * @brief xcb_se_linux_get_selection_create_context_reply_t
 **/
struct xcb_se_linux_get_selection_create_context_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   context_len; /**<  */
    ubyte  pad1[20]; /**<  */
} ;

/** Opcode for xcb_se_linux_set_selection_use_context. */
const uint XCB_SE_LINUX_SET_SELECTION_USE_CONTEXT = 17;

/**
 * @brief xcb_se_linux_set_selection_use_context_request_t
 **/
struct xcb_se_linux_set_selection_use_context_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    uint   context_len; /**<  */
} ;

/**
 * @brief xcb_se_linux_get_selection_use_context_cookie_t
 **/
struct xcb_se_linux_get_selection_use_context_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_se_linux_get_selection_use_context. */
const uint XCB_SE_LINUX_GET_SELECTION_USE_CONTEXT = 18;

/**
 * @brief xcb_se_linux_get_selection_use_context_request_t
 **/
struct xcb_se_linux_get_selection_use_context_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
} ;

/**
 * @brief xcb_se_linux_get_selection_use_context_reply_t
 **/
struct xcb_se_linux_get_selection_use_context_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   context_len; /**<  */
    ubyte  pad1[20]; /**<  */
} ;

/**
 * @brief xcb_se_linux_get_selection_context_cookie_t
 **/
struct xcb_se_linux_get_selection_context_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_se_linux_get_selection_context. */
const uint XCB_SE_LINUX_GET_SELECTION_CONTEXT = 19;

/**
 * @brief xcb_se_linux_get_selection_context_request_t
 **/
struct xcb_se_linux_get_selection_context_request_t {
    ubyte      major_opcode; /**<  */
    ubyte      minor_opcode; /**<  */
    ushort     length; /**<  */
    xcb_atom_t selection; /**<  */
} ;

/**
 * @brief xcb_se_linux_get_selection_context_reply_t
 **/
struct xcb_se_linux_get_selection_context_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   context_len; /**<  */
    ubyte  pad1[20]; /**<  */
} ;

/**
 * @brief xcb_se_linux_get_selection_data_context_cookie_t
 **/
struct xcb_se_linux_get_selection_data_context_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_se_linux_get_selection_data_context. */
const uint XCB_SE_LINUX_GET_SELECTION_DATA_CONTEXT = 20;

/**
 * @brief xcb_se_linux_get_selection_data_context_request_t
 **/
struct xcb_se_linux_get_selection_data_context_request_t {
    ubyte      major_opcode; /**<  */
    ubyte      minor_opcode; /**<  */
    ushort     length; /**<  */
    xcb_atom_t selection; /**<  */
} ;

/**
 * @brief xcb_se_linux_get_selection_data_context_reply_t
 **/
struct xcb_se_linux_get_selection_data_context_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   context_len; /**<  */
    ubyte  pad1[20]; /**<  */
} ;

/**
 * @brief xcb_se_linux_list_selections_cookie_t
 **/
struct xcb_se_linux_list_selections_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_se_linux_list_selections. */
const uint XCB_SE_LINUX_LIST_SELECTIONS = 21;

/**
 * @brief xcb_se_linux_list_selections_request_t
 **/
struct xcb_se_linux_list_selections_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
} ;

/**
 * @brief xcb_se_linux_list_selections_reply_t
 **/
struct xcb_se_linux_list_selections_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   selections_len; /**<  */
    ubyte  pad1[20]; /**<  */
} ;

/**
 * @brief xcb_se_linux_get_client_context_cookie_t
 **/
struct xcb_se_linux_get_client_context_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_se_linux_get_client_context. */
const uint XCB_SE_LINUX_GET_CLIENT_CONTEXT = 22;

/**
 * @brief xcb_se_linux_get_client_context_request_t
 **/
struct xcb_se_linux_get_client_context_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    uint   resource; /**<  */
} ;

/**
 * @brief xcb_se_linux_get_client_context_reply_t
 **/
struct xcb_se_linux_get_client_context_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   context_len; /**<  */
    ubyte  pad1[20]; /**<  */
} ;


/*****************************************************************************
 **
 ** xcb_se_linux_query_version_cookie_t xcb_se_linux_query_version
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             client_major
 ** @param ubyte             client_minor
 ** @returns xcb_se_linux_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_query_version_cookie_t
xcb_se_linux_query_version (xcb_connection_t *c  /**< */,
                            ubyte             client_major  /**< */,
                            ubyte             client_minor  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_query_version_cookie_t xcb_se_linux_query_version_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             client_major
 ** @param ubyte             client_minor
 ** @returns xcb_se_linux_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_query_version_cookie_t
xcb_se_linux_query_version_unchecked (xcb_connection_t *c  /**< */,
                                      ubyte             client_major  /**< */,
                                      ubyte             client_minor  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_query_version_reply_t * xcb_se_linux_query_version_reply
 ** 
 ** @param xcb_connection_t                     *c
 ** @param xcb_se_linux_query_version_cookie_t   cookie
 ** @param xcb_generic_error_t                 **e
 ** @returns xcb_se_linux_query_version_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_query_version_reply_t *
xcb_se_linux_query_version_reply (xcb_connection_t                     *c  /**< */,
                                  xcb_se_linux_query_version_cookie_t   cookie  /**< */,
                                  xcb_generic_error_t                 **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_se_linux_set_device_create_context_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              context_len
 ** @param /+const+/ char   *context
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_se_linux_set_device_create_context_checked (xcb_connection_t *c  /**< */,
                                                uint              context_len  /**< */,
                                                /+const+/ char   *context  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_se_linux_set_device_create_context
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              context_len
 ** @param /+const+/ char   *context
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_se_linux_set_device_create_context (xcb_connection_t *c  /**< */,
                                        uint              context_len  /**< */,
                                        /+const+/ char   *context  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_device_create_context_cookie_t xcb_se_linux_get_device_create_context
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_se_linux_get_device_create_context_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_device_create_context_cookie_t
xcb_se_linux_get_device_create_context (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_device_create_context_cookie_t xcb_se_linux_get_device_create_context_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_se_linux_get_device_create_context_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_device_create_context_cookie_t
xcb_se_linux_get_device_create_context_unchecked (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** char * xcb_se_linux_get_device_create_context_context
 ** 
 ** @param /+const+/ xcb_se_linux_get_device_create_context_reply_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
extern(C) char *
xcb_se_linux_get_device_create_context_context (/+const+/ xcb_se_linux_get_device_create_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_se_linux_get_device_create_context_context_length
 ** 
 ** @param /+const+/ xcb_se_linux_get_device_create_context_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_se_linux_get_device_create_context_context_length (/+const+/ xcb_se_linux_get_device_create_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_se_linux_get_device_create_context_context_end
 ** 
 ** @param /+const+/ xcb_se_linux_get_device_create_context_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_se_linux_get_device_create_context_context_end (/+const+/ xcb_se_linux_get_device_create_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_device_create_context_reply_t * xcb_se_linux_get_device_create_context_reply
 ** 
 ** @param xcb_connection_t                                 *c
 ** @param xcb_se_linux_get_device_create_context_cookie_t   cookie
 ** @param xcb_generic_error_t                             **e
 ** @returns xcb_se_linux_get_device_create_context_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_device_create_context_reply_t *
xcb_se_linux_get_device_create_context_reply (xcb_connection_t                                 *c  /**< */,
                                              xcb_se_linux_get_device_create_context_cookie_t   cookie  /**< */,
                                              xcb_generic_error_t                             **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_se_linux_set_device_context_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              device
 ** @param uint              context_len
 ** @param /+const+/ char   *context
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_se_linux_set_device_context_checked (xcb_connection_t *c  /**< */,
                                         uint              device  /**< */,
                                         uint              context_len  /**< */,
                                         /+const+/ char   *context  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_se_linux_set_device_context
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              device
 ** @param uint              context_len
 ** @param /+const+/ char   *context
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_se_linux_set_device_context (xcb_connection_t *c  /**< */,
                                 uint              device  /**< */,
                                 uint              context_len  /**< */,
                                 /+const+/ char   *context  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_device_context_cookie_t xcb_se_linux_get_device_context
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              device
 ** @returns xcb_se_linux_get_device_context_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_device_context_cookie_t
xcb_se_linux_get_device_context (xcb_connection_t *c  /**< */,
                                 uint              device  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_device_context_cookie_t xcb_se_linux_get_device_context_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              device
 ** @returns xcb_se_linux_get_device_context_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_device_context_cookie_t
xcb_se_linux_get_device_context_unchecked (xcb_connection_t *c  /**< */,
                                           uint              device  /**< */);


/*****************************************************************************
 **
 ** char * xcb_se_linux_get_device_context_context
 ** 
 ** @param /+const+/ xcb_se_linux_get_device_context_reply_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
extern(C) char *
xcb_se_linux_get_device_context_context (/+const+/ xcb_se_linux_get_device_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_se_linux_get_device_context_context_length
 ** 
 ** @param /+const+/ xcb_se_linux_get_device_context_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_se_linux_get_device_context_context_length (/+const+/ xcb_se_linux_get_device_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_se_linux_get_device_context_context_end
 ** 
 ** @param /+const+/ xcb_se_linux_get_device_context_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_se_linux_get_device_context_context_end (/+const+/ xcb_se_linux_get_device_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_device_context_reply_t * xcb_se_linux_get_device_context_reply
 ** 
 ** @param xcb_connection_t                          *c
 ** @param xcb_se_linux_get_device_context_cookie_t   cookie
 ** @param xcb_generic_error_t                      **e
 ** @returns xcb_se_linux_get_device_context_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_device_context_reply_t *
xcb_se_linux_get_device_context_reply (xcb_connection_t                          *c  /**< */,
                                       xcb_se_linux_get_device_context_cookie_t   cookie  /**< */,
                                       xcb_generic_error_t                      **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_se_linux_set_window_create_context_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              context_len
 ** @param /+const+/ char   *context
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_se_linux_set_window_create_context_checked (xcb_connection_t *c  /**< */,
                                                uint              context_len  /**< */,
                                                /+const+/ char   *context  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_se_linux_set_window_create_context
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              context_len
 ** @param /+const+/ char   *context
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_se_linux_set_window_create_context (xcb_connection_t *c  /**< */,
                                        uint              context_len  /**< */,
                                        /+const+/ char   *context  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_window_create_context_cookie_t xcb_se_linux_get_window_create_context
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_se_linux_get_window_create_context_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_window_create_context_cookie_t
xcb_se_linux_get_window_create_context (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_window_create_context_cookie_t xcb_se_linux_get_window_create_context_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_se_linux_get_window_create_context_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_window_create_context_cookie_t
xcb_se_linux_get_window_create_context_unchecked (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** char * xcb_se_linux_get_window_create_context_context
 ** 
 ** @param /+const+/ xcb_se_linux_get_window_create_context_reply_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
extern(C) char *
xcb_se_linux_get_window_create_context_context (/+const+/ xcb_se_linux_get_window_create_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_se_linux_get_window_create_context_context_length
 ** 
 ** @param /+const+/ xcb_se_linux_get_window_create_context_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_se_linux_get_window_create_context_context_length (/+const+/ xcb_se_linux_get_window_create_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_se_linux_get_window_create_context_context_end
 ** 
 ** @param /+const+/ xcb_se_linux_get_window_create_context_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_se_linux_get_window_create_context_context_end (/+const+/ xcb_se_linux_get_window_create_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_window_create_context_reply_t * xcb_se_linux_get_window_create_context_reply
 ** 
 ** @param xcb_connection_t                                 *c
 ** @param xcb_se_linux_get_window_create_context_cookie_t   cookie
 ** @param xcb_generic_error_t                             **e
 ** @returns xcb_se_linux_get_window_create_context_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_window_create_context_reply_t *
xcb_se_linux_get_window_create_context_reply (xcb_connection_t                                 *c  /**< */,
                                              xcb_se_linux_get_window_create_context_cookie_t   cookie  /**< */,
                                              xcb_generic_error_t                             **e  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_window_context_cookie_t xcb_se_linux_get_window_context
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_se_linux_get_window_context_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_window_context_cookie_t
xcb_se_linux_get_window_context (xcb_connection_t *c  /**< */,
                                 xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_window_context_cookie_t xcb_se_linux_get_window_context_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_se_linux_get_window_context_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_window_context_cookie_t
xcb_se_linux_get_window_context_unchecked (xcb_connection_t *c  /**< */,
                                           xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** char * xcb_se_linux_get_window_context_context
 ** 
 ** @param /+const+/ xcb_se_linux_get_window_context_reply_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
extern(C) char *
xcb_se_linux_get_window_context_context (/+const+/ xcb_se_linux_get_window_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_se_linux_get_window_context_context_length
 ** 
 ** @param /+const+/ xcb_se_linux_get_window_context_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_se_linux_get_window_context_context_length (/+const+/ xcb_se_linux_get_window_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_se_linux_get_window_context_context_end
 ** 
 ** @param /+const+/ xcb_se_linux_get_window_context_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_se_linux_get_window_context_context_end (/+const+/ xcb_se_linux_get_window_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_window_context_reply_t * xcb_se_linux_get_window_context_reply
 ** 
 ** @param xcb_connection_t                          *c
 ** @param xcb_se_linux_get_window_context_cookie_t   cookie
 ** @param xcb_generic_error_t                      **e
 ** @returns xcb_se_linux_get_window_context_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_window_context_reply_t *
xcb_se_linux_get_window_context_reply (xcb_connection_t                          *c  /**< */,
                                       xcb_se_linux_get_window_context_cookie_t   cookie  /**< */,
                                       xcb_generic_error_t                      **e  /**< */);


/*****************************************************************************
 **
 ** char * xcb_se_linux_list_item_object_context
 ** 
 ** @param /+const+/ xcb_se_linux_list_item_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
extern(C) char *
xcb_se_linux_list_item_object_context (/+const+/ xcb_se_linux_list_item_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_se_linux_list_item_object_context_length
 ** 
 ** @param /+const+/ xcb_se_linux_list_item_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_se_linux_list_item_object_context_length (/+const+/ xcb_se_linux_list_item_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_se_linux_list_item_object_context_end
 ** 
 ** @param /+const+/ xcb_se_linux_list_item_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_se_linux_list_item_object_context_end (/+const+/ xcb_se_linux_list_item_t *R  /**< */);


/*****************************************************************************
 **
 ** char * xcb_se_linux_list_item_data_context
 ** 
 ** @param /+const+/ xcb_se_linux_list_item_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
extern(C) char *
xcb_se_linux_list_item_data_context (/+const+/ xcb_se_linux_list_item_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_se_linux_list_item_data_context_length
 ** 
 ** @param /+const+/ xcb_se_linux_list_item_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_se_linux_list_item_data_context_length (/+const+/ xcb_se_linux_list_item_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_se_linux_list_item_data_context_end
 ** 
 ** @param /+const+/ xcb_se_linux_list_item_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_se_linux_list_item_data_context_end (/+const+/ xcb_se_linux_list_item_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_se_linux_list_item_next
 ** 
 ** @param xcb_se_linux_list_item_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_se_linux_list_item_next (xcb_se_linux_list_item_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_se_linux_list_item_end
 ** 
 ** @param xcb_se_linux_list_item_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_se_linux_list_item_end (xcb_se_linux_list_item_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_se_linux_set_property_create_context_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              context_len
 ** @param /+const+/ char   *context
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_se_linux_set_property_create_context_checked (xcb_connection_t *c  /**< */,
                                                  uint              context_len  /**< */,
                                                  /+const+/ char   *context  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_se_linux_set_property_create_context
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              context_len
 ** @param /+const+/ char   *context
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_se_linux_set_property_create_context (xcb_connection_t *c  /**< */,
                                          uint              context_len  /**< */,
                                          /+const+/ char   *context  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_property_create_context_cookie_t xcb_se_linux_get_property_create_context
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_se_linux_get_property_create_context_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_property_create_context_cookie_t
xcb_se_linux_get_property_create_context (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_property_create_context_cookie_t xcb_se_linux_get_property_create_context_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_se_linux_get_property_create_context_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_property_create_context_cookie_t
xcb_se_linux_get_property_create_context_unchecked (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** char * xcb_se_linux_get_property_create_context_context
 ** 
 ** @param /+const+/ xcb_se_linux_get_property_create_context_reply_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
extern(C) char *
xcb_se_linux_get_property_create_context_context (/+const+/ xcb_se_linux_get_property_create_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_se_linux_get_property_create_context_context_length
 ** 
 ** @param /+const+/ xcb_se_linux_get_property_create_context_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_se_linux_get_property_create_context_context_length (/+const+/ xcb_se_linux_get_property_create_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_se_linux_get_property_create_context_context_end
 ** 
 ** @param /+const+/ xcb_se_linux_get_property_create_context_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_se_linux_get_property_create_context_context_end (/+const+/ xcb_se_linux_get_property_create_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_property_create_context_reply_t * xcb_se_linux_get_property_create_context_reply
 ** 
 ** @param xcb_connection_t                                   *c
 ** @param xcb_se_linux_get_property_create_context_cookie_t   cookie
 ** @param xcb_generic_error_t                               **e
 ** @returns xcb_se_linux_get_property_create_context_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_property_create_context_reply_t *
xcb_se_linux_get_property_create_context_reply (xcb_connection_t                                   *c  /**< */,
                                                xcb_se_linux_get_property_create_context_cookie_t   cookie  /**< */,
                                                xcb_generic_error_t                               **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_se_linux_set_property_use_context_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              context_len
 ** @param /+const+/ char   *context
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_se_linux_set_property_use_context_checked (xcb_connection_t *c  /**< */,
                                               uint              context_len  /**< */,
                                               /+const+/ char   *context  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_se_linux_set_property_use_context
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              context_len
 ** @param /+const+/ char   *context
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_se_linux_set_property_use_context (xcb_connection_t *c  /**< */,
                                       uint              context_len  /**< */,
                                       /+const+/ char   *context  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_property_use_context_cookie_t xcb_se_linux_get_property_use_context
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_se_linux_get_property_use_context_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_property_use_context_cookie_t
xcb_se_linux_get_property_use_context (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_property_use_context_cookie_t xcb_se_linux_get_property_use_context_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_se_linux_get_property_use_context_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_property_use_context_cookie_t
xcb_se_linux_get_property_use_context_unchecked (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** char * xcb_se_linux_get_property_use_context_context
 ** 
 ** @param /+const+/ xcb_se_linux_get_property_use_context_reply_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
extern(C) char *
xcb_se_linux_get_property_use_context_context (/+const+/ xcb_se_linux_get_property_use_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_se_linux_get_property_use_context_context_length
 ** 
 ** @param /+const+/ xcb_se_linux_get_property_use_context_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_se_linux_get_property_use_context_context_length (/+const+/ xcb_se_linux_get_property_use_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_se_linux_get_property_use_context_context_end
 ** 
 ** @param /+const+/ xcb_se_linux_get_property_use_context_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_se_linux_get_property_use_context_context_end (/+const+/ xcb_se_linux_get_property_use_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_property_use_context_reply_t * xcb_se_linux_get_property_use_context_reply
 ** 
 ** @param xcb_connection_t                                *c
 ** @param xcb_se_linux_get_property_use_context_cookie_t   cookie
 ** @param xcb_generic_error_t                            **e
 ** @returns xcb_se_linux_get_property_use_context_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_property_use_context_reply_t *
xcb_se_linux_get_property_use_context_reply (xcb_connection_t                                *c  /**< */,
                                             xcb_se_linux_get_property_use_context_cookie_t   cookie  /**< */,
                                             xcb_generic_error_t                            **e  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_property_context_cookie_t xcb_se_linux_get_property_context
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param xcb_atom_t        property
 ** @returns xcb_se_linux_get_property_context_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_property_context_cookie_t
xcb_se_linux_get_property_context (xcb_connection_t *c  /**< */,
                                   xcb_window_t      window  /**< */,
                                   xcb_atom_t        property  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_property_context_cookie_t xcb_se_linux_get_property_context_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param xcb_atom_t        property
 ** @returns xcb_se_linux_get_property_context_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_property_context_cookie_t
xcb_se_linux_get_property_context_unchecked (xcb_connection_t *c  /**< */,
                                             xcb_window_t      window  /**< */,
                                             xcb_atom_t        property  /**< */);


/*****************************************************************************
 **
 ** char * xcb_se_linux_get_property_context_context
 ** 
 ** @param /+const+/ xcb_se_linux_get_property_context_reply_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
extern(C) char *
xcb_se_linux_get_property_context_context (/+const+/ xcb_se_linux_get_property_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_se_linux_get_property_context_context_length
 ** 
 ** @param /+const+/ xcb_se_linux_get_property_context_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_se_linux_get_property_context_context_length (/+const+/ xcb_se_linux_get_property_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_se_linux_get_property_context_context_end
 ** 
 ** @param /+const+/ xcb_se_linux_get_property_context_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_se_linux_get_property_context_context_end (/+const+/ xcb_se_linux_get_property_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_property_context_reply_t * xcb_se_linux_get_property_context_reply
 ** 
 ** @param xcb_connection_t                            *c
 ** @param xcb_se_linux_get_property_context_cookie_t   cookie
 ** @param xcb_generic_error_t                        **e
 ** @returns xcb_se_linux_get_property_context_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_property_context_reply_t *
xcb_se_linux_get_property_context_reply (xcb_connection_t                            *c  /**< */,
                                         xcb_se_linux_get_property_context_cookie_t   cookie  /**< */,
                                         xcb_generic_error_t                        **e  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_property_data_context_cookie_t xcb_se_linux_get_property_data_context
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param xcb_atom_t        property
 ** @returns xcb_se_linux_get_property_data_context_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_property_data_context_cookie_t
xcb_se_linux_get_property_data_context (xcb_connection_t *c  /**< */,
                                        xcb_window_t      window  /**< */,
                                        xcb_atom_t        property  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_property_data_context_cookie_t xcb_se_linux_get_property_data_context_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param xcb_atom_t        property
 ** @returns xcb_se_linux_get_property_data_context_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_property_data_context_cookie_t
xcb_se_linux_get_property_data_context_unchecked (xcb_connection_t *c  /**< */,
                                                  xcb_window_t      window  /**< */,
                                                  xcb_atom_t        property  /**< */);


/*****************************************************************************
 **
 ** char * xcb_se_linux_get_property_data_context_context
 ** 
 ** @param /+const+/ xcb_se_linux_get_property_data_context_reply_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
extern(C) char *
xcb_se_linux_get_property_data_context_context (/+const+/ xcb_se_linux_get_property_data_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_se_linux_get_property_data_context_context_length
 ** 
 ** @param /+const+/ xcb_se_linux_get_property_data_context_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_se_linux_get_property_data_context_context_length (/+const+/ xcb_se_linux_get_property_data_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_se_linux_get_property_data_context_context_end
 ** 
 ** @param /+const+/ xcb_se_linux_get_property_data_context_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_se_linux_get_property_data_context_context_end (/+const+/ xcb_se_linux_get_property_data_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_property_data_context_reply_t * xcb_se_linux_get_property_data_context_reply
 ** 
 ** @param xcb_connection_t                                 *c
 ** @param xcb_se_linux_get_property_data_context_cookie_t   cookie
 ** @param xcb_generic_error_t                             **e
 ** @returns xcb_se_linux_get_property_data_context_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_property_data_context_reply_t *
xcb_se_linux_get_property_data_context_reply (xcb_connection_t                                 *c  /**< */,
                                              xcb_se_linux_get_property_data_context_cookie_t   cookie  /**< */,
                                              xcb_generic_error_t                             **e  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_list_properties_cookie_t xcb_se_linux_list_properties
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_se_linux_list_properties_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_list_properties_cookie_t
xcb_se_linux_list_properties (xcb_connection_t *c  /**< */,
                              xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_list_properties_cookie_t xcb_se_linux_list_properties_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_se_linux_list_properties_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_list_properties_cookie_t
xcb_se_linux_list_properties_unchecked (xcb_connection_t *c  /**< */,
                                        xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** int xcb_se_linux_list_properties_properties_length
 ** 
 ** @param /+const+/ xcb_se_linux_list_properties_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_se_linux_list_properties_properties_length (/+const+/ xcb_se_linux_list_properties_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_list_item_iterator_t xcb_se_linux_list_properties_properties_iterator
 ** 
 ** @param /+const+/ xcb_se_linux_list_properties_reply_t *R
 ** @returns xcb_se_linux_list_item_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_list_item_iterator_t
xcb_se_linux_list_properties_properties_iterator (/+const+/ xcb_se_linux_list_properties_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_list_properties_reply_t * xcb_se_linux_list_properties_reply
 ** 
 ** @param xcb_connection_t                       *c
 ** @param xcb_se_linux_list_properties_cookie_t   cookie
 ** @param xcb_generic_error_t                   **e
 ** @returns xcb_se_linux_list_properties_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_list_properties_reply_t *
xcb_se_linux_list_properties_reply (xcb_connection_t                       *c  /**< */,
                                    xcb_se_linux_list_properties_cookie_t   cookie  /**< */,
                                    xcb_generic_error_t                   **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_se_linux_set_selection_create_context_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              context_len
 ** @param /+const+/ char   *context
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_se_linux_set_selection_create_context_checked (xcb_connection_t *c  /**< */,
                                                   uint              context_len  /**< */,
                                                   /+const+/ char   *context  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_se_linux_set_selection_create_context
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              context_len
 ** @param /+const+/ char   *context
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_se_linux_set_selection_create_context (xcb_connection_t *c  /**< */,
                                           uint              context_len  /**< */,
                                           /+const+/ char   *context  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_selection_create_context_cookie_t xcb_se_linux_get_selection_create_context
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_se_linux_get_selection_create_context_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_selection_create_context_cookie_t
xcb_se_linux_get_selection_create_context (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_selection_create_context_cookie_t xcb_se_linux_get_selection_create_context_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_se_linux_get_selection_create_context_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_selection_create_context_cookie_t
xcb_se_linux_get_selection_create_context_unchecked (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** char * xcb_se_linux_get_selection_create_context_context
 ** 
 ** @param /+const+/ xcb_se_linux_get_selection_create_context_reply_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
extern(C) char *
xcb_se_linux_get_selection_create_context_context (/+const+/ xcb_se_linux_get_selection_create_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_se_linux_get_selection_create_context_context_length
 ** 
 ** @param /+const+/ xcb_se_linux_get_selection_create_context_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_se_linux_get_selection_create_context_context_length (/+const+/ xcb_se_linux_get_selection_create_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_se_linux_get_selection_create_context_context_end
 ** 
 ** @param /+const+/ xcb_se_linux_get_selection_create_context_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_se_linux_get_selection_create_context_context_end (/+const+/ xcb_se_linux_get_selection_create_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_selection_create_context_reply_t * xcb_se_linux_get_selection_create_context_reply
 ** 
 ** @param xcb_connection_t                                    *c
 ** @param xcb_se_linux_get_selection_create_context_cookie_t   cookie
 ** @param xcb_generic_error_t                                **e
 ** @returns xcb_se_linux_get_selection_create_context_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_selection_create_context_reply_t *
xcb_se_linux_get_selection_create_context_reply (xcb_connection_t                                    *c  /**< */,
                                                 xcb_se_linux_get_selection_create_context_cookie_t   cookie  /**< */,
                                                 xcb_generic_error_t                                **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_se_linux_set_selection_use_context_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              context_len
 ** @param /+const+/ char   *context
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_se_linux_set_selection_use_context_checked (xcb_connection_t *c  /**< */,
                                                uint              context_len  /**< */,
                                                /+const+/ char   *context  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_se_linux_set_selection_use_context
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              context_len
 ** @param /+const+/ char   *context
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_se_linux_set_selection_use_context (xcb_connection_t *c  /**< */,
                                        uint              context_len  /**< */,
                                        /+const+/ char   *context  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_selection_use_context_cookie_t xcb_se_linux_get_selection_use_context
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_se_linux_get_selection_use_context_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_selection_use_context_cookie_t
xcb_se_linux_get_selection_use_context (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_selection_use_context_cookie_t xcb_se_linux_get_selection_use_context_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_se_linux_get_selection_use_context_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_selection_use_context_cookie_t
xcb_se_linux_get_selection_use_context_unchecked (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** char * xcb_se_linux_get_selection_use_context_context
 ** 
 ** @param /+const+/ xcb_se_linux_get_selection_use_context_reply_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
extern(C) char *
xcb_se_linux_get_selection_use_context_context (/+const+/ xcb_se_linux_get_selection_use_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_se_linux_get_selection_use_context_context_length
 ** 
 ** @param /+const+/ xcb_se_linux_get_selection_use_context_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_se_linux_get_selection_use_context_context_length (/+const+/ xcb_se_linux_get_selection_use_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_se_linux_get_selection_use_context_context_end
 ** 
 ** @param /+const+/ xcb_se_linux_get_selection_use_context_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_se_linux_get_selection_use_context_context_end (/+const+/ xcb_se_linux_get_selection_use_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_selection_use_context_reply_t * xcb_se_linux_get_selection_use_context_reply
 ** 
 ** @param xcb_connection_t                                 *c
 ** @param xcb_se_linux_get_selection_use_context_cookie_t   cookie
 ** @param xcb_generic_error_t                             **e
 ** @returns xcb_se_linux_get_selection_use_context_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_selection_use_context_reply_t *
xcb_se_linux_get_selection_use_context_reply (xcb_connection_t                                 *c  /**< */,
                                              xcb_se_linux_get_selection_use_context_cookie_t   cookie  /**< */,
                                              xcb_generic_error_t                             **e  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_selection_context_cookie_t xcb_se_linux_get_selection_context
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_atom_t        selection
 ** @returns xcb_se_linux_get_selection_context_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_selection_context_cookie_t
xcb_se_linux_get_selection_context (xcb_connection_t *c  /**< */,
                                    xcb_atom_t        selection  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_selection_context_cookie_t xcb_se_linux_get_selection_context_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_atom_t        selection
 ** @returns xcb_se_linux_get_selection_context_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_selection_context_cookie_t
xcb_se_linux_get_selection_context_unchecked (xcb_connection_t *c  /**< */,
                                              xcb_atom_t        selection  /**< */);


/*****************************************************************************
 **
 ** char * xcb_se_linux_get_selection_context_context
 ** 
 ** @param /+const+/ xcb_se_linux_get_selection_context_reply_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
extern(C) char *
xcb_se_linux_get_selection_context_context (/+const+/ xcb_se_linux_get_selection_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_se_linux_get_selection_context_context_length
 ** 
 ** @param /+const+/ xcb_se_linux_get_selection_context_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_se_linux_get_selection_context_context_length (/+const+/ xcb_se_linux_get_selection_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_se_linux_get_selection_context_context_end
 ** 
 ** @param /+const+/ xcb_se_linux_get_selection_context_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_se_linux_get_selection_context_context_end (/+const+/ xcb_se_linux_get_selection_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_selection_context_reply_t * xcb_se_linux_get_selection_context_reply
 ** 
 ** @param xcb_connection_t                             *c
 ** @param xcb_se_linux_get_selection_context_cookie_t   cookie
 ** @param xcb_generic_error_t                         **e
 ** @returns xcb_se_linux_get_selection_context_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_selection_context_reply_t *
xcb_se_linux_get_selection_context_reply (xcb_connection_t                             *c  /**< */,
                                          xcb_se_linux_get_selection_context_cookie_t   cookie  /**< */,
                                          xcb_generic_error_t                         **e  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_selection_data_context_cookie_t xcb_se_linux_get_selection_data_context
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_atom_t        selection
 ** @returns xcb_se_linux_get_selection_data_context_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_selection_data_context_cookie_t
xcb_se_linux_get_selection_data_context (xcb_connection_t *c  /**< */,
                                         xcb_atom_t        selection  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_selection_data_context_cookie_t xcb_se_linux_get_selection_data_context_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_atom_t        selection
 ** @returns xcb_se_linux_get_selection_data_context_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_selection_data_context_cookie_t
xcb_se_linux_get_selection_data_context_unchecked (xcb_connection_t *c  /**< */,
                                                   xcb_atom_t        selection  /**< */);


/*****************************************************************************
 **
 ** char * xcb_se_linux_get_selection_data_context_context
 ** 
 ** @param /+const+/ xcb_se_linux_get_selection_data_context_reply_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
extern(C) char *
xcb_se_linux_get_selection_data_context_context (/+const+/ xcb_se_linux_get_selection_data_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_se_linux_get_selection_data_context_context_length
 ** 
 ** @param /+const+/ xcb_se_linux_get_selection_data_context_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_se_linux_get_selection_data_context_context_length (/+const+/ xcb_se_linux_get_selection_data_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_se_linux_get_selection_data_context_context_end
 ** 
 ** @param /+const+/ xcb_se_linux_get_selection_data_context_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_se_linux_get_selection_data_context_context_end (/+const+/ xcb_se_linux_get_selection_data_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_selection_data_context_reply_t * xcb_se_linux_get_selection_data_context_reply
 ** 
 ** @param xcb_connection_t                                  *c
 ** @param xcb_se_linux_get_selection_data_context_cookie_t   cookie
 ** @param xcb_generic_error_t                              **e
 ** @returns xcb_se_linux_get_selection_data_context_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_selection_data_context_reply_t *
xcb_se_linux_get_selection_data_context_reply (xcb_connection_t                                  *c  /**< */,
                                               xcb_se_linux_get_selection_data_context_cookie_t   cookie  /**< */,
                                               xcb_generic_error_t                              **e  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_list_selections_cookie_t xcb_se_linux_list_selections
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_se_linux_list_selections_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_list_selections_cookie_t
xcb_se_linux_list_selections (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_list_selections_cookie_t xcb_se_linux_list_selections_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_se_linux_list_selections_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_list_selections_cookie_t
xcb_se_linux_list_selections_unchecked (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** int xcb_se_linux_list_selections_selections_length
 ** 
 ** @param /+const+/ xcb_se_linux_list_selections_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_se_linux_list_selections_selections_length (/+const+/ xcb_se_linux_list_selections_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_list_item_iterator_t xcb_se_linux_list_selections_selections_iterator
 ** 
 ** @param /+const+/ xcb_se_linux_list_selections_reply_t *R
 ** @returns xcb_se_linux_list_item_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_list_item_iterator_t
xcb_se_linux_list_selections_selections_iterator (/+const+/ xcb_se_linux_list_selections_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_list_selections_reply_t * xcb_se_linux_list_selections_reply
 ** 
 ** @param xcb_connection_t                       *c
 ** @param xcb_se_linux_list_selections_cookie_t   cookie
 ** @param xcb_generic_error_t                   **e
 ** @returns xcb_se_linux_list_selections_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_list_selections_reply_t *
xcb_se_linux_list_selections_reply (xcb_connection_t                       *c  /**< */,
                                    xcb_se_linux_list_selections_cookie_t   cookie  /**< */,
                                    xcb_generic_error_t                   **e  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_client_context_cookie_t xcb_se_linux_get_client_context
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              resource
 ** @returns xcb_se_linux_get_client_context_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_client_context_cookie_t
xcb_se_linux_get_client_context (xcb_connection_t *c  /**< */,
                                 uint              resource  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_client_context_cookie_t xcb_se_linux_get_client_context_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              resource
 ** @returns xcb_se_linux_get_client_context_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_client_context_cookie_t
xcb_se_linux_get_client_context_unchecked (xcb_connection_t *c  /**< */,
                                           uint              resource  /**< */);


/*****************************************************************************
 **
 ** char * xcb_se_linux_get_client_context_context
 ** 
 ** @param /+const+/ xcb_se_linux_get_client_context_reply_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
extern(C) char *
xcb_se_linux_get_client_context_context (/+const+/ xcb_se_linux_get_client_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_se_linux_get_client_context_context_length
 ** 
 ** @param /+const+/ xcb_se_linux_get_client_context_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_se_linux_get_client_context_context_length (/+const+/ xcb_se_linux_get_client_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_se_linux_get_client_context_context_end
 ** 
 ** @param /+const+/ xcb_se_linux_get_client_context_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_se_linux_get_client_context_context_end (/+const+/ xcb_se_linux_get_client_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_se_linux_get_client_context_reply_t * xcb_se_linux_get_client_context_reply
 ** 
 ** @param xcb_connection_t                          *c
 ** @param xcb_se_linux_get_client_context_cookie_t   cookie
 ** @param xcb_generic_error_t                      **e
 ** @returns xcb_se_linux_get_client_context_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_se_linux_get_client_context_reply_t *
xcb_se_linux_get_client_context_reply (xcb_connection_t                          *c  /**< */,
                                       xcb_se_linux_get_client_context_cookie_t   cookie  /**< */,
                                       xcb_generic_error_t                      **e  /**< */);



/**
 * @}
 */
