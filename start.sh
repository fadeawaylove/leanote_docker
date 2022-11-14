mkdir -p /data/mongo_data && mkdir -p /data/log

mongod -dbpath /data/mongo_data -logpath /data/log/mongo.log -logappend -fork

mongorestore -h localhost -d leanote --dir /leanote/mongodb_backup/leanote_install_data/

sh /leanote/bin/run.sh 2>&1 | tee /data/log/leanote.log
