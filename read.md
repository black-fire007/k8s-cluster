mkdir -p {inventory/mycluster/group_vars,playbooks,roles/vms/tasks,roles/kubespray/tasks,roles/ingress/tasks,roles/dashboard/tasks,roles/dashboard/templates,roles/argocd/tasks,roles/argocd/templates,roles/certmanager/tasks,roles/certmanager/templates,kubespray,credentials} && \
touch ansible.cfg \
site.yml \
inventory/mycluster/hosts.yaml \
inventory/mycluster/group_vars/all.yml \
inventory/mycluster/group_vars/k8s_cluster.yml \
playbooks/00-provision-vms.yml \
playbooks/01-create-cluster.yml \
playbooks/02-install-ingress.yml \
playbooks/03-deploy-dashboard.yml \
playbooks/04-deploy-argocd.yml \
playbooks/05-setup-cert.yml \
playbooks/99-destroy.yml \
roles/vms/tasks/main.yml \
roles/kubespray/tasks/main.yml \
roles/ingress/tasks/main.yml \
roles/dashboard/tasks/main.yml \
roles/dashboard/templates/dashboard-ingress.yaml.j2 \
roles/argocd/tasks/main.yml \
roles/argocd/templates/argocd-ingress.yaml.j2 \
roles/certmanager/tasks/main.yml \
roles/certmanager/templates/cluster-issuer.yaml.j2 \
credentials/service.account.json
