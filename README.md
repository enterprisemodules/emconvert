Module converter
=================

[Enterprise Modules](https://www.enterprisemodules.com) provides a set of high-quality modules to manage Oracle databases and Oracle WebLogic installations. These modules originated from the original Open Source modules, but where changed to:
- Add better documentation
- Add better error checking
- Add more enterprise options

## Why a name change

Puppet doesn't support namespaces. So for puppet to differentiate between the unsupported Open Source modules and the supported modules from [Enterprise Modules], we needed different names.

## Automatically change names

This utility automatically converts your Puppet class from using the Open Source Oracle and WebLogic modules into using the supported modules from Enterprise Modules.

## Installation

This utility is distributed as a Ruby Gem. So to install it, you'll need a running ruby environment. To install this gem, enter:

```sh
$ gem install emconvert
Successfully installed emconvert-1.0.0
1 gem installed
````

## Usage

The syntax of the `emconvert` utility is:

```
$ emconvert [-v] [-b] wildcard_file
```

Where the options are:
-v --verbose Show a log of all files being processed and changed
-b --backup Make a backup of a file, when it is changed

## Examples

Here is an example:

```
$ emconvert -v -b my_module/**/*.pp
```

This command will check all files with extension `.pp` and change all calls and references to the Oracle and Weblogic modules to calls and references to the puppet modules provided by Enterprise Modules.