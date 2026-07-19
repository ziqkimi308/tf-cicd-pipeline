#!/bin/bash

# named parameters - exit on error, unset variables as error, one pipe failed, all failed.
set -euo pipefail

PROJECT_NAME="${project_name}"

apt-get update -y
apt-get install -y apache2 curl

systemctl start apache2
systemctl enable apache2

cat > /var/www/html/index.html << EOF
<!DOCTYPE html>
<html>
<head><title>${PROJECT_NAME}</title></head>
<body>
  <h1>Deployed by Terraform + GitHub Actions</h1>
  <p>Project: ${PROJECT_NAME}</p>
  <p>Deployed at: $(date -u)</p>
</body>
</html>
EOF

cat > /var/www/html/health << EOF
{"status":"ok","project":"${PROJECT_NAME}"}
EOF

echo "Bootstrap complete for project: ${PROJECT_NAME}"
