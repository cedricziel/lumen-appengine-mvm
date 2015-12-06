FROM ganey/google-mvm-php

ADD . /var/www
RUN ln -s /var/www/public /var/www/public_html
