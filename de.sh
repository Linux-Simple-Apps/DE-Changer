#!/bin/bash

echo "De-Changer başlıyor."
echo -e  "\033[31mUYARI! Bu işlem Geri Alınamaz!\033[0m"

# Kullanıcı onayı istenilmektedir.
confirm() {
    while true; do
        read -p "Devam Etmek İstiyor musunuz? (Evet/Hayır/Çıkış) " yn
        case $yn in
            [Ee]* ) return 0;;
            [Hh]* ) return 1;;
            [Çç]* ) exit;;
            * ) echo "Sizi anlayamadım. Lütfen tekrar dener misiniz? Evet[Ee]/Hayır[Hh]/Çıkış[Çç].";;
        esac
    done
}

# Verilen girdiye göre işlemin devamı veya iptali
if confirm; then
    echo "İşleme devam ediliyor. Lütfen root yetkisi için şifrenizi girebilir misiniz?"
else
    echo "İşlem iptal edildi. Çıkış yapılıyor. Tekrar görüşmek üzere..."
    exit
fi
