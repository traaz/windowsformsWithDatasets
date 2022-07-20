USE [KitapDB]
GO
/****** Object:  Trigger [dbo].[Yedek]    Script Date: 20.07.2022 14:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER trigger [dbo].[Yedek]
on [dbo].[Kitaplar]
after delete
as
declare @kitapad varchar(50)

declare @yazar varchar(50)

declare @sayfa int

declare @yayınevı varchar(20)

declare @tur varchar(20)



select @kitapad=AD,@yazar=YAZAR,@sayfa=SAYFA,@yayınevı=YAYINEVI,@tur=TUR from deleted

insert into KitapYedek(AD,YAZAR,SAYFA,YAYINEVI,TUR) values (@kitapad,@yazar,@sayfa,@yayınevı,@tur)
