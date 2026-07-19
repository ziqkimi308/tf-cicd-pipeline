#!/bin/bash

set -euo pipefail

apt-get update -y
apt-get install -y apache2 curl

systemctl start apache2
systemctl enable apache2

cat > /var/www/html/index.html << EOF
<!DOCTYPE html>
<html>
<head><title>${project_name}</title></head>
<body>
  <h1>Deployed by Terraform + GitHub Actions</h1>
  <p>Project: ${project_name}</p>
  <p>Deployed at: $(date -u)</p>
  <p>Pipeline run: v4</p>
</body>
</html>
EOF

cat > /var/www/html/health << EOF
{"status":"ok","project":"${project_name}"}
EOF

echo "Bootstrap complete for project: ${project_name}"