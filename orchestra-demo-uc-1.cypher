LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/avshein/orchestra-demo/master/orchestra-demo-uc-1-nodes.csv" AS row WITH row
WHERE row.type = 'phone'
CREATE (:PHONE{node_id: row.node_id,type: row.type,tag: row.tag,id: row.id,mobility_level: row.mobility_level,security_risk: row.security_risk,security_level: row.security_level,properties: row.properties})
WITH count(*) as dummy
LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/avshein/orchestra-demo/master/orchestra-demo-uc-1-nodes.csv" AS row WITH row
WHERE row.type = 'laptop'
CREATE (:LAPTOP{node_id: row.node_id,type: row.type,tag: row.tag,id: row.id,mobility_level: row.mobility_level,security_risk: row.security_risk,security_level: row.security_level,properties: row.properties})
WITH count(*) as dummy
LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/avshein/orchestra-demo/master/orchestra-demo-uc-1-nodes.csv" AS row WITH row
WHERE row.type = 'wifi'
CREATE (:WIFI{node_id: row.node_id,type: row.type,tag: row.tag,id: row.id,mobility_level: row.mobility_level,security_risk: row.security_risk,security_level: row.security_level,properties: row.properties})
WITH count(*) as dummy
LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/avshein/orchestra-demo/master/orchestra-demo-uc-1-nodes.csv" AS row WITH row
WHERE row.type = 'usb'
CREATE (:USB{node_id: row.node_id,type: row.type,tag: row.tag,id: row.id,mobility_level: row.mobility_level,security_risk: row.security_risk,security_level: row.security_level,properties: row.properties})
WITH count(*) as dummy
LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/avshein/orchestra-demo/master/orchestra-demo-uc-1-nodes.csv" AS row WITH row
WHERE row.type = 'bluetooth'
CREATE (:BLUETOOTH{node_id: row.node_id,type: row.type,tag: row.tag,id: row.id,mobility_level: row.mobility_level,security_risk: row.security_risk,security_level: row.security_level,properties: row.properties})
WITH count(*) as dummy
LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/avshein/orchestra-demo/master/orchestra-demo-uc-1-nodes.csv" AS row WITH row
WHERE row.type = 'ssid'
CREATE (:SSID{node_id: row.node_id,type: row.type,tag: row.tag,id: row.id,mobility_level: row.mobility_level,security_risk: row.security_risk,security_level: row.security_level,properties: row.properties})
WITH count(*) as dummy
LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/avshein/orchestra-demo/master/orchestra-demo-uc-1-nodes.csv" AS row WITH row
WHERE row.type = 'ap'
CREATE (:AP{node_id: row.node_id,type: row.type,tag: row.tag,id: row.id,mobility_level: row.mobility_level,security_risk: row.security_risk,security_level: row.security_level,properties: row.properties})

WITH count(*) as dummy
LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/avshein/orchestra-demo/master/orchestra-demo-uc-1-edges.csv" AS row WITH row
MATCH(n1 {node_id: row.start}) MATCH(n2 {node_id: row.end}) 
CREATE (n1)-[:CONNECTED]->(n2)
