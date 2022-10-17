#!/bin/bash
testname=$(<testname.txt)
rm test-filled.ldif
../../slapd-cli cli_conf_file $(pwd)/slapd-cli.conf dryrun generate_data_admin_template >myout.txt
echo -n "test $testname " <&2
if diff expected.out myout.txt && diff test-filled.ldif test-filled.ldif.expected
then
    echo '[PASSED]' >&2
else
    echo '[FAILED]' >&2
fi
