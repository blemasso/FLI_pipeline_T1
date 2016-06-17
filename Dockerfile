from viplatform/matlab-compiler-runtime
RUN LD_LIBRARY_PATH="" yum install zip -y
ADD bin /usr/local/pipeline_T1/bin
RUN chmod 777 /usr/local/pipeline_T1/bin/pipeline_T1
ENV PATH=$PATH:/usr/local/pipeline_T1/bin
