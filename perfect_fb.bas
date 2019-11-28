' Perfect numbers
' To calculate perfect numbers

dim n as integer
dim i as integer
dim y as integer
dim l as integer

input n
if n<6 then
  print "none"
elseif n=6 then
  print "6 only"
else
  print "6";
  ' Limit n to 2^25*(2↑26-1)
  for i = 3 to 26 
    y = 2^i-1
    ' Next loop is to check if 2^i-1 is prime
    for l=2 to int(sqr(y))
      if (y/l=int(y/l)) then continue for, for
      if y*2^(i-1)>n then exit for, for
    next l
    print ",";y*2^(i-1);
  next i
end if
print 
print "(This program was written on 26/8/83)" 
