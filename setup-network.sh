helm upgrade -i \
sawtooth-0 \
--set persistence.claimName=sawtooth-0-pvc \
--set persistence.pv.name=sawtooth-0-pv \
--set persistence.pv.path=/mnt/disks/sdb1/sawtooth-0-pv \
--set persistence.pvc.name=sawtooth-0-pvc \
--set persistence.storageClass.name=sawtooth-local-storage \
--set persistence.pv.node=sawtooth-4 \
--set validator.genesis=true \
--set validator.config.peering=dynamic \
--set validator.config.scheduler=parallel \
--set validator.config.seeds='[\"tcp\://sawtooth-1-validator:8800\"\, \"tcp\://sawtooth-2-validator:8800\"\, \"tcp\://sawtooth-3-validator:8800\"]' \
--set opentsdb.url=http://sawtooth-stats-influxdb:8086 \
--set opentsdb.db=metrics \
--set opentsdb.username= \
--set opentsdb.password= .


helm upgrade -i \
sawtooth-1 \
--set persistence.claimName=sawtooth-1-pvc \
--set persistence.pv.name=sawtooth-1-pv \
--set persistence.pv.path=/mnt/disks/sdb1/sawtooth-1-pv \
--set persistence.pvc.name=sawtooth-1-pvc \
--set persistence.storageClass.name=sawtooth-local-storage \
--set persistence.pv.node=sawtooth-4 \
--set validator.config.peering=dynamic \
--set validator.config.scheduler=parallel \
--set validator.config.seeds='[\"tcp\://sawtooth-0-validator:8800\"\, \"tcp\://sawtooth-2-validator:8800\"\, \"tcp\://sawtooth-3-validator:8800\"]' \
--set opentsdb.url=http://sawtooth-stats-influxdb:8086 \
--set opentsdb.db=metrics \
--set opentsdb.username= \
--set opentsdb.password= .

helm upgrade -i \
sawtooth-2 \
--set persistence.claimName=sawtooth-2-pvc \
--set persistence.pv.name=sawtooth-2-pv \
--set persistence.pv.path=/mnt/disks/sdb1/sawtooth-2-pv \
--set persistence.pvc.name=sawtooth-2-pvc \
--set persistence.storageClass.name=sawtooth-local-storage \
--set persistence.pv.node=sawtooth-4 \
--set validator.config.peering=dynamic \
--set validator.config.scheduler=parallel \
--set validator.config.seeds='[\"tcp\://sawtooth-0-validator:8800\"\, \"tcp\://sawtooth-1-validator:8800\"\, \"tcp\://sawtooth-3-validator:8800\"]' \
--set opentsdb.url=http://sawtooth-stats-influxdb:8086 \
--set opentsdb.db=metrics \
--set opentsdb.username= \
--set opentsdb.password= .

helm upgrade -i \
sawtooth-3 \
--set persistence.claimName=sawtooth-3-pvc \
--set persistence.pv.name=sawtooth-3-pv \
--set persistence.pv.path=/mnt/disks/sdb1/sawtooth-3-pv \
--set persistence.pvc.name=sawtooth-3-pvc \
--set persistence.storageClass.name=sawtooth-local-storage \
--set persistence.pv.node=sawtooth-4 \
--set validator.config.peering=dynamic \
--set validator.config.scheduler=parallel \
--set validator.config.seeds='[\"tcp\://sawtooth-0-validator:8800\"\, \"tcp\://sawtooth-1-validator:8800\"\, \"tcp\://sawtooth-2-validator:8800\"]' \
--set opentsdb.url=http://sawtooth-stats-influxdb:8086 \
--set opentsdb.db=metrics \
--set opentsdb.username= \
--set opentsdb.password= .

helm upgrade -i \
sawtooth-4 \
--set persistence.claimName=sawtooth-4-pvc \
--set persistence.pv.name=sawtooth-4-pv \
--set persistence.pv.path=/mnt/disks/sdb1/sawtooth-4-pv \
--set persistence.pvc.name=sawtooth-4-pvc \
--set persistence.storageClass.name=sawtooth-local-storage \
--set persistence.pv.node=sawtooth-4 \
--set validator.config.peering=dynamic \
--set validator.config.scheduler=parallel \
--set validator.config.seeds='[\"tcp\://sawtooth-0-validator:8800\"\, \"tcp\://sawtooth-1-validator:8800\"\, \"tcp\://sawtooth-2-validator:8800\"]' \
--set opentsdb.url=http://sawtooth-stats-influxdb:8086 \
--set opentsdb.db=metrics \
--set opentsdb.username= \
--set opentsdb.password= .
