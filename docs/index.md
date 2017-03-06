# TA-ShodanWorkflowActions

## Shodan Workflow Actions for Splunk

This app provides Shodan Workflow Actions for Splunk.

Install this app on your search head (6.3+) to add the workflow actions; there is no configuration required.

Documentation:

- [Release Notes](ReleaseNotes.md)
- [Support and Contributing](Contributing.md)

## Installation and Compatibility

This app is compatible with Splunk Enterprise 6.3+, and only needs to be installed on search heads.

There is no setup, configuration or index changes required for these workflow actions.

Where relevant, this app uses CIM-compliant field names. If actions are not available from field values, check that the fields are named correctly or consider using aliases (or a local `workflow_actions.conf`) where needed.

## Shodan access requirements

Note that many of the workflow actions provided in this app require logging in to Shodan. As this app does not use the Shodan API, you do not need a paid account, any valid Shodan account will allow filtered searches.

|Workflow Action|Unregistered|Registered|
|:--------------|:----------:|:---------|
|General Search|✔|✔|
|Domain Search|✕|✔|
|OS/System Search|✕|✔|
|City Search|✕|✔|
|Port Search|✕|✔|
|Host/IP Search|✔|✔|