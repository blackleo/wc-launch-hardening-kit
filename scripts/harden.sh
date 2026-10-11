#!/usr/bin/env bash
# WP-CLI hardening pass. Read it, then run from the WordPress root on a STAGING copy first.
# Output is a log you can paste into SECURITY-REPORT.md.
set -euo pipefail
WP="wp"

echo "== Core/plugin/theme updates =="
$WP core update || true
$WP plugin update --all || true
$WP theme update --all || true

echo "== Remove unused defaults =="
$WP plugin delete hello akismet 2>/dev/null || true
$WP post delete 1 2 --force 2>/dev/null || true   # sample post/page (IDs may differ)

echo "== Options =="
$WP option update blog_public 0                    # hidden from search until launch day
$WP option update default_ping_status closed
$WP option update default_comment_status closed
$WP option update users_can_register 0
$WP option update show_avatars 0
$WP rewrite structure '/%postname%/' --hard

echo "== HTTPS everywhere (dry run of search-replace; remove --dry-run to apply) =="
$WP option update home    "$($WP option get home    | sed 's#^http:#https:#')"
$WP option update siteurl "$($WP option get siteurl | sed 's#^http:#https:#')"
$WP search-replace 'http://' 'https://' --skip-columns=guid --dry-run

echo "== Administrator accounts (none should be named 'admin') =="
$WP user list --role=administrator --fields=ID,user_login,user_email

echo "== Integrity checks =="
$WP core verify-checksums
$WP plugin verify-checksums --all || true

echo "== Done. Set blog_public to 1 only on launch day. =="
