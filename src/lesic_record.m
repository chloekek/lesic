:- module lesic_record.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:- interface.

:- import_module io.
:- import_module lesic_session.

:- type enter --->
    enter(
        enter_session_id :: session_id,
        enter_class :: string,
        enter_metric :: float
    ).

:- pred record_enter(enter, io, io).
:- mode record_enter(in, di, uo) is det.

:- type leave --->
    leave(
        leave_session_id :: session_id
    ).

:- pred record_leave(leave, io, io).
:- mode record_leave(in, di, uo) is det.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:- implementation.

record_enter(Enter, !IO).

record_leave(Leave, !IO).
