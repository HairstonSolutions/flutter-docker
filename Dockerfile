FROM dart

# Pull Flutter Source
WORKDIR /usr/local/
RUN git clone https://github.com/flutter/flutter.git -b stable
ENV PATH="${PATH}:/usr/local/flutter/bin"

RUN flutter --version

ENTRYPOINT [ "flutter" ]
