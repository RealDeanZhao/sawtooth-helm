helm install \
--name sawtooth-0 \
--namespace sawtooth \
--set persistence.claimName=sawtooth-0-pvc \
--set persistence.pv.name=sawtooth-0-pv \
--set persistence.pv.path=/mnt/disks/sdb1/sawtooth-0-pv \
--set persistence.pvc.name=sawtooth-0-pvc \
--set persistence.storageClass.create=true \
--set persistence.storageClass.name=sawtooth-local-storage  \
--set persistence.pv.node=sawtooth-4 \
--set validator.genesis=true .

helm install \
--name sawtooth-1 \
--namespace sawtooth \
--set persistence.claimName=sawtooth-1-pvc \
--set persistence.pv.name=sawtooth-1-pv \
--set persistence.pv.path=/mnt/disks/sdb1/sawtooth-1-pv \
--set persistence.pvc.name=sawtooth-1-pvc \
--set persistence.storageClass.name=sawtooth-local-storage  \
--set persistence.pv.node=sawtooth-4 \
--set validator.args=tcp://sawtooth-0-validator:8800 .

helm install \
--name sawtooth-2 \
--set persistence.claimName=sawtooth-2-pvc \
--set persistence.pv.name=sawtooth-2-pv \
--set persistence.pv.path=/mnt/disks/sdb1/sawtooth-2-pv \
--set persistence.pvc.name=sawtooth-2-pvc \
--set persistence.storageClass.name=sawtooth-local-storage  \
--set persistence.pv.node=sawtooth-4 \
--set validator.args=tcp://sawtooth-0-validator:8800 .

helm install \
--name sawtooth-3 \
--set persistence.claimName=sawtooth-3-pvc \
--set persistence.pv.name=sawtooth-3-pv \
--set persistence.pv.path=/mnt/disks/sdb1/sawtooth-3-pv \
--set persistence.pvc.name=sawtooth-3-pvc \
--set persistence.storageClass.name=sawtooth-local-storage  \
--set persistence.pv.node=sawtooth-4 \
--set validator.args=tcp://sawtooth-0-validator:8800 .

helm install \
--name sawtooth-4 \
--set persistence.claimName=sawtooth-4-pvc \
--set persistence.pv.name=sawtooth-4-pv \
--set persistence.pv.path=/mnt/disks/sdb1/sawtooth-4-pv \
--set persistence.pvc.name=sawtooth-4-pvc \
--set persistence.storageClass.name=sawtooth-local-storage  \
--set persistence.pv.node=sawtooth-4 \
--set validator.args=tcp://sawtooth-0-validator:8800 .

helm upgrade \
sawtooth-0 \
--namespace sawtooth \
--set persistence.claimName=sawtooth-0-pvc \
--set persistence.pv.name=sawtooth-0-pv \
--set persistence.pv.path=/mnt/disks/sdb1/sawtooth-0-pv \
--set persistence.pvc.name=sawtooth-0-pvc \
--set persistence.storageClass.name=sawtooth-local-storage  \
--set persistence.pv.node=sawtooth-4 \
--set validator.args="--seeds tcp://sawtooth-0-validator:8800 --seeds tcp://sawtooth-1-validator:8800 --seeds tcp://sawtooth-2-validator:8800" .

helm upgrade \
sawtooth-1 \
--namespace sawtooth \
--set persistence.claimName=sawtooth-1-pvc \
--set persistence.pv.name=sawtooth-1-pv \
--set persistence.pv.path=/mnt/disks/sdb1/sawtooth-1-pv \
--set persistence.pvc.name=sawtooth-1-pvc \
--set persistence.storageClass.name=sawtooth-local-storage  \
--set persistence.pv.node=sawtooth-4 \
--set validator.args="--peering=dynamic --seeds tcp://sawtooth-0-validator:8800" .

helm upgrade \
sawtooth-2 \
--set persistence.claimName=sawtooth-2-pvc \
--set persistence.pv.name=sawtooth-2-pv \
--set persistence.pv.path=/mnt/disks/sdb1/sawtooth-2-pv \
--set persistence.pvc.name=sawtooth-2-pvc \
--set persistence.storageClass.name=sawtooth-local-storage  \
--set persistence.pv.node=sawtooth-4 \
--set validator.args="--peering=dynamic --seeds tcp://sawtooth-0-validator:8800" .

helm upgrade \
sawtooth-3 \
--set persistence.claimName=sawtooth-3-pvc \
--set persistence.pv.name=sawtooth-3-pv \
--set persistence.pv.path=/mnt/disks/sdb1/sawtooth-3-pv \
--set persistence.pvc.name=sawtooth-3-pvc \
--set persistence.storageClass.name=sawtooth-local-storage  \
--set persistence.pv.node=sawtooth-4 \
--set validator.args="--peering=dynamic --seeds tcp://sawtooth-0-validator:8800" .

helm upgrade \
sawtooth-4 \
--set persistence.claimName=sawtooth-4-pvc \
--set persistence.pv.name=sawtooth-4-pv \
--set persistence.pv.path=/mnt/disks/sdb1/sawtooth-4-pv \
--set persistence.pvc.name=sawtooth-4-pvc \
--set persistence.storageClass.name=sawtooth-local-storage  \
--set persistence.pv.node=sawtooth-4 \
--set validator.args="--peering=dynamic --seeds tcp://sawtooth-0-validator:8800" .
