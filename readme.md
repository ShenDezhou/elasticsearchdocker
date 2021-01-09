# Preparations
On the host machine, assign the folders to the elasticsearch docker user.

* chown 1000:1000 data -R
* chown 1000:1000 logs

# Dependency
Docker images:

* elasticsearch:1.0
* lawawordsegment:1.0

# Tutorial

curl -X POST "192.168.60.15:58076/_analyze?pretty" -H 'Content-Type: application/json' -d'{"analyzer": "lawa", "text":"Docker使用gzip压缩导出导入镜像"}'


