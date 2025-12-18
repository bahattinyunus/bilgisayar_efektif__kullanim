# 📡 Advanced Network Stack: Ağların Efendisi

Uzak sistemlere bağlanırken fiziksel mesafenin yarattığı gecikmeyi (ping) minimize edin.

## 🛠️ TCP/IP Tuning
İşletim sisteminin ağ paketlerini işleme hızını artırın.
- **TCP Fast Open**: Bağlantı kurma süresini düşürün.
- **Congestion Control (BBR)**: Google tarafından geliştirilen BBR algoritması ile yoğun ağlarda bile maksimum hıza ulaşın.

## 🔑 Wireguard Mastery
Geleneksel VPN'lerin aksine, `Wireguard` kernel seviyesinde çalışır ve neredeyse sıfır paket kaybı/gecikme ile çalışır. Kendi özel tünelinizi Wireguard ile kurun.

## 🚀 Quality of Service (QoS)
Ağındaki trafiği önceliklendir. Terminal (SSH) ve oyun trafiğine `High Priority` vererek, arka plandaki indirmelerin senin "uzvunu" yavaşlatmasını engelle.

---
> 🌍 **Vizyon:** Uzaktaki bir sunucuya bağlandığında, o sunucunun 1000km ötede olduğunu hissetmeyecek kadar akıcı bir deneyim.
