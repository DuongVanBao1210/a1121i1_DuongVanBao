use QuanLyBanHang;
insert into customer(customername,customerage) values ('Minh Quan',10),('Ngoc Oanh',20),('Hong Ha',50);
insert into orderofcustomer(customerid,orderdate,totalprice) values(1,'2006-3-21',null), (2,'2006-3-23',null),(1,'2006-3-16',null);
insert into product(productname,productprice) values ('may giat',3),('tu lanh',5),('dieu hoa',7),('quat',1),('bep dien',2);
insert into orderdetail values(1,1,3),(1,3,7),(1,4,2),(2,1,1),(3,1,8),(2,5,4),(2,3,3);
-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select orderid,orderdate,totalprice from orderofcustomer;
-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách --
select c.customername,p.productname from customer as c join orderofcustomer as o on c.customerid=o.customerid join orderdetail as od on o.orderid=od.orderid join product as p on od.productid=p.productid ; 
-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào--
select c.customername from customer as c where c.customerid not in (select o.customerid from orderofcustomer as o);
-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)--
select o.orderid, o.orderdate, sum(orderqty*productprice) as tong_tien from orderofcustomer as o join orderdetail as od_dt on o.orderid=od_dt.orderid join product as p on p.productid=od_dt.productid group by orderid;