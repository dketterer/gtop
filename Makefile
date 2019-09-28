all:
	g++ -std=c++14 gtop.cc utils.cc display.cc -o gtop -pedantic -Wall -Wextra -lncurses -lpthread

install:
	cp tegrastats_fake /usr/local/bin
	cp gtop /usr/local/bin
	~/.bashrc >> alias gtop='sudo gtop --tx2'
	~/.zshrc >> alias gtop='sudo gtop --tx2'

clean:
	rm gtop

fake:
	g++ -std=c++14 gtop.cc utils.cc display.cc -o gtop -pedantic -Wall -Wextra -lncurses -lpthread -DTEGRASTATS_FAKE

travis:
	$(CXX) -std=c++14 gtop.cc utils.cc display.cc -o gtop -pedantic -Wall -Wextra -lncurses -lpthread
