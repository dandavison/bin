N = 1493
n_proc = 23

line = 1
chunk = 70
for i in range(n_proc):
    chunk_end = min(line + chunk - 1, N)
    print 'sed -n -e %d,%dp -e %dq < batches > batches_%d' % (
        line, chunk_end, chunk_end, i)
    line += chunk
