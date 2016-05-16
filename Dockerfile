# KBE_webconsole
#
# VERSION               0.0.1

FROM centos
MAINTAINER haixiao <xiaohaoppy@163.com>

RUN yum update -y
ADD webconsole /webconsole
ADD pycommon /pycommon
RUN python /webconsole/manage.py makemigrations && python /webconsole/manage.py migrate


CMD ["sh", "/webconsole/run_server.sh"]