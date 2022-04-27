use quanlysinhvien;
-- 1 Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
 select * from subject where subject.credit  = all(select max(subject.Credit) from subject);
 
 -- 2 Hiển thị các thông tin môn học có điểm thi lớn nhất
 select * from subject as s join mark as m on s.SubId=m.SubId where m.Mark = all(select max(m.Mark) from mark as m) ;
-- 3 Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
select * ,avg(m.mark) from student as s join mark as m on s.StudentID=m.StudentID group by s.StudentID order by m.Mark desc;