# Macbook pro 2017 15inch ���� �ۼ��Ǿ����ϴ�.



# 1. ������(Operator)  ----
# 1.1 ��� ������      ----
# ��Ģ���� (+, -, *, /) ��Ÿ ������(^, **, %, %/%)
3 + 4     # ���ϱ�  
3- 4      # ����
3 * 4     # ���ϱ�
3 ** 4    # �ŵ�����
3 ^ 5     # �ŵ�����
13 %% 4   # ������
13 %/% 4  # ��


# 1.2 �Ҵ� ������      ----
# �����ϴ� ���
# <- , = , -> : ������??? ���� ������
# <- , ->     : �Ϲ����� ������
# =           : �Լ� ���� argument�� �����ϴ� ��� ex)rnorm (n = ,mean = )
x <- rnorm(n = 100, mean = 5)

# nrom()      : function�� ����
# n, mean, sd : argument


# 1.3 �� ������      ----
# >, >=, <, <=, ==, !=, !
3 > 4
3 >= 4
3 < 4
3 <= 4
3 == 4
!(3 == 4)  


# 1.4 ���� ������      ----
# &, | (and, pipe)
# & : and   : ���� ���� ������ ���ÿ� �����ϴ� ������ ����
# | : or    : ���� ���� ������ �ϳ��� �����ص� ������ ����
(3 > 4) & (5 > 4)
(3 > 4) | (5 > 4)


# 2. �������� ����(Type of Data) ----
# 2.1 ��ġ��(Numeric)            ----
# (1) ����(Intger)              
# (2) �Ǽ�(double)
x1 <- 10
x2 <- 10.2
mode(x1)

# 2.2 ������(Character)          ----
x3 <- 'Love is not feeling'
x4 <- 'Love is choice'
mode(x3)

# 2.3 ������(Logical)            ----
x5 <- TRUE
x6 <- FALSE


# 3. DATA                        ----
# 3.1 Vector                     ----
# 1������ ����
# �ϳ��� ��(Column)���� �����Ǿ� ����
# �ϳ��� ������ ������ ����
# ������ �м��� ���� �⺻ ����
# �������� �ν����� �ʴ´�,.

# (1) Vector �����
# i, c(element1, element2, ....)
# c : combine or concatenate�� ����
# numeric, character, logical vector�� ����
# element�� ���� ��Ģ�� ���� ���� ���
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
# 1�� ���� �Ǵ� 1�� ���ҵǴ� ���ڵ�� �����Ǿ� ����
# start:end 
# ex) 3:10
3:10
mode(3:10)
mode(c(3:10))

# start > end : 1�� ����
# start < end : 1�� ����

# iii. seq(from = m, to = n, by = d)
# seq : sequence�� ����
# numeric vector�� ���� �� ����
# m���� �����ؼ� n���� d�� ����
# ������ �������� ������ ���ڵ�
# :�� Ȯ��

# from    : start
# to      : end
# by      : ���� �Ǵ� ������ ��
id1 <- seq(from = 1, to = 100, by = 30)
id1
mode(id1)

id2 <- seq(from = 100, to = 1, by = -30)
id2
mode(id2)


# (2) Vector�� �Ӽ�
sight <- c(1.5, -4, 0.2, 1.2, 0.5, 0.6)
# i. element�� ����
# length(vector)
length(sight)
length(id1)

# ii. �������� ����
# mode(vector)
mode(sight)

# iii. element�� �̸�
# names(vector)
names(sight)
names(sight) <- c("Kim", "Lee", "Sim", "Lee", "Min", "Lee")
names(sight)
sight
mode(sight)
names(sight) <- NULL
sight


# (3) Vector�� index
# element�� ��ġ
# ù ��° element�� ��ġ�� 1

# (4) Vector�� Slicing
# vector[index]
sight[1]
sight[1:3]
sight[c(1,2,5)]
seq(from = 1, to = 6, by = 2)
sight[seq(from = 1, to = 6, by = 2)]


# (5) Vector�� ��� ����
v1 <- c(10, 20, 30)
v2 <- c(40, 50, 60)
v3 <- v1 + v2            # Vectorization = ����ȭ
v3

v4 <- c(10, 20, 30, 40, 50, 60)
v5 <- v4 + v1            # Recycling Rule : ���� �����ִ� ��
v5

v6 <- c(10, 20, 30, 40 ,50)
v7 <- v1 + v6
v7

# 3.2 Factor ----
# �ϳ��� ���� �����Ǿ� ����
# 1���� ����
# �ϳ��� ������ ������ ����(Ư��, numeric)
# ������ �м��� �⺻����. <- ������� ���Ϳ� ���
# �������� �ν��� # levels�� ����ó�� ���

# Slicing�� �� ���� ����

# (1) Factor�� �����
# Factor(vector, labes = , levels = , ordered = )
address <- c("���", "���", "����", "��õ", "����", "����")
address_factor1 <- factor(address)

address
address_factor1

mode(address)
mode(address_factor1)
table(address_factor1) # table? Ȯ���ϱ�




address_factor2 <- factor(address, labels = c("��⵵", "����Ư����", "��õ������"))
# labels �� �̸��� ������ ��

address_factor2 
table(address_factor2)

address_factor3 <- factor(address, levels = c("����", "���", "��õ"))
address_factor3
table(address_factor3)
# levels�� ������ �����ϴ� ��

address_factor4 <- factor(address, levels = c("����", "���", "��õ"),
                          labels = c("����Ư����", "��⵵", "��õ����"))
address_factor4
table(address_factor4)



address_factor5 <- factor(address, levels = c("����", "���", "��õ"),
                          labels = c("����Ư����", "��⵵", "��õ����"),
                          ordered = TRUE)
address_factor5
table(address_factor5)

# (2) Factor�� �Ӽ�
# i. ������ ����         : nlevels(factor)
nlevels(address_factor1)
# levels �� ����

# ii. ������ �̸��� ���� : levels(factor)
levels(address_factor1)

��⼭ ����.

# 3.3 Data.Frame ----
# ��� ���� �����Ǿ� ����
# 2���� ����
# ������ �ٸ� ������ ������ ���� �� ����
# R���� �����Ͷ�� �ϸ� data.frame��
# ���� : tibble, data.table (data.frame�� ����� �� - �ӵ��� �� ����)

# (1) data.frame �����
# data.frame(vector, factor, ....)
id      <- 1:2
food    <- c("������", "������ũ")
drink   <- c("�׶�", "�ݶ�")  #character
drink   <- factor(drink)      #factor�� �ٲٴ� ���� numeric
money   <- c(30, 50)
survey  <- data.frame(id, food, drink, money)
survey

# 3.4 list ---
# ������ �м� ���
# ���� ������ ������ ������
# 1���� ����
# vector, factor, data.frame, list ����
# �ڽ��� elment�� ���� �� ���� ex) list(list,list)??


# (1) list �����
# list(vector, factor, data.frame, list)
bt     <- "o"
bt     <- factor(bt)
mode(bt)
id     <- 1:10
mode(id)
result <- list(bt, id, survey)
mode(result)
result


# (2) list�� �����̽�
result[1]     # List
result[[1]]   # Factor 

result[2]     # List
result[[2]]   # Factor

result[3]     # List
result[[3]]   # Data.Frame








