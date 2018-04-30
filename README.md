# RSYSLOG

[![Cookbook](http://img.shields.io/cookbook/v/chef-rsyslog.svg)](https://supermarket.chef.io/cookbooks/chef-rsyslog)
[![Support](https://img.shields.io/badge/support-%3C3-brightgreen.svg)](https://www.patreon.com/wbotelhos)

Installs and configure RSYSLOG.

## Config

- `node['chef-rsyslog']['configure']`: Arguments given to `configure` command before compile
- `node['chef-rsyslog']['files']`: Files you want to watch
- `node['chef-rsyslog']['modules']`: Built-in modules: `datadog`

- `node['chef-rsyslog']['dir_create_mode']`: [doc](https://www.rsyslog.com/doc/rsconf1_dircreatemode.html)
- `node['chef-rsyslog']['file_create_mode']`: [doc](https://www.rsyslog.com/doc/rsconf1_filecreatemode.html)
- `node['chef-rsyslog']['file_group']`: [doc](https://www.rsyslog.com/doc/rsconf1_filegroup.html)
- `node['chef-rsyslog']['file_owner']`: [doc](https://www.rsyslog.com/doc/rsconf1_fileowner.html)
- `node['chef-rsyslog']['polling_interval']`: Time in second to execute the polling on file
- `node['chef-rsyslog']['priv_drop_to_group']`: [doc](https://www.rsyslog.com/doc/droppriv.html)
- `node['chef-rsyslog']['priv_drop_to_user']`: [doc](https://www.rsyslog.com/doc/droppriv.html)
- `node['chef-rsyslog']['umask']`: [doc](https://www.rsyslog.com/doc/rsconf1_umask.html)

- `node['chef-rsyslog']['source']['checksum']`: Checksum of the downloaded tarball
- `node['chef-rsyslog']['source']['extension']`: The extension of the downloaded tarball
- `node['chef-rsyslog']['source']['uri']`: The URI, with no file name of the downloaded tarball
- `node['chef-rsyslog']['source']['version']`: The version number of the downloaded tarball

- `node['chef-rsyslog']['source']['folder_name']`: The folder name of the downloaded tarball
- `node['chef-rsyslog']['source']['file_name']`: The file name of the downloaded tarball
- `node['chef-rsyslog']['source']['file_path']`: The file path where tarball will be saved
- `node['chef-rsyslog']['source']['folder_path']`: The folder path where tarball will be extracted
- `node['chef-rsyslog']['source']['url']`: The URL for download of the tarball

- `node['chef-rsyslog']['libfastjson']['source']['checksum']`: Checksum of the downloaded tarball
- `node['chef-rsyslog']['libfastjson']['source']['extension']`: The extension of the downloaded tarball
- `node['chef-rsyslog']['libfastjson']['source']['uri']`: The URI, with no file name of the downloaded tarball
- `node['chef-rsyslog']['libfastjson']['source']['version']`: The version number of the downloaded tarball

- `node['chef-rsyslog']['libfastjson']['source']['folder_name']`: The folder name of the downloaded tarball
- `node['chef-rsyslog']['libfastjson']['source']['file_name']`: The file name of the downloaded tarball
- `node['chef-rsyslog']['libfastjson']['source']['file_path']`: The file path where tarball will be saved
- `node['chef-rsyslog']['libfastjson']['source']['folder_path']`: The folder path where tarball will be extracted
- `node['chef-rsyslog']['libfastjson']['source']['url']`: The URL for download of the tarball

- `node['chef-rsyslog']['source']['dependencies']`: Libs needed to precompile and configurates the RSYSLOG

## Usage

#### Berkshelf

```rsyslog
source 'https://supermarket.chef.io'

cookbook 'chef-rsyslog'
```

#### Node

The following nodes is an example of the minimal needed to run correctly this cookbook:

```yml
{
  "run_list": [
    "recipe[chef-rsyslog]"
  ]
}
```

##### Files

By default, the path of the files will be used as `Tag` on `imfile` replacing `/` by `_`.

```yml
"chef-rsyslog": {
  "files": [
    "/var/log/nginx/access.log",
  }
}
```

The path `/var/log/nginx/access.log` wil be a `Tag` like `_var_log_nginx_access.log`.
If you want a custom tag, just pass the name separated by a space after the file name.

```yml
"chef-rsyslog": {
  "files": [
    "/var/log/nginx/access.log nginx_access",
  }
}
```

Now `Tag` will be `nginx_access`.

#### Modules

Modules are configurations pre written for you, just pass your credentials.


##### Datadog

Just add the the [Datadog](https://www.datadoghq.com) API Key and it will work out of box:

```yml
"modules": {
  "datadog": {
    "api_key": "my_api_key"
  }
}
```
