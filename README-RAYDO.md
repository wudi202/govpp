### 说明

1. sdwan产品所用api为vpp编译出来的json文件生成，所以在后续发布时，可能需要一个机制同步这两部分内容。
2. sdwan所用api文件，请拷贝到vedge/bin_api目录（包括vpe.json)，执行make install后，在vedge目录下
   使用$GOPATH/bin/binapi-generator --input-dir=bin_api --output-dir=bin_api
   生成api后，提交生成的代码后，sdwan代码中setupDev.py的目前不支持更新git repo，需要自行进行external
   目录去pull，后续可考虑自动化此过程。