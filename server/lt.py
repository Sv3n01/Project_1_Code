import subprocess
cmd = "lt --port 8000 --subdomain ourvoiceproject1 --local-https false"
retcode = subprocess.call(cmd,shell=True)

