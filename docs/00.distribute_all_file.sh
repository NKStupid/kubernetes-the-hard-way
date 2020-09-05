for instance in controller-0 controller-1 controller-2; do
  gcloud compute scp ca.pem ca-key.pem kubernetes-key.pem kubernetes.pem \
    service-account-key.pem service-account.pem ${instance}:~/
done

for instance in controller-0 controller-1 controller-2; do
  gcloud compute scp admin.kubeconfig kube-controller-manager.kubeconfig kube-scheduler.kubeconfig ${instance}:~/
done

for instance in controller-0 controller-1 controller-2; do
  gcloud compute scp encryption-config.yaml etcd-v3.4.10-linux-amd64.tar.gz ${instance}:~/
done
