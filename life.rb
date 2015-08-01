N = 22
M = 78

row = []; (M + 2).times { row.push(0) }  # 盤 
a = []; (N + 2).times { a.push(row.dup) }
b = []; (N + 2).times { b.push(row.dup) }

a[N/2][M/2] = a[N/2-1][M/2] = a[N/2+1][M/2]\
  = a[N/2][M/2-1] = a[N/2-1][M/2+1] = 1;  # 初期状態 
system("clear")
for g in 1..1000
  print("\e[1;1H")
  printf("Generation %4d\n", g)  # 世代 
  for i in 1..N
    for j in 1..M
      if (a[i][j] > 0) 
        print("*")
        b[i-1][j-1] += 1;  b[i-1][j] += 1;  b[i-1][j+1] += 1;
        b[i  ][j-1] += 1;                   b[i  ][j+1] += 1;
        b[i+1][j-1] += 1;  b[i+1][j] += 1;  b[i+1][j+1] += 1;
      else; print(".")
      end
    end
    print("\n")
  end
  for i in 0..N
    for j in 0..M
      if (b[i][j] != 2); a[i][j] = ((b[i][j] == 3) ? 1 : 0); end
      b[i][j] = 0
    end
  end
end

exit 0
