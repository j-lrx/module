**Container cluster**
===

Permet la création d'un cluster GKE. Le node_pool par défaut est supprimé. 
Voir le module container_node_pool pour ajouter un ou plusieurs node pool au cluster.

**Input**

|Variable|type|commentaire|
|:-------|:---|:----------------|
|name|string (required)| |
|project|string (required)| |
|location| string (required) |Région ou zone|
|network| string (required) | |
|subnetwork| string (required) | |
|node_ipv4_cidr| string (required) | |
|cluster_ipv4_cidr| string (required) | Pas d'overlapping avec node_ipv4_cidr. Doit avoir un netmask compris entre /9 et /29 |
|service_ipv4| string (required)|Pas d'overlapping avec node_ipv4_cidr ni avec cluster_ipv4_cidr. Doit avoir un netmask compris entre /9 et /29|
