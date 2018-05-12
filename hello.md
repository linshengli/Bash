通过执行`shell`脚本`hello.sh`输出`Hello, world!`
```
#!/bin/bash
echo "Hello, world!"
```
第一行`#!/bin/bash`指定该脚本的执行程序为`/bin/bash`,如果你有其他`shell`安装，比如说`zsh`安装在`/bin/zsh`,可以将其替换为`zsh`的路径。
```
#!/bin/zsh
echo "Hello world!"
```
然后使用`echo`内置函数，输出`Hello, world!`。
常见的`Shell`有:
- `zsh` (/bin/zsh)
- `csh` (/bin/csh)
- `Bourne Shell`（/usr/bin/sh或/bin/sh）
- `Bourne Again Shell`（/bin/bash）
