## dev cli
> Install all the cli tools globally
Some tiny script tools in cli maner, install all the tools as below line
```sh
$ git clone https://github.com/kequandian/dev-cli
$ cd dev-cli
$ npm i -g
```

### current cli
- remote
> Used to handle multi git repo in current dir
```shell
$ remote
Usage:
   remote <CMD> <dir> [target]
 CMD: <get|xfr|mv|fix|clone|init|push|pull|test|mirror>
   xfr <target>    -- transfer one repo to another
   mv              -- mv one repo name to new name
   fix <target>    -- fix one repo base on the dir name
   clone <target>  -- clone a repo base on the dir repo
   pull .          -- pull all the repo in current dir
   clean .          -- clean current dir base on pom.xml
   mirror <target> [mirror] -- mirror current repo into a mirror repo
   mirrorback <target> [imrror] -- mirror repo into current target
```

- standalone
> used to run target/pack-1.0.0-standalone.jar locally 
> first change path into the mvn project and type 'standalone'

```shell
$ standalone -h

Usage: standalone [TARGET] [OPTIONS]

   OPTIONS:
      -h               -- print usage
      --server-port    -- change server port other then 8080
   TARGET:  default to 'standalone'
      .         -- ignore config
      -         -- force rebuild: mvn clean
      name      -- no target, default to standalone
   e.g.
      standalone -h
      standalone
      standalone -
      standalone .
      standalone --server.port=8081
      standalone test
```

- pdf-page 
> used to handle pdf file 
```shell
$ pdf-page
Usage: pdf-page <source.pdf> <OPTIONS> <PARAM> [..]

Page range support 1,2 [3-5], -1 mean last page.
OPTIONS:
 -h,--head   Head with images/pages.
             pdf-page <source> -h <image-url|image-dir|pages.pdf>
 -t,--tail   Tail up images/pages
             pdf-page <source> -t <image-url|image-dir|pages.pdf>
 -p,--pick   Pick up the range pages as new file.
             pdf-page <source> -p <page-range>
 -d,--delete Delete page.
             pdf-page <source> -d <page-range>
 -s,--split  Split the .pdf into multi ones with certain number of pages.
             pdf-page <source> -s <pages>
 -m,--mask   Mask specific area on page.
             pdf-page <source> -m <page-number> <pos> <size>
 -r,--ruler  Draw a ruler on page.
             pdf-page <source> -r <page-number>
 -T,--text   Draw text on page.
             pdf-page <source> -t <page-number> <posx> <posy> <text> <LEFT|CENTER|RIGHT> <fontSize> [fontFamily]
 -n,--number Number the page.
             pdf-page <source> -n <page-number>
```

- db-excel
> Used to convert database structrue into Excel report


## Some tips

### How to get the script running path 
```shell
abs_path=()
os_name=$(uname)
if [[ $os_name == 'Darwin' ]];then  ## MAC
   abs_path=$(greadlink -f "$0")
else                                ## Windows
   abs_path=$(readlink -f "$0")
fi
```

### Markdown famous devops tools for reference
- CoreOS
- chef
- puppet
- Marathon/Mesos
- saltstack
- Prometheus + Grafana
