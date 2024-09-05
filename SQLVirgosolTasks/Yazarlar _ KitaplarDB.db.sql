-- 1-Yazarlar tablosuna aşağıdaki verileri ekleyin:
-- Ad: ahmet
-- Soyad: sever
-- Yaş: 22

INSERT INTO yazarlar (id, yazar_isim, soyisim, yas) VALUES (6, 'ahmet', 'sever', 22);

-- 2-Yazarlar tablosunda, ad sütunu 'orhan' olan tüm kayıtların yas değerini 23 olarak güncelleyin.

UDPATE yazarlar SET yas= 23 WHERE yazar_isim= 'orhan';

-- 3-Yazarlar tablosunda, yas değeri 40'dan büyük olan tüm kayıtları silin.

DELETE FROM yazarlar WHERE yas > 40;

-- 4-Yazarlar tablosunda bulunan tüm farklı soyad değerlerini seçin. Tekrarlananlar olmasın.

SELECT DISTINCT soyisim FROM yazarlar;

-- 5-Kitaplar tablosundaki tüm verileri sayfa sayısı sütununa göre artan sırada sıralayın.

SELECT * FROM kitaplar ORDER BY sayfa ASC;

-- 6-Kitaplar tablosundaki tüm verileri ad sütununa göre azalan sırada sıralayın.

SELECT * FROM kitaplar ORDER BY kitap_isim DESC;

-- 7-Kitaplar tablosunda sayfa sayısı değeri 250 ile 500 arasında olan kayıtları seçin.

SELECT * FROM kitaplar WHERE sayfa BETWEEN 250 AND 500;

-- 8-Yazarlar tablosunda yas değeri 20'den büyük olan ve soyad değeri 's' ile başlayan kayıtları seçin.

SELECT * FROM yazarlar WHERE soyisim LIKE 's%' AND yas > 20;

-- 9-Yazarlar tablosunda soyad değeri 'erdem' veya 'karasu' olan kayıtları seçin.

SELECT * FROM yazarlar WHERE soyisim='erdem' OR soyisim='karasu';
SELECT * FROM yazarlar WHERE soyisim IN ('erdem','karasu');

-- 10-Yazarlar tablosundaki verileri yas değerine göre artan sırada sıralayarak ilk 3 kaydı seçin.

SELECT * FROM yazarlar ORDER BY yas ASC LIMIT 3;

-- 11-Kitaplar tablosunda kitap adı değeri 's' ile başlamayan kayıtları seçin.

SELECT * FROM kitaplar WHERE kitap_isim NOT LIKE 's%';

-- 12-Kitaplar tablosundaki sayfa sayısı sütununda bulunan en yüksek değeri seçin.

SELECT sayfa FROM kitaplar ORDER BY sayfa DESC LIMIT 1;
SELECT MAX(sayfa) FROM kitaplar;




