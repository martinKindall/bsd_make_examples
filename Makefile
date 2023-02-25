FILES != ls *.c

print: $(FILES)
        ls -la $?

exper:
        @echo "hi there this is $(.newline)\
                a multiline\
                text executing rule $@"

compile: compile.c
        cc $? -o $@

compile.c:
        @echo "#include <stdio.h> $(.newline) \
                int main(void) { \
                        printf(\"Hello world from Makefile! Rule $@\n\"); \
                        return 0; \
                }" > $@

clean:
        rm compile.c compile