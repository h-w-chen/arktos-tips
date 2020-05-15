docker run --name etcd --volume=$PWD/etcd-data:/default.etcd -d --net=host quay.io/coreos/etcd:v3.3.10
