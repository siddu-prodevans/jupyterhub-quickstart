#!/bin/bash

set -eo pipefail

# Add scripts directory to program search path.

PATH=$PATH:/opt/app-root/scripts

# Start the JupyterHub instance.

exec jupyterhub -f /opt/app-root/etc/jupyterhub_config.py

sed -i 's/async/async_req/g' /opt/app-root/lib/python3.5/site-packages/jupyterhub/app.py
sed -i 's/async/async_req/g' /opt/app-root/lib/python3.5/site-packages/traitlets/config/application.py
sed -i 's/async/async_req/g' /opt/app-root/lib/python3.5/site-packages/traitlets/config/loader.py
sed -i 's/async/async_req/g' /opt/app-root/lib/python3.5/site-packages/ipython_genutils/py3compat.py
sed -i 's/async/async_req/g' /opt/app-root/lib/python3.5/site-packages/openshift/client/apis/oapi_api.py

