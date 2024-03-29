/*
 * This file generated automatically from sync.xml by c-client.xsl using XSLT.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_Sync_API XCB Sync API
 * @brief Sync XCB Protocol Implementation.
 * @{
 **/


module xcb.sync;

import xcb.xcb;
import xcb.xproto;

const int XCB_SYNC_MAJOR_VERSION =3;
const int XCB_SYNC_MINOR_VERSION =1;
  
extern(C) extern xcb_extension_t xcb_sync_id;

alias uint xcb_sync_alarm_t;

/**
 * @brief xcb_sync_alarm_iterator_t
 **/
struct xcb_sync_alarm_iterator_t {
    xcb_sync_alarm_t *data; /**<  */
    int               rem; /**<  */
    int               index; /**<  */
} ;

enum :int{
    XCB_SYNC_ALARMSTATE_ACTIVE = 0,
    XCB_SYNC_ALARMSTATE_INACTIVE = 1,
    XCB_SYNC_ALARMSTATE_DESTROYED = 2
};

alias uint xcb_sync_counter_t;

/**
 * @brief xcb_sync_counter_iterator_t
 **/
struct xcb_sync_counter_iterator_t {
    xcb_sync_counter_t *data; /**<  */
    int                 rem; /**<  */
    int                 index; /**<  */
} ;

alias uint xcb_sync_fence_t;

/**
 * @brief xcb_sync_fence_iterator_t
 **/
struct xcb_sync_fence_iterator_t {
    xcb_sync_fence_t *data; /**<  */
    int               rem; /**<  */
    int               index; /**<  */
} ;

enum :int{
    XCB_SYNC_TESTTYPE_POSITIVE_TRANSITION = 0,
    XCB_SYNC_TESTTYPE_NEGATIVE_TRANSITION = 1,
    XCB_SYNC_TESTTYPE_POSITIVE_COMPARISON = 2,
    XCB_SYNC_TESTTYPE_NEGATIVE_COMPARISON = 3
};

enum :int{
    XCB_SYNC_VALUETYPE_ABSOLUTE = 0,
    XCB_SYNC_VALUETYPE_RELATIVE = 1
};

enum :int{
    XCB_SYNC_CA_COUNTER = (1 << 0),
    XCB_SYNC_CA_VALUE_TYPE = (1 << 1),
    XCB_SYNC_CA_VALUE = (1 << 2),
    XCB_SYNC_CA_TEST_TYPE = (1 << 3),
    XCB_SYNC_CA_DELTA = (1 << 4),
    XCB_SYNC_CA_EVENTS = (1 << 5)
};

/**
 * @brief xcb_sync_int64_t
 **/
struct xcb_sync_int64_t {
    int  hi; /**<  */
    uint lo; /**<  */
} ;

/**
 * @brief xcb_sync_int64_iterator_t
 **/
struct xcb_sync_int64_iterator_t {
    xcb_sync_int64_t *data; /**<  */
    int               rem; /**<  */
    int               index; /**<  */
} ;

/**
 * @brief xcb_sync_systemcounter_t
 **/
struct xcb_sync_systemcounter_t {
    xcb_sync_counter_t counter; /**<  */
    xcb_sync_int64_t   resolution; /**<  */
    ushort             name_len; /**<  */
} ;

/**
 * @brief xcb_sync_systemcounter_iterator_t
 **/
struct xcb_sync_systemcounter_iterator_t {
    xcb_sync_systemcounter_t *data; /**<  */
    int                       rem; /**<  */
    int                       index; /**<  */
} ;

/**
 * @brief xcb_sync_trigger_t
 **/
struct xcb_sync_trigger_t {
    xcb_sync_counter_t counter; /**<  */
    uint               wait_type; /**<  */
    xcb_sync_int64_t   wait_value; /**<  */
    uint               test_type; /**<  */
} ;

/**
 * @brief xcb_sync_trigger_iterator_t
 **/
struct xcb_sync_trigger_iterator_t {
    xcb_sync_trigger_t *data; /**<  */
    int                 rem; /**<  */
    int                 index; /**<  */
} ;

/**
 * @brief xcb_sync_waitcondition_t
 **/
struct xcb_sync_waitcondition_t {
    xcb_sync_trigger_t trigger; /**<  */
    xcb_sync_int64_t   event_threshold; /**<  */
} ;

/**
 * @brief xcb_sync_waitcondition_iterator_t
 **/
struct xcb_sync_waitcondition_iterator_t {
    xcb_sync_waitcondition_t *data; /**<  */
    int                       rem; /**<  */
    int                       index; /**<  */
} ;

/** Opcode for xcb_sync_counter. */
const uint XCB_SYNC_COUNTER = 0;

/**
 * @brief xcb_sync_counter_error_t
 **/
struct xcb_sync_counter_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
    uint   bad_counter; /**<  */
    ushort minor_opcode; /**<  */
    ubyte  major_opcode; /**<  */
} ;

/** Opcode for xcb_sync_alarm. */
const uint XCB_SYNC_ALARM = 1;

/**
 * @brief xcb_sync_alarm_error_t
 **/
struct xcb_sync_alarm_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
    uint   bad_alarm; /**<  */
    ushort minor_opcode; /**<  */
    ubyte  major_opcode; /**<  */
} ;

/**
 * @brief xcb_sync_initialize_cookie_t
 **/
struct xcb_sync_initialize_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_sync_initialize. */
const uint XCB_SYNC_INITIALIZE = 0;

/**
 * @brief xcb_sync_initialize_request_t
 **/
struct xcb_sync_initialize_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  desired_major_version; /**<  */
    ubyte  desired_minor_version; /**<  */
} ;

/**
 * @brief xcb_sync_initialize_reply_t
 **/
struct xcb_sync_initialize_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  major_version; /**<  */
    ubyte  minor_version; /**<  */
    ubyte  pad1[22]; /**<  */
} ;

/**
 * @brief xcb_sync_list_system_counters_cookie_t
 **/
struct xcb_sync_list_system_counters_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_sync_list_system_counters. */
const uint XCB_SYNC_LIST_SYSTEM_COUNTERS = 1;

/**
 * @brief xcb_sync_list_system_counters_request_t
 **/
struct xcb_sync_list_system_counters_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
} ;

/**
 * @brief xcb_sync_list_system_counters_reply_t
 **/
struct xcb_sync_list_system_counters_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   counters_len; /**<  */
    ubyte  pad1[20]; /**<  */
} ;

/** Opcode for xcb_sync_create_counter. */
const uint XCB_SYNC_CREATE_COUNTER = 2;

/**
 * @brief xcb_sync_create_counter_request_t
 **/
struct xcb_sync_create_counter_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_sync_counter_t id; /**<  */
    xcb_sync_int64_t   initial_value; /**<  */
} ;

/** Opcode for xcb_sync_destroy_counter. */
const uint XCB_SYNC_DESTROY_COUNTER = 6;

/**
 * @brief xcb_sync_destroy_counter_request_t
 **/
struct xcb_sync_destroy_counter_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_sync_counter_t counter; /**<  */
} ;

/**
 * @brief xcb_sync_query_counter_cookie_t
 **/
struct xcb_sync_query_counter_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_sync_query_counter. */
const uint XCB_SYNC_QUERY_COUNTER = 5;

/**
 * @brief xcb_sync_query_counter_request_t
 **/
struct xcb_sync_query_counter_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_sync_counter_t counter; /**<  */
} ;

/**
 * @brief xcb_sync_query_counter_reply_t
 **/
struct xcb_sync_query_counter_reply_t {
    ubyte            response_type; /**<  */
    ubyte            pad0; /**<  */
    ushort           sequence; /**<  */
    uint             length; /**<  */
    xcb_sync_int64_t counter_value; /**<  */
} ;

/** Opcode for xcb_sync_await. */
const uint XCB_SYNC_AWAIT = 7;

/**
 * @brief xcb_sync_await_request_t
 **/
struct xcb_sync_await_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
} ;

/** Opcode for xcb_sync_change_counter. */
const uint XCB_SYNC_CHANGE_COUNTER = 4;

/**
 * @brief xcb_sync_change_counter_request_t
 **/
struct xcb_sync_change_counter_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_sync_counter_t counter; /**<  */
    xcb_sync_int64_t   amount; /**<  */
} ;

/** Opcode for xcb_sync_set_counter. */
const uint XCB_SYNC_SET_COUNTER = 3;

/**
 * @brief xcb_sync_set_counter_request_t
 **/
struct xcb_sync_set_counter_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_sync_counter_t counter; /**<  */
    xcb_sync_int64_t   value; /**<  */
} ;

/** Opcode for xcb_sync_create_alarm. */
const uint XCB_SYNC_CREATE_ALARM = 8;

/**
 * @brief xcb_sync_create_alarm_request_t
 **/
struct xcb_sync_create_alarm_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_sync_alarm_t   id; /**<  */
    uint               value_mask; /**<  */
    xcb_sync_counter_t counter; /**<  */
    uint               valueType; /**<  */
    xcb_sync_int64_t   value; /**<  */
    uint               testType; /**<  */
    xcb_sync_int64_t   delta; /**<  */
    uint               events; /**<  */
} ;

/** Opcode for xcb_sync_change_alarm. */
const uint XCB_SYNC_CHANGE_ALARM = 9;

/**
 * @brief xcb_sync_change_alarm_request_t
 **/
struct xcb_sync_change_alarm_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_sync_alarm_t   id; /**<  */
    uint               value_mask; /**<  */
    xcb_sync_counter_t counter; /**<  */
    uint               valueType; /**<  */
    xcb_sync_int64_t   value; /**<  */
    uint               testType; /**<  */
    xcb_sync_int64_t   delta; /**<  */
    uint               events; /**<  */
} ;

/** Opcode for xcb_sync_destroy_alarm. */
const uint XCB_SYNC_DESTROY_ALARM = 11;

/**
 * @brief xcb_sync_destroy_alarm_request_t
 **/
struct xcb_sync_destroy_alarm_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_sync_alarm_t alarm; /**<  */
} ;

/**
 * @brief xcb_sync_query_alarm_cookie_t
 **/
struct xcb_sync_query_alarm_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_sync_query_alarm. */
const uint XCB_SYNC_QUERY_ALARM = 10;

/**
 * @brief xcb_sync_query_alarm_request_t
 **/
struct xcb_sync_query_alarm_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_sync_alarm_t alarm; /**<  */
} ;

/**
 * @brief xcb_sync_query_alarm_reply_t
 **/
struct xcb_sync_query_alarm_reply_t {
    ubyte              response_type; /**<  */
    ubyte              pad0; /**<  */
    ushort             sequence; /**<  */
    uint               length; /**<  */
    xcb_sync_trigger_t trigger; /**<  */
    xcb_sync_int64_t   delta; /**<  */
    bool               events; /**<  */
    ubyte              state; /**<  */
    ubyte              pad1[2]; /**<  */
} ;

/** Opcode for xcb_sync_set_priority. */
const uint XCB_SYNC_SET_PRIORITY = 12;

/**
 * @brief xcb_sync_set_priority_request_t
 **/
struct xcb_sync_set_priority_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    uint   id; /**<  */
    int    priority; /**<  */
} ;

/**
 * @brief xcb_sync_get_priority_cookie_t
 **/
struct xcb_sync_get_priority_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_sync_get_priority. */
const uint XCB_SYNC_GET_PRIORITY = 13;

/**
 * @brief xcb_sync_get_priority_request_t
 **/
struct xcb_sync_get_priority_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    uint   id; /**<  */
} ;

/**
 * @brief xcb_sync_get_priority_reply_t
 **/
struct xcb_sync_get_priority_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    int    priority; /**<  */
} ;

/** Opcode for xcb_sync_create_fence. */
const uint XCB_SYNC_CREATE_FENCE = 14;

/**
 * @brief xcb_sync_create_fence_request_t
 **/
struct xcb_sync_create_fence_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_drawable_t   drawable; /**<  */
    xcb_sync_fence_t fence; /**<  */
    bool             initially_triggered; /**<  */
} ;

/** Opcode for xcb_sync_trigger_fence. */
const uint XCB_SYNC_TRIGGER_FENCE = 15;

/**
 * @brief xcb_sync_trigger_fence_request_t
 **/
struct xcb_sync_trigger_fence_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_sync_fence_t fence; /**<  */
} ;

/** Opcode for xcb_sync_reset_fence. */
const uint XCB_SYNC_RESET_FENCE = 16;

/**
 * @brief xcb_sync_reset_fence_request_t
 **/
struct xcb_sync_reset_fence_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_sync_fence_t fence; /**<  */
} ;

/** Opcode for xcb_sync_destroy_fence. */
const uint XCB_SYNC_DESTROY_FENCE = 17;

/**
 * @brief xcb_sync_destroy_fence_request_t
 **/
struct xcb_sync_destroy_fence_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_sync_fence_t fence; /**<  */
} ;

/**
 * @brief xcb_sync_query_fence_cookie_t
 **/
struct xcb_sync_query_fence_cookie_t {
    uint sequence; /**<  */
} ;

/** Opcode for xcb_sync_query_fence. */
const uint XCB_SYNC_QUERY_FENCE = 18;

/**
 * @brief xcb_sync_query_fence_request_t
 **/
struct xcb_sync_query_fence_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_sync_fence_t fence; /**<  */
} ;

/**
 * @brief xcb_sync_query_fence_reply_t
 **/
struct xcb_sync_query_fence_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    bool   triggered; /**<  */
    ubyte  pad1[23]; /**<  */
} ;

/** Opcode for xcb_sync_await_fence. */
const uint XCB_SYNC_AWAIT_FENCE = 19;

/**
 * @brief xcb_sync_await_fence_request_t
 **/
struct xcb_sync_await_fence_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
} ;

/** Opcode for xcb_sync_counter_notify. */
const uint XCB_SYNC_COUNTER_NOTIFY = 0;

/**
 * @brief xcb_sync_counter_notify_event_t
 **/
struct xcb_sync_counter_notify_event_t {
    ubyte              response_type; /**<  */
    ubyte              kind; /**<  */
    ushort             sequence; /**<  */
    xcb_sync_counter_t counter; /**<  */
    xcb_sync_int64_t   wait_value; /**<  */
    xcb_sync_int64_t   counter_value; /**<  */
    xcb_timestamp_t    timestamp; /**<  */
    ushort             count; /**<  */
    bool               destroyed; /**<  */
    ubyte              pad0; /**<  */
} ;

/** Opcode for xcb_sync_alarm_notify. */
const uint XCB_SYNC_ALARM_NOTIFY = 1;

/**
 * @brief xcb_sync_alarm_notify_event_t
 **/
struct xcb_sync_alarm_notify_event_t {
    ubyte            response_type; /**<  */
    ubyte            kind; /**<  */
    ushort           sequence; /**<  */
    xcb_sync_alarm_t alarm; /**<  */
    xcb_sync_int64_t counter_value; /**<  */
    xcb_sync_int64_t alarm_value; /**<  */
    xcb_timestamp_t  timestamp; /**<  */
    ubyte            state; /**<  */
    ubyte            pad0[3]; /**<  */
} ;


/*****************************************************************************
 **
 ** void xcb_sync_alarm_next
 ** 
 ** @param xcb_sync_alarm_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_sync_alarm_next (xcb_sync_alarm_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_sync_alarm_end
 ** 
 ** @param xcb_sync_alarm_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_sync_alarm_end (xcb_sync_alarm_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_sync_counter_next
 ** 
 ** @param xcb_sync_counter_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_sync_counter_next (xcb_sync_counter_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_sync_counter_end
 ** 
 ** @param xcb_sync_counter_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_sync_counter_end (xcb_sync_counter_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_sync_fence_next
 ** 
 ** @param xcb_sync_fence_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_sync_fence_next (xcb_sync_fence_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_sync_fence_end
 ** 
 ** @param xcb_sync_fence_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_sync_fence_end (xcb_sync_fence_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_sync_int64_next
 ** 
 ** @param xcb_sync_int64_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_sync_int64_next (xcb_sync_int64_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_sync_int64_end
 ** 
 ** @param xcb_sync_int64_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_sync_int64_end (xcb_sync_int64_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** char * xcb_sync_systemcounter_name
 ** 
 ** @param /+const+/ xcb_sync_systemcounter_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
extern(C) char *
xcb_sync_systemcounter_name (/+const+/ xcb_sync_systemcounter_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_sync_systemcounter_name_length
 ** 
 ** @param /+const+/ xcb_sync_systemcounter_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_sync_systemcounter_name_length (/+const+/ xcb_sync_systemcounter_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_sync_systemcounter_name_end
 ** 
 ** @param /+const+/ xcb_sync_systemcounter_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_sync_systemcounter_name_end (/+const+/ xcb_sync_systemcounter_t *R  /**< */);


/*****************************************************************************
 **
 ** void xcb_sync_systemcounter_next
 ** 
 ** @param xcb_sync_systemcounter_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_sync_systemcounter_next (xcb_sync_systemcounter_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_sync_systemcounter_end
 ** 
 ** @param xcb_sync_systemcounter_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_sync_systemcounter_end (xcb_sync_systemcounter_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_sync_trigger_next
 ** 
 ** @param xcb_sync_trigger_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_sync_trigger_next (xcb_sync_trigger_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_sync_trigger_end
 ** 
 ** @param xcb_sync_trigger_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_sync_trigger_end (xcb_sync_trigger_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** void xcb_sync_waitcondition_next
 ** 
 ** @param xcb_sync_waitcondition_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_sync_waitcondition_next (xcb_sync_waitcondition_iterator_t *i  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_sync_waitcondition_end
 ** 
 ** @param xcb_sync_waitcondition_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_sync_waitcondition_end (xcb_sync_waitcondition_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_sync_initialize_cookie_t xcb_sync_initialize
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             desired_major_version
 ** @param ubyte             desired_minor_version
 ** @returns xcb_sync_initialize_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_sync_initialize_cookie_t
xcb_sync_initialize (xcb_connection_t *c  /**< */,
                     ubyte             desired_major_version  /**< */,
                     ubyte             desired_minor_version  /**< */);


/*****************************************************************************
 **
 ** xcb_sync_initialize_cookie_t xcb_sync_initialize_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             desired_major_version
 ** @param ubyte             desired_minor_version
 ** @returns xcb_sync_initialize_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_sync_initialize_cookie_t
xcb_sync_initialize_unchecked (xcb_connection_t *c  /**< */,
                               ubyte             desired_major_version  /**< */,
                               ubyte             desired_minor_version  /**< */);


/*****************************************************************************
 **
 ** xcb_sync_initialize_reply_t * xcb_sync_initialize_reply
 ** 
 ** @param xcb_connection_t              *c
 ** @param xcb_sync_initialize_cookie_t   cookie
 ** @param xcb_generic_error_t          **e
 ** @returns xcb_sync_initialize_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_sync_initialize_reply_t *
xcb_sync_initialize_reply (xcb_connection_t              *c  /**< */,
                           xcb_sync_initialize_cookie_t   cookie  /**< */,
                           xcb_generic_error_t          **e  /**< */);


/*****************************************************************************
 **
 ** xcb_sync_list_system_counters_cookie_t xcb_sync_list_system_counters
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_sync_list_system_counters_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_sync_list_system_counters_cookie_t
xcb_sync_list_system_counters (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** xcb_sync_list_system_counters_cookie_t xcb_sync_list_system_counters_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_sync_list_system_counters_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_sync_list_system_counters_cookie_t
xcb_sync_list_system_counters_unchecked (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** int xcb_sync_list_system_counters_counters_length
 ** 
 ** @param /+const+/ xcb_sync_list_system_counters_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_sync_list_system_counters_counters_length (/+const+/ xcb_sync_list_system_counters_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_sync_systemcounter_iterator_t xcb_sync_list_system_counters_counters_iterator
 ** 
 ** @param /+const+/ xcb_sync_list_system_counters_reply_t *R
 ** @returns xcb_sync_systemcounter_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_sync_systemcounter_iterator_t
xcb_sync_list_system_counters_counters_iterator (/+const+/ xcb_sync_list_system_counters_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_sync_list_system_counters_reply_t * xcb_sync_list_system_counters_reply
 ** 
 ** @param xcb_connection_t                        *c
 ** @param xcb_sync_list_system_counters_cookie_t   cookie
 ** @param xcb_generic_error_t                    **e
 ** @returns xcb_sync_list_system_counters_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_sync_list_system_counters_reply_t *
xcb_sync_list_system_counters_reply (xcb_connection_t                        *c  /**< */,
                                     xcb_sync_list_system_counters_cookie_t   cookie  /**< */,
                                     xcb_generic_error_t                    **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_sync_create_counter_checked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_sync_counter_t  id
 ** @param xcb_sync_int64_t    initial_value
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_sync_create_counter_checked (xcb_connection_t   *c  /**< */,
                                 xcb_sync_counter_t  id  /**< */,
                                 xcb_sync_int64_t    initial_value  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_sync_create_counter
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_sync_counter_t  id
 ** @param xcb_sync_int64_t    initial_value
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_sync_create_counter (xcb_connection_t   *c  /**< */,
                         xcb_sync_counter_t  id  /**< */,
                         xcb_sync_int64_t    initial_value  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_sync_destroy_counter_checked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_sync_counter_t  counter
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_sync_destroy_counter_checked (xcb_connection_t   *c  /**< */,
                                  xcb_sync_counter_t  counter  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_sync_destroy_counter
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_sync_counter_t  counter
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_sync_destroy_counter (xcb_connection_t   *c  /**< */,
                          xcb_sync_counter_t  counter  /**< */);


/*****************************************************************************
 **
 ** xcb_sync_query_counter_cookie_t xcb_sync_query_counter
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_sync_counter_t  counter
 ** @returns xcb_sync_query_counter_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_sync_query_counter_cookie_t
xcb_sync_query_counter (xcb_connection_t   *c  /**< */,
                        xcb_sync_counter_t  counter  /**< */);


/*****************************************************************************
 **
 ** xcb_sync_query_counter_cookie_t xcb_sync_query_counter_unchecked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_sync_counter_t  counter
 ** @returns xcb_sync_query_counter_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_sync_query_counter_cookie_t
xcb_sync_query_counter_unchecked (xcb_connection_t   *c  /**< */,
                                  xcb_sync_counter_t  counter  /**< */);


/*****************************************************************************
 **
 ** xcb_sync_query_counter_reply_t * xcb_sync_query_counter_reply
 ** 
 ** @param xcb_connection_t                 *c
 ** @param xcb_sync_query_counter_cookie_t   cookie
 ** @param xcb_generic_error_t             **e
 ** @returns xcb_sync_query_counter_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_sync_query_counter_reply_t *
xcb_sync_query_counter_reply (xcb_connection_t                 *c  /**< */,
                              xcb_sync_query_counter_cookie_t   cookie  /**< */,
                              xcb_generic_error_t             **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_sync_await_checked
 ** 
 ** @param xcb_connection_t                   *c
 ** @param uint                                wait_list_len
 ** @param /+const+/ xcb_sync_waitcondition_t *wait_list
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_sync_await_checked (xcb_connection_t                   *c  /**< */,
                        uint                                wait_list_len  /**< */,
                        /+const+/ xcb_sync_waitcondition_t *wait_list  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_sync_await
 ** 
 ** @param xcb_connection_t                   *c
 ** @param uint                                wait_list_len
 ** @param /+const+/ xcb_sync_waitcondition_t *wait_list
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_sync_await (xcb_connection_t                   *c  /**< */,
                uint                                wait_list_len  /**< */,
                /+const+/ xcb_sync_waitcondition_t *wait_list  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_sync_change_counter_checked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_sync_counter_t  counter
 ** @param xcb_sync_int64_t    amount
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_sync_change_counter_checked (xcb_connection_t   *c  /**< */,
                                 xcb_sync_counter_t  counter  /**< */,
                                 xcb_sync_int64_t    amount  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_sync_change_counter
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_sync_counter_t  counter
 ** @param xcb_sync_int64_t    amount
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_sync_change_counter (xcb_connection_t   *c  /**< */,
                         xcb_sync_counter_t  counter  /**< */,
                         xcb_sync_int64_t    amount  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_sync_set_counter_checked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_sync_counter_t  counter
 ** @param xcb_sync_int64_t    value
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_sync_set_counter_checked (xcb_connection_t   *c  /**< */,
                              xcb_sync_counter_t  counter  /**< */,
                              xcb_sync_int64_t    value  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_sync_set_counter
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_sync_counter_t  counter
 ** @param xcb_sync_int64_t    value
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_sync_set_counter (xcb_connection_t   *c  /**< */,
                      xcb_sync_counter_t  counter  /**< */,
                      xcb_sync_int64_t    value  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_sync_create_alarm_checked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_sync_alarm_t    id
 ** @param uint                value_mask
 ** @param xcb_sync_counter_t  counter
 ** @param uint                valueType
 ** @param xcb_sync_int64_t    value
 ** @param uint                testType
 ** @param xcb_sync_int64_t    delta
 ** @param uint                events
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_sync_create_alarm_checked (xcb_connection_t   *c  /**< */,
                               xcb_sync_alarm_t    id  /**< */,
                               uint                value_mask  /**< */,
                               xcb_sync_counter_t  counter  /**< */,
                               uint                valueType  /**< */,
                               xcb_sync_int64_t    value  /**< */,
                               uint                testType  /**< */,
                               xcb_sync_int64_t    delta  /**< */,
                               uint                events  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_sync_create_alarm
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_sync_alarm_t    id
 ** @param uint                value_mask
 ** @param xcb_sync_counter_t  counter
 ** @param uint                valueType
 ** @param xcb_sync_int64_t    value
 ** @param uint                testType
 ** @param xcb_sync_int64_t    delta
 ** @param uint                events
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_sync_create_alarm (xcb_connection_t   *c  /**< */,
                       xcb_sync_alarm_t    id  /**< */,
                       uint                value_mask  /**< */,
                       xcb_sync_counter_t  counter  /**< */,
                       uint                valueType  /**< */,
                       xcb_sync_int64_t    value  /**< */,
                       uint                testType  /**< */,
                       xcb_sync_int64_t    delta  /**< */,
                       uint                events  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_sync_change_alarm_checked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_sync_alarm_t    id
 ** @param uint                value_mask
 ** @param xcb_sync_counter_t  counter
 ** @param uint                valueType
 ** @param xcb_sync_int64_t    value
 ** @param uint                testType
 ** @param xcb_sync_int64_t    delta
 ** @param uint                events
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_sync_change_alarm_checked (xcb_connection_t   *c  /**< */,
                               xcb_sync_alarm_t    id  /**< */,
                               uint                value_mask  /**< */,
                               xcb_sync_counter_t  counter  /**< */,
                               uint                valueType  /**< */,
                               xcb_sync_int64_t    value  /**< */,
                               uint                testType  /**< */,
                               xcb_sync_int64_t    delta  /**< */,
                               uint                events  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_sync_change_alarm
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_sync_alarm_t    id
 ** @param uint                value_mask
 ** @param xcb_sync_counter_t  counter
 ** @param uint                valueType
 ** @param xcb_sync_int64_t    value
 ** @param uint                testType
 ** @param xcb_sync_int64_t    delta
 ** @param uint                events
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_sync_change_alarm (xcb_connection_t   *c  /**< */,
                       xcb_sync_alarm_t    id  /**< */,
                       uint                value_mask  /**< */,
                       xcb_sync_counter_t  counter  /**< */,
                       uint                valueType  /**< */,
                       xcb_sync_int64_t    value  /**< */,
                       uint                testType  /**< */,
                       xcb_sync_int64_t    delta  /**< */,
                       uint                events  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_sync_destroy_alarm_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_sync_alarm_t  alarm
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_sync_destroy_alarm_checked (xcb_connection_t *c  /**< */,
                                xcb_sync_alarm_t  alarm  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_sync_destroy_alarm
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_sync_alarm_t  alarm
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_sync_destroy_alarm (xcb_connection_t *c  /**< */,
                        xcb_sync_alarm_t  alarm  /**< */);


/*****************************************************************************
 **
 ** xcb_sync_query_alarm_cookie_t xcb_sync_query_alarm
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_sync_alarm_t  alarm
 ** @returns xcb_sync_query_alarm_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_sync_query_alarm_cookie_t
xcb_sync_query_alarm (xcb_connection_t *c  /**< */,
                      xcb_sync_alarm_t  alarm  /**< */);


/*****************************************************************************
 **
 ** xcb_sync_query_alarm_cookie_t xcb_sync_query_alarm_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_sync_alarm_t  alarm
 ** @returns xcb_sync_query_alarm_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_sync_query_alarm_cookie_t
xcb_sync_query_alarm_unchecked (xcb_connection_t *c  /**< */,
                                xcb_sync_alarm_t  alarm  /**< */);


/*****************************************************************************
 **
 ** xcb_sync_query_alarm_reply_t * xcb_sync_query_alarm_reply
 ** 
 ** @param xcb_connection_t               *c
 ** @param xcb_sync_query_alarm_cookie_t   cookie
 ** @param xcb_generic_error_t           **e
 ** @returns xcb_sync_query_alarm_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_sync_query_alarm_reply_t *
xcb_sync_query_alarm_reply (xcb_connection_t               *c  /**< */,
                            xcb_sync_query_alarm_cookie_t   cookie  /**< */,
                            xcb_generic_error_t           **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_sync_set_priority_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              id
 ** @param int               priority
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_sync_set_priority_checked (xcb_connection_t *c  /**< */,
                               uint              id  /**< */,
                               int               priority  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_sync_set_priority
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              id
 ** @param int               priority
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_sync_set_priority (xcb_connection_t *c  /**< */,
                       uint              id  /**< */,
                       int               priority  /**< */);


/*****************************************************************************
 **
 ** xcb_sync_get_priority_cookie_t xcb_sync_get_priority
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              id
 ** @returns xcb_sync_get_priority_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_sync_get_priority_cookie_t
xcb_sync_get_priority (xcb_connection_t *c  /**< */,
                       uint              id  /**< */);


/*****************************************************************************
 **
 ** xcb_sync_get_priority_cookie_t xcb_sync_get_priority_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              id
 ** @returns xcb_sync_get_priority_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_sync_get_priority_cookie_t
xcb_sync_get_priority_unchecked (xcb_connection_t *c  /**< */,
                                 uint              id  /**< */);


/*****************************************************************************
 **
 ** xcb_sync_get_priority_reply_t * xcb_sync_get_priority_reply
 ** 
 ** @param xcb_connection_t                *c
 ** @param xcb_sync_get_priority_cookie_t   cookie
 ** @param xcb_generic_error_t            **e
 ** @returns xcb_sync_get_priority_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_sync_get_priority_reply_t *
xcb_sync_get_priority_reply (xcb_connection_t                *c  /**< */,
                             xcb_sync_get_priority_cookie_t   cookie  /**< */,
                             xcb_generic_error_t            **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_sync_create_fence_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param xcb_sync_fence_t  fence
 ** @param bool              initially_triggered
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_sync_create_fence_checked (xcb_connection_t *c  /**< */,
                               xcb_drawable_t    drawable  /**< */,
                               xcb_sync_fence_t  fence  /**< */,
                               bool              initially_triggered  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_sync_create_fence
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param xcb_sync_fence_t  fence
 ** @param bool              initially_triggered
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_sync_create_fence (xcb_connection_t *c  /**< */,
                       xcb_drawable_t    drawable  /**< */,
                       xcb_sync_fence_t  fence  /**< */,
                       bool              initially_triggered  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_sync_trigger_fence_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_sync_fence_t  fence
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_sync_trigger_fence_checked (xcb_connection_t *c  /**< */,
                                xcb_sync_fence_t  fence  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_sync_trigger_fence
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_sync_fence_t  fence
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_sync_trigger_fence (xcb_connection_t *c  /**< */,
                        xcb_sync_fence_t  fence  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_sync_reset_fence_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_sync_fence_t  fence
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_sync_reset_fence_checked (xcb_connection_t *c  /**< */,
                              xcb_sync_fence_t  fence  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_sync_reset_fence
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_sync_fence_t  fence
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_sync_reset_fence (xcb_connection_t *c  /**< */,
                      xcb_sync_fence_t  fence  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_sync_destroy_fence_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_sync_fence_t  fence
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_sync_destroy_fence_checked (xcb_connection_t *c  /**< */,
                                xcb_sync_fence_t  fence  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_sync_destroy_fence
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_sync_fence_t  fence
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_sync_destroy_fence (xcb_connection_t *c  /**< */,
                        xcb_sync_fence_t  fence  /**< */);


/*****************************************************************************
 **
 ** xcb_sync_query_fence_cookie_t xcb_sync_query_fence
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_sync_fence_t  fence
 ** @returns xcb_sync_query_fence_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_sync_query_fence_cookie_t
xcb_sync_query_fence (xcb_connection_t *c  /**< */,
                      xcb_sync_fence_t  fence  /**< */);


/*****************************************************************************
 **
 ** xcb_sync_query_fence_cookie_t xcb_sync_query_fence_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_sync_fence_t  fence
 ** @returns xcb_sync_query_fence_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_sync_query_fence_cookie_t
xcb_sync_query_fence_unchecked (xcb_connection_t *c  /**< */,
                                xcb_sync_fence_t  fence  /**< */);


/*****************************************************************************
 **
 ** xcb_sync_query_fence_reply_t * xcb_sync_query_fence_reply
 ** 
 ** @param xcb_connection_t               *c
 ** @param xcb_sync_query_fence_cookie_t   cookie
 ** @param xcb_generic_error_t           **e
 ** @returns xcb_sync_query_fence_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_sync_query_fence_reply_t *
xcb_sync_query_fence_reply (xcb_connection_t               *c  /**< */,
                            xcb_sync_query_fence_cookie_t   cookie  /**< */,
                            xcb_generic_error_t           **e  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_sync_await_fence_checked
 ** 
 ** @param xcb_connection_t           *c
 ** @param uint                        fence_list_len
 ** @param /+const+/ xcb_sync_fence_t *fence_list
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_sync_await_fence_checked (xcb_connection_t           *c  /**< */,
                              uint                        fence_list_len  /**< */,
                              /+const+/ xcb_sync_fence_t *fence_list  /**< */);


/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_sync_await_fence
 ** 
 ** @param xcb_connection_t           *c
 ** @param uint                        fence_list_len
 ** @param /+const+/ xcb_sync_fence_t *fence_list
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_sync_await_fence (xcb_connection_t           *c  /**< */,
                      uint                        fence_list_len  /**< */,
                      /+const+/ xcb_sync_fence_t *fence_list  /**< */);



/**
 * @}
 */
