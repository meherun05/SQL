go
create procedure Meherun_GPA
AS
declare @bangla int =33
declare @english int=90
declare @math int=44
declare @religion int=95
declare @physics int=70
declare @chemistry int =99
declare @ICT int =55
declare @sum int 
declare @gpa DECIMAL(10,1)

set @sum=(@bangla + @english + @math +@religion + @physics + @chemistry + @ICT)
set @gpa=@sum/7

if @gpa>=80 and @gpa<=100
    print('Your Grade is A+  '+char(13)+'GPA is 5') 

else if @gpa>=71 and @gpa<=80
    print('Your Grade is A '+char(13)+' GPA is 4.0') 

else if @gpa>=61 and @gpa<=70
    print('Your Grade is A-  '+char(13)+'GPA is 3.5')

else if @gpa>=51 and @gpa<=60
    print 'Your Grade is B  ' +char(13)+'GPA is 3'

else if @gpa>=41 and @gpa<=50
    print('Your Grade is C '+char(13)+'GPA is 2') 

else if @gpa>=33 and @gpa<=40
    print('Your Grade is D '+char(13)+'GPA is 1')

else if @gpa < 33
    print('Your Grade is F ') 

else
    print('Invalid Input!')

go
exec Meherun_GPA;
