# Macbook pro 2017 15inch 에서 작성되었습니다.



# 1. 연산자(Operator)  ----
# 1.1 산술 연산자      ----
# 사칙연산 (+, -, *, /) 기타 연산자(^, **, %, %/%)
3 + 4     # 더하기  
3- 4      # 빼기
3 * 4     # 곱하기
3 ** 4    # 거듭제곱
3 ^ 5     # 거듭제곱
13 %% 4   # 나머지
13 %/% 4  # 몫


# 1.2 할당 연산자      ----
# 저장하는 기능
# <- , = , -> : 저장할??? 쓰는 연산자
# <- , ->     : 일반적인 저장기능
# =           : 함수 안의 argument를 저장하는 기능 ex)rnorm (n = ,mean = )
x <- rnorm(n = 100, mean = 5)

# nrom()      : function의 일종
# n, mean, sd : argument


# 1.3 비교 연산자      ----
# >, >=, <, <=, ==, !=, !
3 > 4
3 >= 4
3 < 4
3 <= 4
3 == 4
!(3 == 4)  


# 1.4 논리 연산자      ----
# &, | (and, pipe)
# & : and   : 여러 개의 조건을 동시에 만족하는 데이터 추출
# | : or    : 여러 개의 조건을 하나만 만족해도 데이터 추출
(3 > 4) & (5 > 4)
(3 > 4) | (5 > 4)


# 2. 데이터의 유형(Type of Data) ----
# 2.1 수치형(Numeric)            ----
# (1) 정수(Intger)              
# (2) 실수(double)
x1 <- 10
x2 <- 10.2
mode(x1)

# 2.2 문자형(Character)          ----
x3 <- 'Love is not feeling'
x4 <- 'Love is choice'
mode(x3)

# 2.3 논리형(Logical)            ----
x5 <- TRUE
x6 <- FALSE


# 3. DATA                        ----
# 3.1 Vector                     ----
# 1차원의 구조
# 하나의 열(Column)으로 구성되어 있음
# 하나의 데이터 유형만 가짐
# 데이터 분석의 가장 기본 단위
# 집단으로 인식하지 않는다,.

# (1) Vector 만들기
# i, c(element1, element2, ....)
# c : combine or concatenate의 약자
# numeric, character, logical vector를 만듦
# element들 간의 규칙이 없을 때에 사용
age     <- c(20, 21, 23, 24)
age
mode(age)
bt      <- c("b", "a", "o", "b")
bt
mode(bt)
smoke   <- c(FALSE, FALSE, TRUE, FALSE)
smoke
mode(smoke)

# ii. :
# 1씩 증가 또는 1씩 감소되는 숫자들로 구성되어 있음
# start:end 
# ex) 3:10
3:10
mode(3:10)
mode(c(3:10))

# start > end : 1씩 증가
# start < end : 1씩 감소

# iii. seq(from = m, to = n, by = d)
# seq : sequence의 약자
# numeric vector만 만들 수 있음
# m부터 시작해서 n까지 d씩 증가
# 일정한 간격으로 떨어진 숫자들
# :의 확장

# from    : start
# to      : end
# by      : 증가 또는 감소의 폭
id1 <- seq(from = 1, to = 100, by = 30)
id1
mode(id1)

id2 <- seq(from = 100, to = 1, by = -30)
id2
mode(id2)


# (2) Vector의 속성
sight <- c(1.5, -4, 0.2, 1.2, 0.5, 0.6)
# i. element의 개수
# length(vector)
length(sight)
length(id1)

# ii. 데이터의 유형
# mode(vector)
mode(sight)

# iii. element의 이름
# names(vector)
names(sight)
names(sight) <- c("Kim", "Lee", "Sim", "Lee", "Min", "Lee")
names(sight)
sight
mode(sight)
names(sight) <- NULL
sight


# (3) Vector의 index
# element의 위치
# 첫 번째 element의 위치는 1

# (4) Vector의 Slicing
# vector[index]
sight[1]
sight[1:3]
sight[c(1,2,5)]
seq(from = 1, to = 6, by = 2)
sight[seq(from = 1, to = 6, by = 2)]


# (5) Vector의 산술 연산
v1 <- c(10, 20, 30)
v2 <- c(40, 50, 60)
v3 <- v1 + v2            # Vectorization = 벡터화
v3

v4 <- c(10, 20, 30, 40, 50, 60)
v5 <- v4 + v1            # Recycling Rule : 길이 맞춰주는 것
v5

v6 <- c(10, 20, 30, 40 ,50)
v7 <- v1 + v6
v7

# 3.2 Factor ----
# 하나의 열로 구성되어 있음
# 1차원 구조
# 하나의 데이터 유형만 가짐(특히, numeric)
# 데이터 분석의 기본단위. <- 여기까진 벡터와 비슷
# 집단으로 인식함 # levels는 집합처럼 사용

# Slicing만 함 연산 안함

# (1) Factor의 만들기
# Factor(vector, labes = , levels = , ordered = )
address <- c("경기", "경기", "서울", "인천", "서울", "서울")
address_factor1 <- factor(address)

address
address_factor1

mode(address)
mode(address_factor1)
table(address_factor1) # table? 확인하기




address_factor2 <- factor(address, labels = c("경기도", "서울특별시", "인천광역시"))
# labels 는 이름을 붙히는 것

address_factor2 
table(address_factor2)

address_factor3 <- factor(address, levels = c("서울", "경기", "인천"))
address_factor3
table(address_factor3)
# levels는 순서를 지정하는 것

address_factor4 <- factor(address, levels = c("서울", "경기", "인천"),
                          labels = c("서울특별시", "경기도", "인천광역"))
address_factor4
table(address_factor4)



address_factor5 <- factor(address, levels = c("서울", "경기", "인천"),
                          labels = c("서울특별시", "경기도", "인천광역"),
                          ordered = TRUE)
address_factor5
table(address_factor5)

# (2) Factor의 속성
# i. 집단의 개수         : nlevels(factor)
nlevels(address_factor1)
# levels 의 개수

# ii. 집단의 이름과 순서 : levels(factor)
levels(address_factor1)

요기서 부터.

# 3.3 Data.Frame ----
# 행과 열로 구성되어 있음
# 2차원 구조
# 열마다 다른 데이터 유형을 가질 수 있음
# R에서 데이터라고 하면 data.frame임
# 참고 : tibble, data.table (data.frame과 비슷한 것 - 속도가 더 빠름)

# (1) data.frame 만들기
# data.frame(vector, factor, ....)
id      <- 1:2
food    <- c("돈가스", "스테이크")
drink   <- c("테라", "콜라")  #character
drink   <- factor(drink)      #factor로 바꾸는 과정 numeric
money   <- c(30, 50)
survey  <- data.frame(id, food, drink, money)
survey

# 3.4 list ---
# 데이터 분석 결과
# 가장 유연한 형태의 데이터
# 1차원 구조
# vector, factor, data.frame, list 등을
# 자신의 elment로 가질 수 있음 ex) list(list,list)??


# (1) list 만들기
# list(vector, factor, data.frame, list)
bt     <- "o"
bt     <- factor(bt)
mode(bt)
id     <- 1:10
mode(id)
result <- list(bt, id, survey)
mode(result)
result


# (2) list의 슬라이싱
result[1]     # List
result[[1]]   # Factor 

result[2]     # List
result[[2]]   # Factor

result[3]     # List
result[[3]]   # Data.Frame









