FROM python:2.7-alpine
MAINTAINER Justin Barksdale "jusbarks@cisco.com"

# RUN apk add --no-cache --virtual .build-deps \
#    git \
#    libmysqlclient-dev \
#    python \
#    python-pip \
# RUN pip install --no-cache-dir <packages_that_require_gcc...> \
# RUN apk del .build-deps

ADD . /app
WORKDIR /app

RUN pip install -r requirements.txt

CMD [ "python", "./agents/chive_agent_aci.py" ]