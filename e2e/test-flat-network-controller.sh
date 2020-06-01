// start etcd on 127.0.0.1:2379
	$ cd etcd
	$ bash ./etcd.sh
// start apierver on 127.0.0.1:8080
	$ cd _output/local/bin/linux/amd64
	$ sudo ./kube-apiserver.q --etcd-servers=http://127.0.0.1:2379 --admission-control=""
// define network CRD (sharing)
	$ cd test
	$ ./kubectl apply -f ~/ttt/crd-network.g.yaml
// create network
	$ ./kubectl apply -f ~/ttt/my-net.yaml
// start flat-network-controller
	$ ./flat-network-controller --kubeconfig=/home/howell/.kube/config
	$ ./flat-network-controller --kubeconfig=<path-to-~>/.kube/config

// locate the log file of fnc, see the log for any errors
	//for troubleshooting 
// verify DNS service of the network is created, having spec.clusterIP filled
	$ ./kubectl get svc --all-namespaces
// verify network object status is updated (phase, dnsServiceIP)
	$ ./kubectl get ne
	NAME                 TYPE   VPC           PHASE
	my-new-network-vpc   vpc    12345-mizar   Ready
//
 
