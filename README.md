Goal :
--------
This is a simple Docker container to provide random apache logs.
It's based on [Fake-Apache-Log-Generator](https://github.com/kiritbasu/Fake-Apache-Log-Generator)

The default behaviour is the following :
```sql
python apache-fake-log-gen.py -o LOG -p /var/log/apache/apache -n 0 -s 3
```
The endless generated file is located in /var/log and a line is appended every 3 seconds.

Timezone :
----------
You can change the timezone mounting */etc/timezone* and */etc/localtime* files with a file content such as :
```shell
Europe/Paris
```


Licences :
----------

Copyright (c) 2017 Fabrice ECAILLE aka Febbweiss

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

