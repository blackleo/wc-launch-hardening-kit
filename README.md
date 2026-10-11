# WooCommerce Launch Hardening Kit

A "lock the doors first" starter for a new WordPress + WooCommerce store, plus a
bulk-import template. Everything is plain text so the client can read every line.

```
scripts/harden.sh                    WP-CLI pass: updates, remove defaults, HTTPS, options, checksum verify
templates/wp-config-hardening.php    Constants to add to wp-config.php
templates/htaccess-hardening.txt     HTTPS, HSTS, headers, block xmlrpc, no PHP in uploads
templates/SECURITY-REPORT.md         The "short written list of everything you set" (client deliverable)
templates/woocommerce-import-template.csv   Native WooCommerce CSV: 3 levels + a "set of 3" grouped product
```

## Order of work
1. Create staging; run `scripts/harden.sh` (read it first).
2. Merge `wp-config-hardening.php` and `htaccess-hardening.txt`.
3. Install 2FA, firewall/malware scanner and backups under the **client's** accounts.
4. Install the sibling repos: `wc-secure-downloads` and `wc-child-safe-no-third-party`.
5. Fill in `SECURITY-REPORT.md` as you go and hand it over.
6. Only on launch day: Settings → Reading → allow search engines.

## CSV import tips
- Import a 5-row sample first, check, then run the 500.
- WooCommerce: Products → Import. Re-use the same template for the weekly 5 new products.
- "Buy one level or the set of three": grouped product (as in sample) or a variable product with a "Set" variation; choose per the mockup.
- Put the PDFs in `uploads/woocommerce_uploads/` (protected), never in the public media library.

## License
MIT
