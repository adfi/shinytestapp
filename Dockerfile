FROM rocker/shiny-verse:latest 

COPY . /srv/shiny-server/App 

EXPOSE 3838 

RUN sudo chown -R shiny:shiny /srv/shiny-server 

CMD ["/usr/bin/shiny-server.sh"]