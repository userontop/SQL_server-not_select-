SELECT Macb, SbDi, SbDen, GioDi, GioDen

FROM CHBAY

where Macb = 'ND1000';

select Makh, Macb, NgayDi, SttGhe, LoaiVe, TienVe
from DATCHO
where month(NgayDi) = 12 and SttGhe > 1;


select d.Macb, d.Makh, d.TienVe, c.GioDen, c.GioDi
from CHBAY c, DATCHO d 
where d.Macb = c.Macb;

select d.Macb, d.Makh, d.TienVe, c.GioDen, c.GioDi
from CHBAY c join DATCHO d on c.Macb = d.Macb;


select *
from KHHANG

select distinct Phai
from KHHANG;

select d.Macb, d.Makh, d.TienVe, c.GioDen, c.GioDi
from CHBAY c, DATCHO d 
where d.Macb = c.Macb
order by  d.TienVe  desc, d.Macb asc;

select d.Macb +'-'+ d.Makh as Ma, d.TienVe, d.TienVe*0.1 as Thue ,c.GioDen, c.GioDi, (d.TienVe + d.TienVe*0.1) as tong
from CHBAY c, DATCHO d 
where d.Macb = c.Macb;


select d.Macb, d.Makh, d.TienVe, c.GioDen, c.GioDi
from CHBAY c, DATCHO d 
where d.Macb = c.Macb and d.Macb <> 'ND1200';


select d.Macb +'-'+ d.Makh as Ma, d.TienVe, d.TienVe*0.1 as Thue ,c.GioDen, c.GioDi, (d.TienVe + d.TienVe*0.1) as tong
from CHBAY c, DATCHO d 
where d.Macb = c.Macb and d.Macb <> 'ND1200' and ((d.TienVe + d.TienVe*0.1) - d.TienVe)  between 150000 and 360000;

select d.Macb +'-'+ d.Makh as Ma, d.TienVe, d.TienVe*0.1 as Thue ,c.GioDen, c.GioDi, (d.TienVe + d.TienVe*0.1) as tong
from CHBAY c, DATCHO d 
where d.Macb = c.Macb and (d.Macb like '%2%' or d.Macb like '_N%');

select d.Macb +'-'+ d.Makh as Ma, d.TienVe, d.TienVe*0.1 as Thue ,c.GioDen, c.GioDi, (d.TienVe + d.TienVe*0.1) as tong
from CHBAY c, DATCHO d 
where d.Macb = c.Macb;

select count(d.Makh) as 'so kh', sum(d.TienVe) as 'tong tien ve', max(d.TienVe) as 'max tien ve chuyen bay', min(d.TienVe) as 'min tien ve chuyen bay', avg(d.TienVe) as 'tien TB' 
from CHBAY c, DATCHO d 
where d.Macb = c.Macb and d.Macb <> 'ND1200';

select count(*)
from CHBAY c, DATCHO d 
where d.Macb = c.Macb;


select Macb, sum(TienVe) as 'tong tien ve'
from DATCHO
where TienVe < 6000000
group by Macb
having sum(TienVe) > 1700000

select avg(Luong), Gioitinh
from NHANVIEN
group by Gioitinh
order by Gioitinh desc

select avg(Luong), Gioitinh, LoaiNV
from NHANVIEN
group by Gioitinh, LoaiNV
having Gioitinh = 'F' and LoaiNV = 0


select *
from KHHANG

select * 
from DATCHO

select *
from CHBAY


select e.Macb, COUNT(e.Makh)
from KHHANG k join ( select c.Macb, d.Makh
					 from DATCHO d join CHBAY c on c.Macb = d.Macb) e on e.Makh = k.Makh
group by e.Makh, Macb




select Makh, Sdt, ( select count(Makh)
				from DATCHO
				group by Makh
				having count(Makh) > 1) as 'so lam dat'

from KHHANG
where  Makh in ( select Makh
				from DATCHO
				group by Makh
				having count(Makh) > 1)
		


select d.Makh, k.Sdt, ( select count(Makh)
				from DATCHO
				group by Makh
				having count(Makh) > 1) as 'so lam dat'

from KHHANG k, DATCHO d
where d.Makh = k.Makh and k.Makh in ( select Makh
				from DATCHO
				group by Makh
				having count(Makh) > 1)
