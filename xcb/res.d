/*
 * This file generated automatically from res.xml by c-client.xsl using XSLT.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_Res_API XCB Res API
 * @brief Res XCB Protocol Implementation.
 * @{
 **/


module xcb.res;

import xcb.xcb;
import xcb.xproto;

const int XCB_RES_MAJOR_VERSION =1;
const int XCB_RES_MINOR_VERSION =2;
  
extern(C) extern xcb_extension_t xcb_res_id;

/**
 * @brief xcb_res_client_t
 **/
struct xcb_res_client_t {
    uint resource_base; /**<  */
    uint resource_mask; /**<  */
} ;

/**
 * @brief xcb_res_client_iterator_t
 **/
struct xcb_res_client_iterator_t {
    xcb_res_client_t *data; /**<  */
    int               rem; /**<  */
    int               index; /**<  */
} ;

/**
 * @brief xcb_res_type_t
 **/
struct xcb_res_type_t {
    xcb_atom_t resource_type; /**<  */
    uint       count; /**<  */
} ;

/**
 * @brief xcb_res_type_iterator_t
 **/
struct xcb_res_type_iterator_t {
    xcb_res_type_t *data; /**<  */
    int             rem; /**<  */
    int             index; /**<  */
} ;

enum :int{
    XCB_RES_CLIENT_ID_MASK_CLIENT_XID = (1 << 0),
    XCB_RES_CLIENT_ID_MASK_LOCAL_CLIENT_PID = (1 << 1)
};

/**
 * @brief xcb_res_client_id_spec_t
 **/
struct xcb_res_client_id_spec_t {
    uint client; /**<  */
    uint mask; /**<  */
} ;

/**
 * @brief xcb_res_client_id_spec_iterator_t
 **/
struct xcb_res_client_id_spec_iterator_t {
    xcb_res_client_id_spec_t *data; /**<  */
    int                       rem; /**<  */
    int                       index; /**<  */
} ;

/**
 * @brief xcb_res_client_id_value_t
 **/
struct xcb_res_client_id_value_t {
    xcb_res_client_id_spec_t spec; /**<  */
    uint                     length; /**<  */
} ;

/**
 * @brief xcb_res_client_id_value_iterator_t
 **/
struct xcb_res_client_id_value_iterator_t {
    xcb_res_client_id_value_t *data; /**<  */
    int                        rem; /**<  */
    int                        index; /**<  */
} ;

/**
 * @brief xcb_res_resource_id_spec_t
 **/
struct xcb_res_resource_id_spec_t {
    uint resource; /**<  */
    uint type; /**<  */
} ;

/**
 * @brief xcb_res_resource_id_spec_iterator_t
 **/
struct xcb_res_resource_id_spec_iterator_t {
    xcb_res_resource_id_spec_t *data; /**<  */
    int                         rem; /**<  */
    int                         index; /**<  */
} ;

/**
 * @brief xcb_res_resource_size_spec_t
 **/
struct xcb_res_resource_size_spec_t {
    xcb_res_resource_id_spec_t spec; /**<  */
    uint                       bytes; /**<  */
    uint                       ref_count; /**<  */
    uint                       use_count; /**<  */
} ;

/**
 * @brief xcb_res_resource_size_spec_iterator_t
 **/
struct xcb_res_resource_size_spec_iterator_t {
    xcb_res_resource_size_spec_t *data; /**<  */
    int                           rem; /**<  */
    int                           index; /**<  */
} ;

/**
 * @brief xcb_res_resource_size_value_t
 **/
struct xcb_res_resource_size_value_t {
    xcb_res_resource_size_spec_t size; /**<  */
    uint                         num_cross_references; /**<  */
} ;

/**
 * @brief xcb_res_resource_size_value_iterator_t
 **/
struct xcb_res_resource_size_value_iterator_t {
    xcb_res_resource_size_value_t *data; /**<  */
    int                            rem; /**<  */
    int                            index; /**<  */
} ;

/**
 * @brief xcb_res_query_version_cookie_t
 **/
struct xcb_res_query_version_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_res_query_version. */
const uint XCB_RES_QUERY_VERSION = 0;

/**
 * @brief xcb_res_query_version_request_t
 **/
struct xcb_res_query_version_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  client_major; /**<  */
    ubyte  client_minor; /**<  */
} ;

/**
 * @brief xcb_res_query_version_reply_t
 **/
struct xcb_res_query_version_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort server_major; /**<  */
    ushort server_minor; /**<  */
} ;

/**
 * @brief xcb_res_query_clients_cookie_t
 **/
struct xcb_res_query_clients_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_res_query_clients. */
const uint XCB_RES_QUERY_CLIENTS = 1;

/**
 * @brief xcb_res_query_clients_request_t
 **/
struct xcb_res_query_clients_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
} ;

/**
 * @brief xcb_res_query_clients_reply_t
 **/
struct xcb_res_query_clients_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   num_clients; /**<  */
    ubyte  pad1[20]; /**<  */
} ;

/**
 * @brief xcb_res_query_client_resources_cookie_t
 **/
struct xcb_res_query_client_resources_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_res_query_client_resources. */
const uint XCB_RES_QUERY_CLIENT_RESOURCES = 2;

/**
 * @brief xcb_res_query_client_resources_request_t
 **/
struct xcb_res_query_client_resources_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    uint   xid; /**<  */
} ;

/**
 * @brief xcb_res_query_client_resources_reply_t
 **/
struct xcb_res_query_client_resources_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   num_types; /**<  */
    ubyte  pad1[20]; /**<  */
} ;

/**
 * @brief xcb_res_query_client_pixmap_bytes_cookie_t
 **/
struct xcb_res_query_client_pixmap_bytes_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_res_query_client_pixmap_bytes. */
const uint XCB_RES_QUERY_CLIENT_PIXMAP_BYTES = 3;

/**
 * @brief xcb_res_query_client_pixmap_bytes_request_t
 **/
struct xcb_res_query_client_pixmap_bytes_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    uint   xid; /**<  */
} ;

/**
 * @brief xcb_res_query_client_pixmap_bytes_reply_t
 **/
struct xcb_res_query_client_pixmap_bytes_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   bytes; /**<  */
    uint   bytes_overflow; /**<  */
} ;

/**
 * @brief xcb_res_query_client_ids_cookie_t
 **/
struct xcb_res_query_client_ids_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_res_query_client_ids. */
const uint XCB_RES_QUERY_CLIENT_IDS = 4;

/**
 * @brief xcb_res_query_client_ids_request_t
 **/
struct xcb_res_query_client_ids_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    uint   num_specs; /**<  */
} ;

/**
 * @brief xcb_res_query_client_ids_reply_t
 **/
struct xcb_res_query_client_ids_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   num_ids; /**<  */
    ubyte  pad1[20]; /**<  */
} ;

/**
 * @brief xcb_res_query_resource_bytes_cookie_t
 **/
struct xcb_res_query_resource_bytes_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_res_query_resource_bytes. */
const uint XCB_RES_QUERY_RESOURCE_BYTES = 5;

/**
 * @brief xcb_res_query_resource_bytes_request_t
 **/
struct xcb_res_query_resource_bytes_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    uint   client; /**<  */
    uint   num_specs; /**<  */
} ;

/**
 * @brief xcb_res_query_resource_bytes_reply_t
 **/
struct xcb_res_query_resource_bytes_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   num_sizes; /**<  */
    ubyte  pad1[20]; /**<  */
} ;


/*****************************************************************************
 **
 ** void xcb_res_client_next
 ** 
 ** @param xcb_res_client_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_res_client_next (xcb_res_client_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_res_client_end
 ** 
 ** @param xcb_res_client_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_res_client_end (xcb_res_client_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_res_type_next
 ** 
 ** @param xcb_res_type_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_res_type_next (xcb_res_type_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_res_type_end
 ** 
 ** @param xcb_res_type_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_res_type_end (xcb_res_type_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_res_client_id_spec_next
 ** 
 ** @param xcb_res_client_id_spec_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_res_client_id_spec_next (xcb_res_client_id_spec_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_res_client_id_spec_end
 ** 
 ** @param xcb_res_client_id_spec_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_res_client_id_spec_end (xcb_res_client_id_spec_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_res_client_id_value_value
 ** 
 ** @param /+const+/ xcb_res_client_id_value_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
extern(C) uint *
xcb_res_client_id_value_value (/+const+/ xcb_res_client_id_value_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_res_client_id_value_value_length
 ** 
 ** @param /+const+/ xcb_res_client_id_value_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_res_client_id_value_value_length (/+const+/ xcb_res_client_id_value_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_res_client_id_value_value_end
 ** 
 ** @param /+const+/ xcb_res_client_id_value_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_res_client_id_value_value_end (/+const+/ xcb_res_client_id_value_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_res_client_id_value_next
 ** 
 ** @param xcb_res_client_id_value_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_res_client_id_value_next (xcb_res_client_id_value_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_res_client_id_value_end
 ** 
 ** @param xcb_res_client_id_value_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_res_client_id_value_end (xcb_res_client_id_value_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_res_resource_id_spec_next
 ** 
 ** @param xcb_res_resource_id_spec_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_res_resource_id_spec_next (xcb_res_resource_id_spec_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_res_resource_id_spec_end
 ** 
 ** @param xcb_res_resource_id_spec_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_res_resource_id_spec_end (xcb_res_resource_id_spec_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_res_resource_size_spec_next
 ** 
 ** @param xcb_res_resource_size_spec_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_res_resource_size_spec_next (xcb_res_resource_size_spec_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_res_resource_size_spec_end
 ** 
 ** @param xcb_res_resource_size_spec_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_res_resource_size_spec_end (xcb_res_resource_size_spec_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_res_resource_size_spec_t * xcb_res_resource_size_value_cross_references
 ** 
 ** @param /+const+/ xcb_res_resource_size_value_t *R
 ** @returns xcb_res_resource_size_spec_t *
 **
 *****************************************************************************/
 
extern(C) xcb_res_resource_size_spec_t *
xcb_res_resource_size_value_cross_references (/+const+/ xcb_res_resource_size_value_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_res_resource_size_value_cross_references_length
 ** 
 ** @param /+const+/ xcb_res_resource_size_value_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_res_resource_size_value_cross_references_length (/+const+/ xcb_res_resource_size_value_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_res_resource_size_spec_iterator_t xcb_res_resource_size_value_cross_references_iterator
 ** 
 ** @param /+const+/ xcb_res_resource_size_value_t *R
 ** @returns xcb_res_resource_size_spec_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_res_resource_size_spec_iterator_t
xcb_res_resource_size_value_cross_references_iterator (/+const+/ xcb_res_resource_size_value_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_res_resource_size_value_next
 ** 
 ** @param xcb_res_resource_size_value_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_res_resource_size_value_next (xcb_res_resource_size_value_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_res_resource_size_value_end
 ** 
 ** @param xcb_res_resource_size_value_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_res_resource_size_value_end (xcb_res_resource_size_value_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_res_query_version_cookie_t xcb_res_query_version
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             client_major
 ** @param ubyte             client_minor
 ** @returns xcb_res_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_version_cookie_t
xcb_res_query_version (xcb_connection_t *c  /**< */,
                       ubyte             client_major  /**< */,
                       ubyte             client_minor  /**< */);


/*****************************************************************************
 **
 ** xcb_res_query_version_cookie_t xcb_res_query_version_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             client_major
 ** @param ubyte             client_minor
 ** @returns xcb_res_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_version_cookie_t
xcb_res_query_version_unchecked (xcb_connection_t *c  /**< */,
                                 ubyte             client_major  /**< */,
                                 ubyte             client_minor  /**< */);


/*****************************************************************************
 **
 ** xcb_res_query_version_reply_t * xcb_res_query_version_reply
 ** 
 ** @param xcb_connection_t                *c
 ** @param xcb_res_query_version_cookie_t   cookie
 ** @param xcb_generic_error_t            **e
 ** @returns xcb_res_query_version_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_version_reply_t *
xcb_res_query_version_reply (xcb_connection_t                *c  /**< */,
                             xcb_res_query_version_cookie_t   cookie  /**< */,
                             xcb_generic_error_t            **e  /**< */);


/*****************************************************************************
 **
 ** xcb_res_query_clients_cookie_t xcb_res_query_clients
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_res_query_clients_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_clients_cookie_t
xcb_res_query_clients (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** xcb_res_query_clients_cookie_t xcb_res_query_clients_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_res_query_clients_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_clients_cookie_t
xcb_res_query_clients_unchecked (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** xcb_res_client_t * xcb_res_query_clients_clients
 ** 
 ** @param /+const+/ xcb_res_query_clients_reply_t *R
 ** @returns xcb_res_client_t *
 **
 *****************************************************************************/
 
extern(C) xcb_res_client_t *
xcb_res_query_clients_clients (/+const+/ xcb_res_query_clients_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_res_query_clients_clients_length
 ** 
 ** @param /+const+/ xcb_res_query_clients_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_res_query_clients_clients_length (/+const+/ xcb_res_query_clients_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_res_client_iterator_t xcb_res_query_clients_clients_iterator
 ** 
 ** @param /+const+/ xcb_res_query_clients_reply_t *R
 ** @returns xcb_res_client_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_res_client_iterator_t
xcb_res_query_clients_clients_iterator (/+const+/ xcb_res_query_clients_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_res_query_clients_reply_t * xcb_res_query_clients_reply
 ** 
 ** @param xcb_connection_t                *c
 ** @param xcb_res_query_clients_cookie_t   cookie
 ** @param xcb_generic_error_t            **e
 ** @returns xcb_res_query_clients_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_clients_reply_t *
xcb_res_query_clients_reply (xcb_connection_t                *c  /**< */,
                             xcb_res_query_clients_cookie_t   cookie  /**< */,
                             xcb_generic_error_t            **e  /**< */);


/*****************************************************************************
 **
 ** xcb_res_query_client_resources_cookie_t xcb_res_query_client_resources
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              xid
 ** @returns xcb_res_query_client_resources_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_client_resources_cookie_t
xcb_res_query_client_resources (xcb_connection_t *c  /**< */,
                                uint              xid  /**< */);


/*****************************************************************************
 **
 ** xcb_res_query_client_resources_cookie_t xcb_res_query_client_resources_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              xid
 ** @returns xcb_res_query_client_resources_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_client_resources_cookie_t
xcb_res_query_client_resources_unchecked (xcb_connection_t *c  /**< */,
                                          uint              xid  /**< */);


/*****************************************************************************
 **
 ** xcb_res_type_t * xcb_res_query_client_resources_types
 ** 
 ** @param /+const+/ xcb_res_query_client_resources_reply_t *R
 ** @returns xcb_res_type_t *
 **
 *****************************************************************************/
 
extern(C) xcb_res_type_t *
xcb_res_query_client_resources_types (/+const+/ xcb_res_query_client_resources_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_res_query_client_resources_types_length
 ** 
 ** @param /+const+/ xcb_res_query_client_resources_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_res_query_client_resources_types_length (/+const+/ xcb_res_query_client_resources_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_res_type_iterator_t xcb_res_query_client_resources_types_iterator
 ** 
 ** @param /+const+/ xcb_res_query_client_resources_reply_t *R
 ** @returns xcb_res_type_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_res_type_iterator_t
xcb_res_query_client_resources_types_iterator (/+const+/ xcb_res_query_client_resources_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_res_query_client_resources_reply_t * xcb_res_query_client_resources_reply
 ** 
 ** @param xcb_connection_t                         *c
 ** @param xcb_res_query_client_resources_cookie_t   cookie
 ** @param xcb_generic_error_t                     **e
 ** @returns xcb_res_query_client_resources_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_client_resources_reply_t *
xcb_res_query_client_resources_reply (xcb_connection_t                         *c  /**< */,
                                      xcb_res_query_client_resources_cookie_t   cookie  /**< */,
                                      xcb_generic_error_t                     **e  /**< */);


/*****************************************************************************
 **
 ** xcb_res_query_client_pixmap_bytes_cookie_t xcb_res_query_client_pixmap_bytes
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              xid
 ** @returns xcb_res_query_client_pixmap_bytes_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_client_pixmap_bytes_cookie_t
xcb_res_query_client_pixmap_bytes (xcb_connection_t *c  /**< */,
                                   uint              xid  /**< */);


/*****************************************************************************
 **
 ** xcb_res_query_client_pixmap_bytes_cookie_t xcb_res_query_client_pixmap_bytes_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              xid
 ** @returns xcb_res_query_client_pixmap_bytes_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_client_pixmap_bytes_cookie_t
xcb_res_query_client_pixmap_bytes_unchecked (xcb_connection_t *c  /**< */,
                                             uint              xid  /**< */);


/*****************************************************************************
 **
 ** xcb_res_query_client_pixmap_bytes_reply_t * xcb_res_query_client_pixmap_bytes_reply
 ** 
 ** @param xcb_connection_t                            *c
 ** @param xcb_res_query_client_pixmap_bytes_cookie_t   cookie
 ** @param xcb_generic_error_t                        **e
 ** @returns xcb_res_query_client_pixmap_bytes_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_client_pixmap_bytes_reply_t *
xcb_res_query_client_pixmap_bytes_reply (xcb_connection_t                            *c  /**< */,
                                         xcb_res_query_client_pixmap_bytes_cookie_t   cookie  /**< */,
                                         xcb_generic_error_t                        **e  /**< */);


/*****************************************************************************
 **
 ** xcb_res_query_client_ids_cookie_t xcb_res_query_client_ids
 ** 
 ** @param xcb_connection_t                   *c
 ** @param uint                                num_specs
 ** @param /+const+/ xcb_res_client_id_spec_t *specs
 ** @returns xcb_res_query_client_ids_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_client_ids_cookie_t
xcb_res_query_client_ids (xcb_connection_t                   *c  /**< */,
                          uint                                num_specs  /**< */,
                          /+const+/ xcb_res_client_id_spec_t *specs  /**< */);


/*****************************************************************************
 **
 ** xcb_res_query_client_ids_cookie_t xcb_res_query_client_ids_unchecked
 ** 
 ** @param xcb_connection_t                   *c
 ** @param uint                                num_specs
 ** @param /+const+/ xcb_res_client_id_spec_t *specs
 ** @returns xcb_res_query_client_ids_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_client_ids_cookie_t
xcb_res_query_client_ids_unchecked (xcb_connection_t                   *c  /**< */,
                                    uint                                num_specs  /**< */,
                                    /+const+/ xcb_res_client_id_spec_t *specs  /**< */);


/*****************************************************************************
 **
 ** int xcb_res_query_client_ids_ids_length
 ** 
 ** @param /+const+/ xcb_res_query_client_ids_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_res_query_client_ids_ids_length (/+const+/ xcb_res_query_client_ids_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_res_client_id_value_iterator_t xcb_res_query_client_ids_ids_iterator
 ** 
 ** @param /+const+/ xcb_res_query_client_ids_reply_t *R
 ** @returns xcb_res_client_id_value_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_res_client_id_value_iterator_t
xcb_res_query_client_ids_ids_iterator (/+const+/ xcb_res_query_client_ids_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_res_query_client_ids_reply_t * xcb_res_query_client_ids_reply
 ** 
 ** @param xcb_connection_t                   *c
 ** @param xcb_res_query_client_ids_cookie_t   cookie
 ** @param xcb_generic_error_t               **e
 ** @returns xcb_res_query_client_ids_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_client_ids_reply_t *
xcb_res_query_client_ids_reply (xcb_connection_t                   *c  /**< */,
                                xcb_res_query_client_ids_cookie_t   cookie  /**< */,
                                xcb_generic_error_t               **e  /**< */);


/*****************************************************************************
 **
 ** xcb_res_query_resource_bytes_cookie_t xcb_res_query_resource_bytes
 ** 
 ** @param xcb_connection_t                     *c
 ** @param uint                                  client
 ** @param uint                                  num_specs
 ** @param /+const+/ xcb_res_resource_id_spec_t *specs
 ** @returns xcb_res_query_resource_bytes_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_resource_bytes_cookie_t
xcb_res_query_resource_bytes (xcb_connection_t                     *c  /**< */,
                              uint                                  client  /**< */,
                              uint                                  num_specs  /**< */,
                              /+const+/ xcb_res_resource_id_spec_t *specs  /**< */);


/*****************************************************************************
 **
 ** xcb_res_query_resource_bytes_cookie_t xcb_res_query_resource_bytes_unchecked
 ** 
 ** @param xcb_connection_t                     *c
 ** @param uint                                  client
 ** @param uint                                  num_specs
 ** @param /+const+/ xcb_res_resource_id_spec_t *specs
 ** @returns xcb_res_query_resource_bytes_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_resource_bytes_cookie_t
xcb_res_query_resource_bytes_unchecked (xcb_connection_t                     *c  /**< */,
                                        uint                                  client  /**< */,
                                        uint                                  num_specs  /**< */,
                                        /+const+/ xcb_res_resource_id_spec_t *specs  /**< */);


/*****************************************************************************
 **
 ** int xcb_res_query_resource_bytes_sizes_length
 ** 
 ** @param /+const+/ xcb_res_query_resource_bytes_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_res_query_resource_bytes_sizes_length (/+const+/ xcb_res_query_resource_bytes_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_res_resource_size_value_iterator_t xcb_res_query_resource_bytes_sizes_iterator
 ** 
 ** @param /+const+/ xcb_res_query_resource_bytes_reply_t *R
 ** @returns xcb_res_resource_size_value_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_res_resource_size_value_iterator_t
xcb_res_query_resource_bytes_sizes_iterator (/+const+/ xcb_res_query_resource_bytes_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_res_query_resource_bytes_reply_t * xcb_res_query_resource_bytes_reply
 ** 
 ** @param xcb_connection_t                       *c
 ** @param xcb_res_query_resource_bytes_cookie_t   cookie
 ** @param xcb_generic_error_t                   **e
 ** @returns xcb_res_query_resource_bytes_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_resource_bytes_reply_t *
xcb_res_query_resource_bytes_reply (xcb_connection_t                       *c  /**< */,
                                    xcb_res_query_resource_bytes_cookie_t   cookie  /**< */,
                                    xcb_generic_error_t                   **e  /**< */);



/**
 * @}
 */
