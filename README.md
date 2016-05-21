# OneAPM for Discourse

## 安装

 1. 用运行docker的用户名 SSH 进入你的 discourse 服务器into your forum server as the user running docker (probably root)
 2. `cd /var/discourse`
 3. 打开文件 `containers/app.yml`
 4. 找到 `env:` , 增加 `ONEAPM_LICENSE_KEY: <your_license_key>`
 5. 在 `env:` , 增加 `ONEAPM_APP_NAME: <name_of_your_forums>`
 6. 找到底部的 `hooks` ，在 `cmd:` 中增加如下内容

```yaml
- git clone https://github.com/liuyuanli/oneapm-discourse.git
```

重新构建并重启 discourse

```sh
$ cd /var/discourse
$ ./launcher rebuild app
$ ./launcher start app
```

也可以通过访问安装后的 Discourse 的前端的链接 `/admin/upgrade` 进行升级。

## 查看性能

[oneapm]: http://www.oneapm.com/


