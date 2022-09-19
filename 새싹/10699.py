#서울의 오늘 날짜를 "YYYY-MM-DD" 형식으로 출력한다.
import datetime as t
now=str(t.datetime.now())
l=now[:10]
print(l)