**Container node pool**
==

Permet la création de node pool. Les nodes pool doivent impérativement être rattaché à un cluster GKE et se trouver dans la même zone ou région que ce dernier.

**Input**

|Variable|type|commentaire|
|:-|:-|:-|
|name|string (required)||
|project|string (required)||
|location|string (required)|Région ou zone|
|cluster|string (required)|Self_link du cluster auquel rattaché le node_pool|
|initial_node_count|number (optional)|Default: **1**. Nombre de noeud à la création|
|min_node_count|number (optional)|Default: **1**. Nombre de noeuds minimal. Doit être inférieur ou égal à _ max_node_count _ |
|max_node_count|number (optional)|Default: **3**. Nombre de noeuds maximal. Doit être supérieur ou égal à _ min_node_count _ |
|machine_type|string (optional)|Default: **n1-standard-1**|
|preemptible|bool (optional)|Default: **false**|
|auto_repair|bool (optional)|Default: **true**|
|auto_upgrade|bool (optional)|Default: **false**|

**Ouput**

|Variable|type|
|:-|:-|
|name|string|
