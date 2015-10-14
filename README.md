Module converter
=================

[Enterprise Modules](https://www.enterprisemodules.com) provides a set of high-quality modules to manage Oracle databases and Oracle WebLogic installations. These modules originated from the original Public Domain modules, but where changed to:
- Add better documentation
- Add better error checking
- Add more enterprise options

## Why a name change

Puppet doesn't support namespaces. So for Puppet to differentiate between the unsupported Public Domain modules and the supported modules from [Enterprise Modules](https://www.enterprisemodules.com), we needed different names. 

## Automatically change names

The utility in this repository, automatically converts your Puppet class from using the Open Source Oracle and WebLogic modules into using the supported modules from Enterprise Modules.

## Installation

This utility is distributed as a Ruby Gem. So to install it, you'll need a running ruby environment. To install this gem, enter:

```sh
$ gem install emconnvert
emconvert (1.0.0) installed.
````

## Usage

The syntax of the `emconvert` utility is:

```
$ emconvert [-v] [-b] wildcard_file
```

Where the options are:

* `-v` or `-verbose` Show a log of all files being processed and changed
* `-b` or `--backup` Make a backup of a file, when it is changed

Default the converter makes a backup, but doesn't log its activity.

## Examples

Here is an example:

```
$ emconvert -v -b my_module/**/*.pp
```

This command will check all files with extension `.pp` and change all calls and references to the Oracle and Weblogic modules to calls and references to the puppet modules provided by Enterprise Modules.

## What to convert

Normaly there are several places where the full names are used. In your puppet files - the files with extension `.pp` - of course. And in your `hiera` files. Normaly your `hiera` files have an extension `.yaml`. So you'll have to run the `emconvert` over both the set of files. An example:

```
$ emconvert -v -b all_my_puppet_code/**/*.pp  # Convert all the puppet files
$ emconvert -v -b all_my_hiera_data/**/*.yaml  # Convert all the hiera data
```

## After conversion

After you have converted your modules, you can remove the obsolete Public Domain modules. The are:

- `hajee-easy_type`
- `biemond-oradb`
- `hajee-oracle`
- `biemond-orawls`
- `biemond-orautils`

And install the Enterprise Module supported modules:

- `enterprisemodules-easy_type`
- [`enterprisemodules-ora_install`](https://www.enterprisemodules.com/shop/products/puppet-ora_install-module)
- [`enterprisemodules-ora_config`](https://www.enterprisemodules.com/shop/products/puppet-ora_config-module)
- [`enterprisemodules-wls_install`](https://www.enterprisemodules.com/shop/products/puppet-wls_install-module)
- [`enterprisemodules-wls_config`](https://www.enterprisemodules.com/shop/products/puppet-wls_config-module)

