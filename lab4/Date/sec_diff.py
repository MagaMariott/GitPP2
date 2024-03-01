from datetime import datetime, timedelta
x = int(input())
def sec_diff(dt2, dt1):
  timedelta = dt2 - dt1
  return timedelta.days * 24 * 3600 + timedelta.seconds
date1 = datetime.now() - timedelta(x)
date2 = datetime.now()
print(sec_diff(date2, date1), "sec")
