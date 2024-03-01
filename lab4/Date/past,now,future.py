from datetime import date, timedelta
past = date.today() - timedelta(1)
now = date.today()
future = date.today() + timedelta(1)
print("Yesterday -", past, "Today -", now, "Tomorrow -", future)