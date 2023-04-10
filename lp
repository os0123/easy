PRACTICAL NO.1
AIM:
Write a program which demonstrates the following:
 • Addition of two complex numbers 
• Displaying the conjugate of a complex number 
• Plotting a set of complex numbers 
• Creating a new plot by rotating the given number by a degree 90, 180, 270 degrees and also by scaling by a number a=1/2, a=1/3, a=2 etc.
CODE:
import matplotlib.pyplot as plt
import numpy as np
print("select Operation:")
print("1:Addition of 2 complex number: ")
print("2:Display conjugate of two numbers: ")
print("3:Ploting a set of complex numbers")
print("4:Rotating: ")
print("5:Scaling: ")
print("6:Exit")

while True:
    ch = int(input("Enter choice of Operation: "))
    if ch==1:
        c1=complex(input("Enter Complex number c1: "))
        c2=complex(input("Enter Complex number c2: "))
        print("Addition of 2 complex numbers: ",c1+c2)
        
    elif ch==2: #Conjugate
        c1=complex(input("Enter Complex number "))
        res=np.conj(c1)
        print("Conjugate of ",c1," is ",res)

    elif ch==3: #Plotting
        data=[1+2j,-1+4j,4+3j,-4,2-1j,3+9j,-2+6j,5]
        x=[i.real for i in data]
        y=[i.imag for i in data]
        plt.scatter(x,y)
        plt.ylabel('Imaginary')
        plt.xlabel('Real')
        plt.show()

    elif ch==4:  #Rotating
        S=[1+2j,-1+4j,4+3j,-4,2-1j,3+9j,-2+6j,5]
        angle=int(input("Enter Angle of Rotation:"))

        if angle==90:
            S1= {x*1j for x in S}
        elif angle==180:
            S1={x*(-1) for x in S}
        elif angle==270:
            S1={x*1j*(-1) for x in S}
        else:
            print("Invalid Angle entered")
        X=[x.real for x in S1]
        Y=[x.imag for x in S1]
        plt.plot(X,Y,'ro')
        plt.show()
            
    elif ch==5:  #Scaling
        S=[1+2j,-1+4j,4+3j,-4,2-1j,3+9j,-2+6j,5]
        scale=float(input("Enter Scale point like (.5) for 1/2"))
        S1={x*scale for x in S}
        X=[x.real for x in S1]
        Y=[x.imag for x in S1]
        plt.plot(X,Y,'ro')
        plt.show()

    elif ch==6:
        break



PRACTICAL NO-2
AIM:
Write a program to do the following:
 • Enter a vector u as a n-list 
• Enter another vector v as a n-list 
• Find the vector au+bv for different values of a and b 
• Find the dot product of u and v
CODE:
def addVec(x,y):
    return [x[i]+y[i] for i in range (len(x))]
def subVec(x,y):
    return [x[i]-y[i] for i in range (len(x))]
def scalarMul(x,p):
    return sum([x[i]*p for i in range (len(x))])
def dotMul(x,y):
    return sum([x[i]*y[i] for i in range (len(x))])
v=[]
u=[]
n=int(input("Enter the no. of Elements you want to enter in vector: "))
print("Enter Elements of vector u: ")
for i in range(n):
    e=int(input("Enter elements: "))
    u.append(e)
print("Vector u = ",u)
print("Enter Elements of vector v: ")
for i in range(n):
    e=int(input("Enter elements: "))
    v.append(e)
print("Vector v = ",v)
while True:
    print("Select Vector Operation: ")
    print("1: Addition")
    print("2: Subtraction")
    print("3: Scalar Multiplication")
    print("4: Dot Product")
    print("5: Exit")
    ch=int(input("Enter your Choice: "))
    if ch==1:
        print("Addition of two matrix are",addVec(u,v))
    elif ch==2:
        print("Subtraction of two matrix are",subVec(u,v))
    elif ch==3:
        print("To perform Scalar Multiplication")
        a=int(input("Enter the value of a: "))
        print("Sclar Multiplication =",scalarMul(u,a))
    elif ch==4:
        print("Dot Product of two matrix is: ",dotMul(u,v))
    elif ch==5:
        print("Program Terminated Succesfully")
        break


PRACTICAL NO--3
AIM:
Write a program to do the following: 
•	Enter two distinct faces as vectors u and v. 
• Find a new face as a linear combination of u and v i.e. au+bv for a and b in R. 
• Find the average face of the original faces.
CODE:
def lin_comb(vlist,clist):
    s=[scalarmul(vlist[i],clist[i]) for i in range(len(vlist))]
    l=[]
    for j in range(len(s[0])):
        su=0
        for i in range(len(s)):
            su=su+s[i][j]
        l.append(su)
    return l
l=int(input("Enter Length of vector: "))
u=[]
v=[]
c=[]
print("Enter elements of vector u: ")
for i in range(l):
    n=int(input("Enter no: "))
    u.append(n)
print("Enter elements of vector v: ")
for i in range(l):
    m=int(input("Enter no: "))
    v.append(m)
print("Enter values for coefficient: ")
c1=int(input("Enter coefficient c1: "))
c2=int(input("Enter coefficient c2: "))
newface=[c1*u[i]+c2*v[i] for i in range(len(u))]
print("New Face of u and v :",newface)
avgface=[((u[i]+v[i])/2) for i in range(len(u))]
print("Average face of u and v :",avgface)


PRACTICAL NO--4
PRACTICAL NO.4
AIM:
Write a program to do the following: 
• Enter an r by c matrix M (r and c being positive integers) 
• Display M in matrix format 
• Display the rows and columns of the matrix M Find the scalar multiplication of M for a given scalar. 
• Find the transpose of the matrix M.
CODE:
def printmatrix(A):
    print('The entered matrix M is')
    for i in range(r):
        print(A[i])
   #display rows of matrix
def printrows(A):
    print('Rows of matrix')
    for i in range (r):
        print('Row%d='%i,A[i])
  #display columns of matrix
def printcolumns(A):
    print('Columns of matrix')
for j in range(c):
        print('column%d='%j,end="")
        for i in range(r):
            print(A[i][j],end="")
        print('\n')
   
 #Scalar Multiplication
def scalarmul(A,s):
    N=[[s*A[i][j] for j in range(c)] for i in range(r)]
    print('The scalar multiplication S*M=')
    printmatrix(N)
    
    
   #tranpose of matrix M
def transpose(A):
    T=[[A[i][j] for i in range(r)]for j in range(c)]
    print('Transpose of M.T=')
    for j in range(c):
        print(T[j])
        
        
  #Enter rXc Matrix M
print ('Enter the dimensions of matrix ')
r=int(input('Enter no of rows: '))
c=int(input('Enter no of columns: '))
M=[]
for i in range (r):
    print('Enter elements of row: ',i)
    M.append([])
    for j in range(c):
        n=int(input('Enter Number: '))
        M[i].append(n)
print('Select operation')
print('1:Display Matrix')
print('2:Display rows of matrix')
print('3:Display columns of matrix')
print('4:Scalar Multiplication of matrix')
print('5:Transpose of matrix')
print('6:Exit')
while True:
    ch=int(input('Enter choice for Operation: '))
    if ch==1:
        printmatrix(M)
    elif ch==2:
        printrows(M)
    elif ch==3:
        printcolumns(M)
    elif ch==4:
        sc=int(input('Enter scalar value: '))
        scalarmul(M,sc)
    elif ch==5:
        transpose(M)
    elif ch==6:
        print("Program terminated successfully")
        break


PRACTICAL NO---5

AIM:
Write a program to do the following:
•	Find the Vector - Matrix Multiplication of a r by c matrix M with a c vector u.
•	Find the Matrix  - Matrix product of M with a c by p matrix N.

CODE:
import numpy as np
def vecMatrixMult():
    r =int(input("Enter length of vector and number of rows in matrix:"))
    c =int(input("Enter number of columns in matrix:"))
    v=[]
    M=[]
    print("Enter Vectors")
    for i in range(r):
        n=int(input("Enter number:"))
        v.append(n)

    print("Enter Matrix")
    for i in range(r):
        print("Enter Elements of Rows: ",i+1)
        M.append([])
        for j in range(c):
            n=int(input("Enter Number: "))
            M[i].append(n)

    print("\nResult of Vector-Matrix multiplication is",np.dot(v,M))
    
def matrixmult():
    M=[]
    N=[]
    r1 =int(input("Enter number of rows in matrix1:"))
    c1 =int(input("Enter number of columns in matrix1:"))
    print("Enter Matrix1")
    for i in range(r1):
        print("Enter Elements of Rows: ",i+1)
        M.append([])
        for j in range(c1):
            n=int(input("Enter Number: "))
            M[i].append(n)

    r2 =int(input("Enter number of rows in matrix2:"))
    c2 =int(input("Enter number of columns in matrix2:"))
    print("Enter Matrix2")
    for i in range(r2):
        print("Enter Elements of Rows: ",i+1)
        N.append([])
        for j in range(c2):
            n=int(input("Enter Number: "))
            N[i].append(n)

    if(c1 == r2):
        Mult=np.dot(M,N)

    print("\nResult of Matrix multiplication is")
    for i in Mult:
        print(i)

while True:
    print("Select Operations")
    print("1. Vector-Matrix Multiplication")
    print("2. Matrix Multiplication")
    print("3. Exit")
    ch=int(input("Enter your choice: "))
    if ch==1:
        vecMatrixMult()
    elif ch==2:
        matrixmult()
    else:
        break


PRACTICAL NO---6

AIM:
Write a program to enter a matrix and check if it is invertible. If the inverse exists, find the inverse
CODE:
import numpy as np

def printMatrix(A):
    print("\nMatrix")
    for i in range(len(A)):
        print(A[i])     
c=int(input("Enter the Number of rows and cols of Square Matrix: "))
r=c
M=[]
for i in range(r):
    print("Enter Elements of Rows: ",i)
    M.append([])
    for j in range(c):
        n=int(input("Enter Number: "))
        M[i].append(n)
printMatrix(M)

a=np.linalg.det(M)
print("Determinant of matrix M is",a)
if a<=0:
    Minv = np.linalg.inv(M)
    print("The Inverse of matrix m is\n",Minv)
else:
    print("Matrix is not invertible")


PRACTICAL NO---7

AIM:
Write a program to convert a matrix into its row echelon form.
CODE:
def row_echelon(m):
    if not m: return
    lead= 0
    rowCount = len(m)
    colCount =len(m[0])
    for r in range(rowCount):
        if lead>= colCount:
            return
        i = r
        while m[i][lead] == 0:
            i+=1
            if i == rowCount:
                i = r
                lead +=1
                if colCount == lead:
                    return
        m[i],m[r] = m[r],m[i]
        lv = m[r][lead]
        m[r] = [mrx/float(lv) for mrx in m[r]]
        for i in range(rowCount):
            if i != r:
                lv=m[i][lead]
                m[i] = [iv - lv*rv for rv,iv in zip(m[r],m[i])]
        lead+=1
        
print("Enter dimensions of matrix: ")
r=int(input("Enter the no of rows: "))
c=int(input("Enter the no of cols: "))
mtr=[]
for i in range (r):
      mtr.append([])
      print("Enter elements of rows ",i)
      for j in range(c):
            n=float(input("Enter element: "))
            mtr[i].append(n)
print("Enter the  matrix: ")
for row in mtr:
      print(' '.join(("{0:.2f}".format(x) for x in row)))
row_echelon(mtr)
print("Row Echelon for matrix: ")
for row in mtr:
       print(' '.join(("{0:.2f}".format(x) for x in row)))


PRACTICAL NO---8

AIM:
Write a program to do the Following: 
a. Find the GCD. 
b. Find Prime Factor of a number.
CODE:
from math import *
#8a
def gcd(a,b):
    if  a==0:
        return b
    return gcd(b%a,a)
#8b
pf=[]
n=int(input("Enter number:"))
x=n
while n%2==0:
    pf.append(2)
    n=n/2
i=3
while i<=sqrt(n):
    while n%1==0:
        pf.append(i)
        n=n/i
    i=i+2
if n>2:
    pf.append(n)
print("prime factor of",x,"are",pf)
pf1=set(pf)
nf=1
for f in pf1:
    cnt=0
    for f1 in pf:
        if f==f1:
            cnt+=1
    nf*=cnt+1
print("No of factors of",x,"=",nf)
print("No of positive integral solutions=",nf/2)
print(gcd(200,633))
