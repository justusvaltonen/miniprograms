
There should be general testing made for everything that is written. Generating testcases enables discovery of holes in ones knowledge.
In this file there are some testcases listed. More detailed tests are in each folder that hold scripts.


Data types: string, number, variable, object, binary...
-Are there conversions happening automatically somewhere where we don't specify?

Dependencies:
-Do we need something installed for something to work?

Input:
-What if we pass something that isn't expected as input?

Privilages:
-Is there a possibility of escalation?
-Is root enabled?
-What files need what minimal permissions?

Returning and background:
-Is code executed till the end?
-Find out about memleaks

Scopes:
-Is the script initiated by whom?
-Is the data intended passed to the script?
-You can test by echoing PID: ps -p $$
-Sourcing should be at least to some degree understood



