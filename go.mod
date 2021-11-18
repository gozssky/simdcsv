module github.com/minio/simdcsv

go 1.16

require (
	github.com/klauspost/cpuid/v2 v2.0.3
	github.com/pingcap/tidb v1.1.0-beta.0.20211118064547-924f963e6950
	github.com/pingcap/tidb/parser v0.0.0-20211118070547-62b07a6c92f0 // indirect
)

// cloud.google.com/go/storage will upgrade grpc to v1.40.0
// we need keep the replacement until go.etcd.io supports the higher version of grpc.
replace google.golang.org/grpc => google.golang.org/grpc v1.29.1
