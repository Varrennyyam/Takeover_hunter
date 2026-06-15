
# 🎯 Takeover_Hunter

A fast and automated **Subdomain Takeover Scanner** designed for Bug Bounty hunters and Penetration Testers. It analyzes CNAME records from a list of subdomains and checks for vulnerable pointing signatures (GitHub, AWS S3, Cloudfront, Shopify, etc.).

## 🚀 Features
- **Fast Scanning:** Loops through subdomains efficiently using native `dig`.
- **Targeted Signatures:** Checks for major cloud services prone to takeover.
- **Clean Output:** Color-coded terminal interface for easy vulnerability identification.
- **Auto-Logging:** Saves vulnerable targets directly to `vulnerable_takeovers.txt`.

## 🛠️ How to Use

```bash
# Clone the repository
git clone [https://github.com/Varrennyyam/Takeover_hunter.git](https://github.com/Varrennyyam/Takeover_hunter.git)

# Move into the directory
cd Takeover_hunter

# Give execution permission
chmod +x takeover_hunter.sh

# Run the scanner against your subdomains list
./takeover_hunter.sh subdomains.txt
