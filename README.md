# arktos-tips
random tips of running/debugging arktos system

target arktos: minimalist system (no RBAC, no VM support)
    it seems able to run well on GCP VM of 4cpus, 15GB mem, 100GB disk

### componnents
* etcd
* api server
* kube-controller-manager
* kube-scheduler
* kubelet
* kubectl CLI

### not in scope; but for reference
* If RBAC is desired, refer to https://github.com/pdgetrf/arktos_testing/blob/master/setup_client_single.sh for preparing user credential instructions

