# oci-boot-script
## 요구사항
- E2 Micro 인스턴스 (항상 무료)
- Ubuntu 20.04 LTS

## 빠른 시작
- 인스턴스 생성 후, 터미널에 다음을 입력하세요.
```sh
curl -fsSL https://raw.githubusercontent.com/ablokr/oci-boot-script/main/oci-boot-script.sh -o oci-boot-script.sh
sudo sh oci-boot-script.sh
```

## 자동화 항목
- apt update / upgrade
- Timezone: Asia/Seoul
- Virtual Memory: 4GB
- Port Open: 21, 22, 80, 81, 443, 8000, 9443
