## Step 0
### Follow the directions for configuring configuring a jms, in_memory, or inline adapter located in ../SETUP

## Step 1
### Start up the application
* rm -f qwirk\_persist.yml
* rackup

## Step 2
* Browse to http://localhost:9292
* Open up the tree to Qwirk => S1 => Attributes
* Enter 2 for max_count and click the Update button.
* Open up the tree to Qwirk => S2 => Attributes
* Enter 3 for max_count and click the Update button.
* Refresh the browser so that you get the worker updates to the tree

## Step 3
* Open the tree to Publisher => Operations => send\_bar or send\_baz
* Enter values for the various arguments and click Execute.

## Step 4
* cntl-c the rackup process and start it back up.  It should come back with
  the workers and the config values that have been configured via the browser.

