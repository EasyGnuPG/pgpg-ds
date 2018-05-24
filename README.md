# Container for developing and testing PGPG

## Installation

  - First install `ds`: https://github.com/docker-scripts/ds#installation

  - Then get the scripts from github:
    ```
    git clone --branch bionic \
        https://github.com/easygnupg/pgpg-ds \
        /opt/docker-scripts/pgpg-bionic
    ```

  - Create a directory for the container: `ds init pgpg-bionic @pgpg-bionic`

  - Fix the settings: `cd /var/ds/pgpg-bionic/ ; vim settings.sh`

  - Get the proper branch of *pgpg*: `git clone --branch gnupg-2.2 https://github.com/easygnupg/pgpg`

  - Create the container: `ds make`


## Other commands

   ```
   ds stop
   ds start
   ds shell
   ds help

   ds jekyll
   ds inject run-tests.sh
   ```
