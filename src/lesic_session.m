:- module lesic_session.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:- interface.

:- import_module bitmap.

:- type session_id.

:- func to_bits(session_id) = bitmap.
:- mode to_bits(in) = out is det.

:- func from_bits(bitmap) = session_id.
:- mode from_bits(in) = out is semidet.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:- implementation.

:- type session_id ==
    bitmap.

to_bits(SessionId) = SessionId.

from_bits(Bitmap) = Bitmap :-
    bitmap.num_bits(Bitmap) = 128.
