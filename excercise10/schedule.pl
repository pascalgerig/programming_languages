% Query by calling get using free variables for what you want to know
% e.g. `get(monday, X, Y) .` will return schedule and difficulty of whats planned on monday
% use `_` if you do not care about something, e.g. `get(monday, X, _)` will return only the schedule of monday.
get(monday, english, simple).
get(tuesday, programming, medium).
get(tuesday, ai, hard).
get(wednesday, hacking, hard).
get(thursday, networking, medium).
get(friday, pl, easiest).

