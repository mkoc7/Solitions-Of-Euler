# 3 ve 5'in Katları Problemi (Project Euler Problem 1)

## Türkçe Açıklama

Bu içerik, Project Euler'in ilk problemi olan "3 ve 5'in Katları" problemini açıklamaktadır. Problem şöyle özetlenebilir:

10'dan küçük olan doğal sayılar arasında 3 veya 5'in katı olanları listelediğimizde (3, 5, 6 ve 9), bu sayıların toplamının 23 olduğunu görürüz.

Problem, bir algoritma geliştirerek belirli bir sayının altındaki 3 veya 5'in katı olan tüm sayıların toplamını bulmayı amaçlar. Çözüm süreci:

1. İlk olarak 10'dan küçük tüm sayıları listeleriz (1-9)
2. Bu sayılar arasından 3 veya 5'in katı olanları seçeriz (3, 5, 6, 9)
3. Bu sayıların toplamını buluruz (3+5+6+9=23)

## English Explanation

This content explains the first problem from Project Euler, known as "Multiples of 3 and 5." The problem can be summarized as follows:

If we list all natural numbers below 10 that are multiples of 3 or 5 (which are 3, 5, 6, and 9), we find that their sum is 23.

The problem aims to develop an algorithm to find the sum of all multiples of 3 or 5 below a given number. The solution process:

1. First, we list all numbers below 10 (1-9)
2. We select the numbers that are multiples of 3 or 5 (3, 5, 6, 9)
3. We find the sum of these numbers (3+5+6+9=23)

## Görsel Diyagram

```
     ┌─────────────────────────┐
     │  10'dan Küçük Sayılar   │
     └─────────────────────────┘
            │
            ▼
    ┌───────────────────┐
    │ 1  2  3  4  5  6  │
    │ 7  8  9           │
    └───────────────────┘
            │
            ▼
┌───────────────────────────────┐
│      3 veya 5'in Katları      │
└───────────────────────────────┘
            │
            ▼
    ┌───────────────────┐
    │   3  5  6  9      │
    └───────────────────┘
            │
            ▼
    ┌───────────────────┐
    │   Toplam = 23     │
    └───────────────────┘
```

## Tablo Gösterimi

| Sayı | 3'ün Katı mı? | 5'in Katı mı? | Dahil mi? | Açıklama |
|------|---------------|---------------|-----------|----------|
| 1    | ❌            | ❌            | ❌        | Ne 3'e ne de 5'e bölünmüyor |
| 2    | ❌            | ❌            | ❌        | Ne 3'e ne de 5'e bölünmüyor |
| 3    | ✅            | ❌            | ✅        | 3'ün katı (3×1) |
| 4    | ❌            | ❌            | ❌        | Ne 3'e ne de 5'e bölünmüyor |
| 5    | ❌            | ✅            | ✅        | 5'in katı (5×1) |
| 6    | ✅            | ❌            | ✅        | 3'ün katı (3×2) |
| 7    | ❌            | ❌            | ❌        | Ne 3'e ne de 5'e bölünmüyor |
| 8    | ❌            | ❌            | ❌        | Ne 3'e ne de 5'e bölünmüyor |
| 9    | ✅            | ❌            | ✅        | 3'ün katı (3×3) |

## JavaScript Kod Örneği

```javascript
// Bu fonksiyon, belirli bir üst sınıra kadar 3 veya 5'in katı olan sayıları bulur
function ucBesinKatlariToplami(ustSinir) {
    let toplam = 0;  // Toplamı tutacak değişken
    let katlarListesi = [];  // 3 veya 5'in katlarını saklayacak dizi
    
    // 1'den üst sınıra kadar tüm sayıları kontrol et (üst sınır dahil değil)
    for (let sayi = 1; sayi < ustSinir; sayi++) {
        // Eğer sayı 3'ün VEYA 5'in katıysa (% işareti modülo/kalan operatörüdür)
        if (sayi % 3 === 0 || sayi % 5 === 0) {
            katlarListesi.push(sayi);  // Diziye ekle
            toplam += sayi;  // Toplama ekle
        }
    }
    
    // Hem katları hem de toplamı içeren bir nesne döndür
    return { 
        katlar: katlarListesi, 
        toplam: toplam 
    };
}

// 10'dan küçük sayıları kontrol edelim
const sonuc = ucBesinKatlariToplami(10);

// Sonuçları yazdıralım
console.log("3 veya 5'in katı olan 10'dan küçük sayılar:", sonuc.katlar);
console.log("Bu sayıların toplamı:", sonuc.toplam);
```

## Kod Çıktısı

```
3 veya 5'in katı olan 10'dan küçük sayılar: [3, 5, 6, 9]
Bu sayıların toplamı: 23
```
