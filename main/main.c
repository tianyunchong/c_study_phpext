#include <stdio.h>
#include "Zend/zend_API.h"
int main() {
	ZEND_BEGIN_ARG_INFO_EX(arginfo_client___construct, 0, 0, 5)
		ZEND_ARG_INFO(0, url)
		ZEND_ARG_INFO(0, async)
	ZEND_END_ARG_INFO()
	printf("%d\n", arginfo_client___construct[0].class_name_len);
	printf("%s\n", arginfo_client___construct[1].name);
	printf("%s\n", arginfo_client___construct[2].name);
	return 1;
}