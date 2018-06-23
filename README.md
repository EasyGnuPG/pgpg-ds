# Container for developing and testing PGPG

## Installation

  - First install `ds`: https://github.com/docker-scripts/ds#installation

  - Then get the scripts from github:
    ```
    git clone --branch buster \
        https://github.com/easygnupg/pgpg-ds \
        /opt/docker-scripts/pgpg-buster
    ```

  - Create a directory for the container: `ds init pgpg-buster @pgpg-buster`

  - Fix the settings: `cd /var/ds/pgpg-buster/ ; vim settings.sh`

  - Get *pgpg*: `git clone --branch gnupg-2.2 https://github.com/easygnupg/pgpg`

  - Create the container: `ds make`
  
  - Install *egpg* inside the container: run `make` inside the container


## Other commands

   ```
   ds stop
   ds start
   ds shell
   ds help

   ds jekyll
   ds inject run-tests.sh
   ```
