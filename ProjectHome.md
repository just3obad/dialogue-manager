A call flow is a manually designed finite state machine describing the structure of a
spoken dialog system (SDS). Its nodes represent activities performed by the SDS (e.g.,asking a question to the caller or performing a database lookup). Transitions represent
conditions (e.g. a certain response from the caller or a return value from the database
lookup), based upon which the state machine transitions to the next state. Using the call
flow paradigm, very complex SDSs can be built comprising thousands of activities and
resulting in possible call durations of 20 or 30 minutes.



Due to the complexity of call flows, the designer has to make many decisions (such as how
to formulate a question or in which order to perform activities) that may be sub-optimal.
Therefore, a novel paradigm implements random decisions executed at runtime into call
flows. In this way, several alternative approaches are systematically tested, and the
best-performing ones can be determined.
This thesis is to investigate how the "best-performing" alternatives can be identified
considering:
- statistical significance of results given the available data,
- the fact that such best performers may differ under certain conditions (e.g., it may
be advisable to ask a short question to elderly people but a more complex one to expert
callers),
- the impact of changes to the way the randomizer distributes calls among the
alternatives based on observed performance differences.