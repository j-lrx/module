**Subent**
==

Permet la création d'un subnet, rattaché à un VPC. 

**Input**

|Variable|type|commentaire|
|:-|:-|:-|
|name|string (required)||
|project|string (required)||
|network|string (required)||
|region|string (optional)|Default : *europe-west1*|
|cidr_range|string (required) ||
|enable_flow_logs|bool (optional)|Default: *false*|

**Ouput**

|Variable|type|
|:-|:-|
|self_link|string|
|gateway_address|string|
