
# 🎯 Takeover_Hunter

A fast and automated **Subdomain Takeover Scanner** designed for Bug Bounty hunters and Penetration Testers. It analyzes CNAME records from a list of subdomains and checks for vulnerable pointing signatures (GitHub, AWS S3, Cloudfront, Shopify, etc.).

## 🚀 Features
- **Fast Scanning:** Loops through subdomains efficiently using native `dig`.
- **Targeted Signatures:** Checks for major cloud services prone to takeover.
- **Clean Output:** Color-coded terminal interface for easy vulnerability identification.
- **Auto-Logging:** Saves vulnerable targets directly to `vulnerable_takeovers.txt`.

## 🛠️ How to Use
......….......................


```bash
# Clone the repository
git clone [https://github.com/Varrennyyam/Takeover_hunter.git](https://github.com/Varrennyyam/Takeover_hunter.git)

# Move into the directory
cd Takeover_hunter

# Give execution permission
chmod +x takeover_hunter.sh

# Run the scanner against your subdomains list
./takeover_hunter.sh subdomains.txt

<img width="1080" height="2400" alt="Screenshot_2026-06-16-01-16-04-189_com termux" src="https://github.com/user-attachments/assets/a7b4d15d-3fbd-41b8-bafe-6b1e484345e9" />
<img width="1080" height="2400" alt="Screenshot_2026-06-16-01-16-10-415_com termux" src="https://github.com/user-attachments/assets/f4431bda-547e-4261-9f43-9635b002dc24" />
<img width="1080" height="2400" alt="Screenshot_2026-06-16-01-16-18-389_com termux" src="https://github.com/user-attachments/assets/d5a1495c-74e7-45b9-b11c-7173927b50c1" />
<img width="1080" height="2400" alt="Screenshot_2026-06-16-01-16-26-750_com termux" src="https://github.com/user-attachments/assets/4f109494-8aa7-4701-97b3-4309c4e82151" />
<img width="1080" height="2400" alt="Screenshot_2026-06-16-00-18-15-963_com termux" src="https://github.com/user-attachments/assets/4d60b196-fa8f-4650-b300-d178c570d140" />
<img width="1080" height="2400" alt="Screenshot_2026-06-16-01-13-31-034_com termux" src="https://github.com/user-attachments/assets/ef7c7f04-747b-485c-a411-8aad660b23e3" />
