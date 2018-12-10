--2- a- 

select Id from [Card] with(nolock) where Id not IN(
select CardId from CardHistory with(nolock) 
where [Date] < '2018-12-10 02:21:11.423'
and [Date] > '2018-12-10 00:21:11.423'
group by CardId -- tarih aralýðýnda iþlem yapmýþ olan kartlar
)-- bu zaman aralýðýnda iþlem yapmýþ kartlarýn dýþýndaki tüm kartlar.


--2 --b 
select top 1 CardId,CurrentBalance 
from CardHistory with(nolock) 
where [Date] < DATEADD(ms, -10,DATEADD(d, 1, DATEDIFF(d, 0, GETDATE())))
and CardId ='86758766-0003-4B16-A5E3-9FB459436DCA'
order by [Date] desc

--tek kartý sormak için card ID yazýlýr 

select
CardId,CurrentBalance,Date from CardHistory ch1 with(nolock) 
where
 ch1.Id =
(select top 1 Id
from CardHistory ch2 with(nolock) 
where [Date] < DATEADD(ms, -10,DATEADD(d, 1, DATEDIFF(d, 0, GETDATE())))
and ch1.CardId = ch2.CardId
order by [Date] desc)

--databasedeki her kartýn günlük son bakiyesini sorgulamak için kullanýlýr.


--2 --c

select cardId,lineInfo
from(
select CardId,
COUNT(*) total,v.LineInfo
from VehiclePosHistory vph with(nolock)
left join VehiclePos vp with(nolock) on vp.Id = vph.VehiclePosId
left join CardHistory ch with(nolock) on ch.Id = vph.CardHistoryId
left join Vehicle v with(nolock) on v.Id = vp.VehicleId
where ch.Date > dateadd(d, 0, DATEDIFF(d, 0, GETDATE()))
-- seçilen günün baþlangýcýndan büyük
and ch.Date < DATEADD(ms, -10,DATEADD(d, 1, DATEDIFF(d, 0, GETDATE())))
-- seçilen günün sonundan küçük
group by CardId,VehiclePosId,v.LineInfo) selected
where selected.total>=3
