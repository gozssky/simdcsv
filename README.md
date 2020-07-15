# simdcsv

**Experimental**

Investigate whether 2 stage design approach used by [simdjson-go](https://github.com/minio/simdjson-go) can also speed up CSV parsing.

```$ go test -v -bench=Unaligned
pkg: github.com/fwessels/simdcsv
BenchmarkFindMarksUnaligned-8             525680              1959 ns/op        1659.02 MB/s        3456 B/op          1 allocs/op
PASS
```

## Benchmarking 

```
benchmark              old MB/s     new MB/s     speedup
BenchmarkFirstPass     760.36       4495.12      5.91x
```

### Scaling across cores

```
$ go test -run=X -cpu=1,2,4,8,16 -bench=BenchmarkFirstPassAsm
BenchmarkFirstPassAsm              10000            109861 ns/op        4772.27 MB/s           0 B/op          0 allocs/op
BenchmarkFirstPassAsm-2            21762             55086 ns/op        9517.58 MB/s           0 B/op          0 allocs/op
BenchmarkFirstPassAsm-4            43603             27644 ns/op        18965.68 MB/s          0 B/op          0 allocs/op
BenchmarkFirstPassAsm-8            85539             13772 ns/op        38068.81 MB/s          0 B/op          0 allocs/op
BenchmarkFirstPassAsm-16          128840              9238 ns/op        56750.90 MB/s          0 B/op          0 allocs/op
```

## References

Ge, Chang and Li, Yinan and Eilebrecht, Eric and Chandramouli, Badrish and Kossmann, Donald, [Speculative Distributed CSV Data Parsing for Big Data Analytics](https://www.microsoft.com/en-us/research/publication/speculative-distributed-csv-data-parsing-for-big-data-analytics/), SIGMOD 2019.

[Awesome Comma-Separated Values](https://github.com/csvspecs/awesome-csv)

