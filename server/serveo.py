import subprocess
cmd = "ssh -R ourvoiceproject1:80:localhost:8000 serveo.net"
retcode = subprocess.call(cmd,shell=True)

