# Meltano Fun!!!
This is a completely isolated and dockerized meltano fun walkthrough through the 
major use cases, showing what it really means to have it as an "DataOpsOS":
1. Basic extract and load (EL)
2. Running transformations (T) => EL-T
3. Publishing data back to some other source, "Reverse ETL"
4. Doing light transformations on the fly while ingesting => ETL
(5. more to come, still haven't explored orchestrators & more metastuff)

Thhe repository also spins up a postgres instance so no other prereqs than
what batect requires (which is basically Docker & a JVM).

## Use This 
Using this repository is super easy as it all runs inside docker via batect.

Just have the batect reqs ready and run ```./batect --list-tasks ```, 
then go read & shell yourself through the list of things.

```
$ ./batect --list-tasks
0. Run Once tasks:
- 1_init: Initialize a new project in the "new_project" folder
- 2_add_ex: Add CSV extractor
- 3_add_lo: Add Postgres target
- 4_cp: Add proper config to taps, and source data.

1. EL Runs:
- 5_el: Do one el run...

2. T  Runs:
- 6_add_dbt: 1. Adding a transformer plugin

2. T Runs:
- 7_configure: 2. Configure the dbt project
- 8_elt: 3. Do a dbt run!

3. P Runs:
- 10_add_tp: 2. Add an Postgres extractor
- 11_p: 3. Run our publishing run....
- 9_add_jl: 1. Add another loader to push to some external target

4. ETL Runs:
- 12_add_tf: 1. Add a so-called mapper to transform.
- 13_etl: 2. Add an Postgres extractor

Utility tasks:
- clean: Delete meltano project stuff...
- db: Start up DB on its own, possibly do this once to load up the "cache"
- sh: Open a shell in our cool build env to debug stuff
- ui: fire up UI-server, UI is running, now head over to  http://localhost:5000/
- version: Display version
```
