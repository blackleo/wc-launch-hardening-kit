# Security Report — [SITE NAME]
Prepared by: [DEVELOPER] · Date: [DATE] · Owner of all accounts: [CLIENT LLC]

| # | Control | Setting / tool | Where to change it | Verified (date / how) |
|---|---|---|---|---|
| 1 | HTTPS everywhere | TLS cert [issuer], auto-renew, 301 http→https, HSTS 1 yr | Host panel / .htaccess | |
| 2 | Mixed content | http→https replaced; browser console clean | WP-CLI | |
| 3 | Admin 2FA | [plugin] required for Administrator + Shop Manager | Users → Profile | |
| 4 | Login protection | attempt limits, no `admin` user, strong passwords | [plugin] | |
| 5 | Daily backups | [tool], time [00:00 ET], retention [14 d], off-site storage in the **client's** account, last restore test [date] | | |
| 6 | Firewall | [Wordfence / host WAF], mode [learning → enabled] | | |
| 7 | Malware scan | daily scheduled, alerts to [client e-mail] | | |
| 8 | File editing off | DISALLOW_FILE_EDIT | wp-config.php | |
| 9 | Protected downloads | woocommerce_uploads blocked at server; order-bound links; limit [n]; expiry [n] days; rate limit | server + WC settings | guess-test output attached |
| 10 | Third-party scripts | none on child pages; CSP enforced | mu-plugin | scan_external output attached |
| 11 | Updates | core minor auto; plugins reviewed weekly | | |
| 12 | XML-RPC / user enumeration | disabled | .htaccess / plugin | |
| 13 | Credentials | all logins held by client; password manager; no shared accounts | | |
| 14 | Cookies | functional only (cart, session, login) | | |

## Known gaps / not done
-

## Hand-off list (what is left when the hours run out)
-
