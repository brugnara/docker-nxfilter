#
# Latest NxFadmin from bitbucket repo
#

FROM packetworks/nxfilter-base:latest

MAINTAINER Charles Gunzelman

RUN wget -q https://bitbucket.org/DeepWoods/nxfadmin/get/master.zip
RUN mkdir /nxfilter/skins
RUN unzip master.zip -d /nxfilter/skins/
RUN mv /nxfilter/skins/De*/skins/nxfadmin /nxfilter/skins/
RUN rm -rf /nxfilter/skins/De*
RUN rm -f *.zip
RUN echo " " >> /nxfilter/conf/cfg.default
RUN echo "www_dir = skins/nxfadmin" >> /nxfilter/conf/cfg.default
CMD /nxfilter/bin/startup.sh

